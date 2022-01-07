
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int regex_t ;


 int REG_EXTENDED ;
 scalar_t__ REG_NOMATCH ;
 int REG_NOSUB ;
 scalar_t__ regcomp (int *,char*,int) ;
 scalar_t__ regexec (int *,char*,int ,int *,int ) ;

int
main(void)
{
 regex_t re;

 if (regcomp(&re, "[[:<:]]word[[:>:]]", REG_EXTENDED | REG_NOSUB))
  return 1;
 if (regexec(&re, "the word is here", 0, ((void*)0), 0))
  return 2;
 if (regexec(&re, "same word", 0, ((void*)0), 0))
  return 3;
 if (regexec(&re, "word again", 0, ((void*)0), 0))
  return 4;
 if (regexec(&re, "word", 0, ((void*)0), 0))
  return 5;
 if (regexec(&re, "wordy", 0, ((void*)0), 0) != REG_NOMATCH)
  return 6;
 if (regexec(&re, "sword", 0, ((void*)0), 0) != REG_NOMATCH)
  return 7;
 if (regexec(&re, "reworded", 0, ((void*)0), 0) != REG_NOMATCH)
  return 8;
 return 0;
}
