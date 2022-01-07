
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
__strchrnul(const char *p, int ch)
{
 char c;

 c = ch;
 for (;; ++p) {
  if (*p == c || *p == '\0')
   return ((char *)p);
 }

}
