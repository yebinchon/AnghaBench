
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
typedef int mbstate_t ;
struct TYPE_2__ {int want; int lbound; int ch; } ;
typedef TYPE_1__ _UTF8State ;


 int EILSEQ ;
 int EINVAL ;
 int MIN (int,size_t) ;
 int errno ;

__attribute__((used)) static size_t
_UTF8_mbrtowc(wchar_t * __restrict pwc, const char * __restrict s, size_t n,
    mbstate_t * __restrict ps)
{
 _UTF8State *us;
 int ch, i, mask, want;
 wchar_t lbound, wch;

 us = (_UTF8State *)ps;

 if (us->want < 0 || us->want > 6) {
  errno = EINVAL;
  return ((size_t)-1);
 }

 if (s == ((void*)0)) {
  s = "";
  n = 1;
  pwc = ((void*)0);
 }

 if (n == 0)

  return ((size_t)-2);

 if (us->want == 0) {
  ch = (unsigned char)*s;
  if ((ch & 0x80) == 0) {

   if (pwc != ((void*)0))
    *pwc = ch;
   return (ch != '\0' ? 1 : 0);
  }
  if ((ch & 0xe0) == 0xc0) {
   mask = 0x1f;
   want = 2;
   lbound = 0x80;
  } else if ((ch & 0xf0) == 0xe0) {
   mask = 0x0f;
   want = 3;
   lbound = 0x800;
  } else if ((ch & 0xf8) == 0xf0) {
   mask = 0x07;
   want = 4;
   lbound = 0x10000;
  } else {



   errno = EILSEQ;
   return ((size_t)-1);
  }
 } else {
  want = us->want;
  lbound = us->lbound;
 }





 if (us->want == 0)
  wch = (unsigned char)*s++ & mask;
 else
  wch = us->ch;

 for (i = (us->want == 0) ? 1 : 0; i < MIN(want, n); i++) {
  if ((*s & 0xc0) != 0x80) {




   errno = EILSEQ;
   return ((size_t)-1);
  }
  wch <<= 6;
  wch |= *s++ & 0x3f;
 }
 if (i < want) {

  us->want = want - i;
  us->lbound = lbound;
  us->ch = wch;
  return ((size_t)-2);
 }
 if (wch < lbound) {



  errno = EILSEQ;
  return ((size_t)-1);
 }
 if ((wch >= 0xd800 && wch <= 0xdfff) || wch > 0x10ffff) {



  errno = EILSEQ;
  return ((size_t)-1);
 }
 if (pwc != ((void*)0))
  *pwc = wch;
 us->want = 0;
 return (wch == L'\0' ? 0 : want);
}
