
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int uintmax_t ;
typedef int locale_t ;


 int EINVAL ;
 int ERANGE ;
 int FIX_LOCALE (int ) ;
 int UINTMAX_MAX ;
 int digittoint_l (int,int ) ;
 int errno ;
 scalar_t__ iswdigit_l (int,int ) ;
 scalar_t__ iswspace_l (int,int ) ;

uintmax_t
wcstoumax_l(const wchar_t * __restrict nptr, wchar_t ** __restrict endptr,
    int base, locale_t locale)
{
 const wchar_t *s;
 uintmax_t acc;
 wchar_t c;
 uintmax_t cutoff;
 int neg, any, cutlim;
 FIX_LOCALE(locale);




 s = nptr;
 do {
  c = *s++;
 } while (iswspace_l(c, locale));
 if (c == L'-') {
  neg = 1;
  c = *s++;
 } else {
  neg = 0;
  if (c == L'+')
   c = *s++;
 }
 if ((base == 0 || base == 16) &&
     c == L'0' && (*s == L'x' || *s == L'X')) {
  c = s[1];
  s += 2;
  base = 16;
 }
 if (base == 0)
  base = c == L'0' ? 8 : 10;
 acc = any = 0;
 if (base < 2 || base > 36)
  goto noconv;

 cutoff = UINTMAX_MAX / base;
 cutlim = UINTMAX_MAX % base;
 for ( ; ; c = *s++) {





  if (c >= L'0' && c <= L'9')
   c -= L'0';
  else if (c >= L'A' && c <= L'Z')
   c -= L'A' - 10;
  else if (c >= L'a' && c <= L'z')
   c -= L'a' - 10;
  else
   break;
  if (c >= base)
   break;
  if (any < 0 || acc > cutoff || (acc == cutoff && c > cutlim))
   any = -1;
  else {
   any = 1;
   acc *= base;
   acc += c;
  }
 }
 if (any < 0) {
  acc = UINTMAX_MAX;
  errno = ERANGE;
 } else if (!any) {
noconv:
  errno = EINVAL;
 } else if (neg)
  acc = -acc;
 if (endptr != ((void*)0))
  *endptr = (wchar_t *)(any ? s - 1 : nptr);
 return (acc);
}
