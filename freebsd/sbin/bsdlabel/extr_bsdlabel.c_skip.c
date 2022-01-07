
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char) ;

__attribute__((used)) static char *
skip(char *cp)
{

 while (*cp != '\0' && isspace(*cp))
  cp++;
 if (*cp == '\0' || *cp == '#')
  return (((void*)0));
 return (cp);
}
