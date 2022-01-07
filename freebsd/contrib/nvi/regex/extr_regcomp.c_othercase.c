
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 int isalpha (int) ;
 scalar_t__ islower (int) ;
 scalar_t__ isupper (int) ;
 char tolower (int) ;
 char toupper (int) ;

__attribute__((used)) static char
othercase(int ch)
{
 assert(isalpha(ch));
 if (isupper(ch))
  return(tolower(ch));
 else if (islower(ch))
  return(toupper(ch));
 else
  return(ch);
}
