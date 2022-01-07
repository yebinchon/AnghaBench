
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
colon(char *cp)
{
 int flag = 0;

 if (*cp == ':')
  return ((void*)0);
 if (*cp == '[')
  flag = 1;

 for (; *cp; ++cp) {
  if (*cp == '@' && *(cp+1) == '[')
   flag = 1;
  if (*cp == ']' && *(cp+1) == ':' && flag)
   return (cp+1);
  if (*cp == ':' && !flag)
   return (cp);
  if (*cp == '/')
   return ((void*)0);
 }
 return ((void*)0);
}
