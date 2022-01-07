
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
nexttok(
 char **str
 )
{
 register char *cp;
 char *starttok;

 cp = *str;




 while (*cp == ' ' || *cp == '\t')
  cp++;




 starttok = cp;
 while (*cp != '\0' && *cp != '\n' && *cp != ' '
        && *cp != '\t' && *cp != '#')
  cp++;





 if (starttok == cp)
  return ((void*)0);

 if (*cp == ' ' || *cp == '\t')
  *cp++ = '\0';
 else
  *cp = '\0';

 *str = cp;
 return starttok;
}
