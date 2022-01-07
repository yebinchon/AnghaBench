
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;

char *
strnstr(const char *s, const char *find, size_t slen)
{
 char c, sc;
 size_t len;

 if ((c = *find++) != '\0') {
  len = strlen(find);
  do {
   do {
    if (slen-- < 1 || (sc = *s++) == '\0')
     return (((void*)0));
   } while (sc != c);
   if (len > slen)
    return (((void*)0));
  } while (strncmp(s, find, len) != 0);
  s--;
 }
 return ((char *)s);
}
