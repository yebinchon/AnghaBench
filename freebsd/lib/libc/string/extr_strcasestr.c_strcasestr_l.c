
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int locale_t ;


 int FIX_LOCALE (int ) ;
 size_t strlen (char const*) ;
 scalar_t__ strncasecmp_l (char const*,char const*,size_t,int ) ;
 char tolower_l (unsigned char,int ) ;

char *
strcasestr_l(const char *s, const char *find, locale_t locale)
{
 char c, sc;
 size_t len;
 FIX_LOCALE(locale);

 if ((c = *find++) != 0) {
  c = tolower_l((unsigned char)c, locale);
  len = strlen(find);
  do {
   do {
    if ((sc = *s++) == 0)
     return (((void*)0));
   } while ((char)tolower_l((unsigned char)sc, locale) != c);
  } while (strncasecmp_l(s, find, len, locale) != 0);
  s--;
 }
 return ((char *)s);
}
