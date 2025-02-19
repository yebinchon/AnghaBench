
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;

char *
ucl_strnstr (const char *s, const char *find, int len)
{
 char c, sc;
 int mlen;

 if ((c = *find++) != 0) {
  mlen = strlen (find);
  do {
   do {
    if ((sc = *s++) == 0 || len-- == 0)
     return (((void*)0));
   } while (sc != c);
  } while (strncmp (s, find, mlen) != 0);
  s--;
 }
 return ((char *)s);
}
