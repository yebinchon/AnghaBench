
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isspace (char) ;
 char* skip (char*) ;

__attribute__((used)) static char *
word(char *cp)
{
 char c;

 while (*cp != '\0' && !isspace(*cp) && *cp != '#')
  cp++;
 if ((c = *cp) != '\0') {
  *cp++ = '\0';
  if (c != '#')
   return (skip(cp));
 }
 return (((void*)0));
}
