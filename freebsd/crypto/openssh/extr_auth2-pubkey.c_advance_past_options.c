
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
advance_past_options(char **cpp)
{
 char *cp = *cpp;
 int quoted = 0;

 for (; *cp && (quoted || (*cp != ' ' && *cp != '\t')); cp++) {
  if (*cp == '\\' && cp[1] == '"')
   cp++;
  else if (*cp == '"')
   quoted = !quoted;
 }
 *cpp = cp;

 return (*cp == '\0' && quoted) ? -1 : 0;
}
