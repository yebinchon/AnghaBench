
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
__findenv(const char *name, int len, int *offset)
{
 extern char **environ;
 int i;
 const char *np;
 char **p, *cp;

 if (name == ((void*)0) || environ == ((void*)0))
  return (((void*)0));
 for (p = environ + *offset; (cp = *p) != ((void*)0); ++p) {
  for (np = name, i = len; i && *cp; i--)
   if (*cp++ != *np++)
    break;
  if (i == 0 && *cp++ == '=') {
   *offset = p - environ;
   return (cp);
  }
 }
 return (((void*)0));
}
