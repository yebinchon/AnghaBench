
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char * os_strrchr(const char *s, int c)
{
 const char *p = s;
 while (*p)
  p++;
 p--;
 while (p >= s) {
  if (*p == c)
   return (char *) p;
  p--;
 }
 return ((void*)0);
}
