
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
typedef unsigned char uint8_t ;
typedef int mbstate_t ;
struct TYPE_2__ {int want; int ch; } ;
typedef TYPE_1__ _EucState ;


 int EILSEQ ;
 int EINVAL ;
 int MB_CUR_MAX ;
 int MIN (int,size_t) ;
 int errno ;

__attribute__((used)) static size_t
_EUC_mbrtowc_impl(wchar_t * __restrict pwc, const char * __restrict s,
 size_t n, mbstate_t * __restrict ps,
 uint8_t cs2, uint8_t cs2width, uint8_t cs3, uint8_t cs3width)
{
 _EucState *es;
 int i, want;
 wchar_t wc = 0;
 unsigned char ch, chs;

 es = (_EucState *)ps;

 if (es->want < 0 || es->want > MB_CUR_MAX) {
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

 if (es->want == 0) {

  if (((ch = (unsigned char)*s) & 0x80) == 0) {
   if (pwc != ((void*)0))
    *pwc = ch;
   return (ch != '\0' ? 1 : 0);
  }

  if (ch >= 0xa1) {

   want = 2;
  } else if (ch == cs2) {
   want = cs2width;
  } else if (ch == cs3) {
   want = cs3width;
  } else {
   errno = EILSEQ;
   return ((size_t)-1);
  }


  es->want = want;
  es->ch = 0;
 } else {
  want = es->want;
  wc = es->ch;
 }

 for (i = 0; i < MIN(want, n); i++) {
  wc <<= 8;
  chs = *s;
  wc |= chs;
  s++;
 }
 if (i < want) {

  es->want = want - i;
  es->ch = wc;
  errno = EILSEQ;
  return ((size_t)-2);
 }
 if (pwc != ((void*)0))
  *pwc = wc;
 es->want = 0;
 return (wc == L'\0' ? 0 : want);
}
