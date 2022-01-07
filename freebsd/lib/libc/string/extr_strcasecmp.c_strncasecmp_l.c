
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int locale_t ;


 int FIX_LOCALE (int ) ;
 int tolower_l (int const,int ) ;

int
strncasecmp_l(const char *s1, const char *s2, size_t n, locale_t locale)
{
 FIX_LOCALE(locale);
 if (n != 0) {
  const u_char
    *us1 = (const u_char *)s1,
    *us2 = (const u_char *)s2;

  do {
   if (tolower_l(*us1, locale) != tolower_l(*us2++, locale))
    return (tolower_l(*us1, locale) - tolower_l(*--us2, locale));
   if (*us1++ == '\0')
    break;
  } while (--n != 0);
 }
 return (0);
}
