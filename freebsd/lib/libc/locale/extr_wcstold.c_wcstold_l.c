
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int mbstate_t ;
typedef int locale_t ;


 int FIX_LOCALE (int ) ;
 int free (char*) ;
 scalar_t__ iswspace_l (int const,int ) ;
 char* malloc (size_t) ;
 long double strtold_l (char*,char**,int ) ;
 size_t wcsrtombs_l (char*,int const**,size_t,int *,int ) ;

long double
wcstold_l(const wchar_t * __restrict nptr, wchar_t ** __restrict endptr,
  locale_t locale)
{
 static const mbstate_t initial;
 mbstate_t mbs;
 long double val;
 char *buf, *end;
 const wchar_t *wcp;
 size_t len;
 size_t spaces;
 FIX_LOCALE(locale);

 wcp = nptr;
 spaces = 0;
 while (iswspace_l(*wcp, locale)) {
  wcp++;
  spaces++;
 }

 mbs = initial;
 if ((len = wcsrtombs_l(((void*)0), &wcp, 0, &mbs, locale)) == (size_t)-1) {
  if (endptr != ((void*)0))
   *endptr = (wchar_t *)nptr;
  return (0.0);
 }
 if ((buf = malloc(len + 1)) == ((void*)0)) {
  if (endptr != ((void*)0))
   *endptr = (wchar_t *)nptr;
  return (0.0);
 }
 mbs = initial;
 wcsrtombs_l(buf, &wcp, len + 1, &mbs, locale);

 val = strtold_l(buf, &end, locale);

 if (endptr != ((void*)0)) {
  *endptr = (wchar_t *)nptr + (end - buf);
  if (buf != end)
   *endptr += spaces;
 }

 free(buf);

 return (val);
}
