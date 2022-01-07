
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uch ;


 int assert (int ) ;
 int isalpha (int) ;
 scalar_t__ islower (int) ;
 scalar_t__ isupper (int) ;
 scalar_t__ tolower (int) ;
 scalar_t__ toupper (int) ;

__attribute__((used)) static char
othercase(int ch)
{
 ch = (uch)ch;
 assert(isalpha(ch));
 if (isupper(ch))
  return ((uch)tolower(ch));
 else if (islower(ch))
  return ((uch)toupper(ch));
 else
  return(ch);
}
