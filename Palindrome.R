###############################
# Palindrom/permutation check #
###############################

library(stringr)

# Function
checkPalindrom <- function(word){
  splited_word <- unlist(str_split(word, pattern = ""))
  set = NULL
  for (char in splited_word){
    if (char %in% set) {
      set = set[set != char]
    } else {
      set <- c(set, char)
    }
  }
  
  return(length(set) <= 1)
}

# Check 1
checkPalindrome("arara")

# Check 2
checkPalindrome("aarra")

