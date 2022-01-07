
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char*) ;

char *
unbracket(char *cp)
{
 char *ep;

 if (*cp == '[') {
  ep = cp + (strlen(cp) - 1);
  if (*ep == ']') {
   *ep = '\0';
   ++cp;
  }
 }
 return (cp);
}
