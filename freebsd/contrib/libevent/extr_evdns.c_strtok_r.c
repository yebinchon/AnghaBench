
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strchr (char const*,char) ;

__attribute__((used)) static char *
strtok_r(char *s, const char *delim, char **state) {
 char *cp, *start;
 start = cp = s ? s : *state;
 if (!cp)
  return ((void*)0);
 while (*cp && !strchr(delim, *cp))
  ++cp;
 if (!*cp) {
  if (cp == start)
   return ((void*)0);
  *state = ((void*)0);
  return start;
 } else {
  *cp++ = '\0';
  *state = cp;
  return start;
 }
}
