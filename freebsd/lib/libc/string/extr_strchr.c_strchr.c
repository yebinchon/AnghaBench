
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
strchr(const char *p, int ch)
{
 char c;

 c = ch;
 for (;; ++p) {
  if (*p == c)
   return ((char *)p);
  if (*p == '\0')
   return (((void*)0));
 }

}
