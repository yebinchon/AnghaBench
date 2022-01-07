
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char * os_strchr(const char *s, int c)
{
 while (*s) {
  if (*s == c)
   return (char *) s;
  s++;
 }
 return ((void*)0);
}
