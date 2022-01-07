
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char const*) ;
 scalar_t__ strncasecmp (char const*,char const*,size_t) ;
 scalar_t__ tolower (unsigned char) ;

char *
strcasestr(const char *s, const char *find)
{
 char c, sc;
 size_t len;

 if ((c = *find++) != 0) {
  c = (char)tolower((unsigned char)c);
  len = strlen(find);
  do {
   do {
    if ((sc = *s++) == 0)
     return (((void*)0));
   } while ((char)tolower((unsigned char)sc) != c);
  } while (strncasecmp(s, find, len) != 0);
  s--;
 }
 return ((char *)s);
}
