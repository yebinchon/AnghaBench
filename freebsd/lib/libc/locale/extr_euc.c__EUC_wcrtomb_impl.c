
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
typedef int uint8_t ;
typedef int mbstate_t ;
struct TYPE_2__ {scalar_t__ want; } ;
typedef TYPE_1__ _EucState ;


 int EILSEQ ;
 int EINVAL ;
 int MB_CUR_MAX ;
 int errno ;

__attribute__((used)) static size_t
_EUC_wcrtomb_impl(char * __restrict s, wchar_t wc,
    mbstate_t * __restrict ps,
    uint8_t cs2, uint8_t cs2width, uint8_t cs3, uint8_t cs3width)
{
 _EucState *es;
 int i, len;
 wchar_t nm;

 es = (_EucState *)ps;

 if (es->want != 0) {
  errno = EINVAL;
  return ((size_t)-1);
 }

 if (s == ((void*)0))

  return (1);

 if ((wc & ~0x7f) == 0) {

  *s = (char)wc;
  return (1);
 }


 if ((unsigned)wc > 0xffffff) {
  len = 4;
 } else if ((unsigned)wc > 0xffff) {
  len = 3;
 } else if ((unsigned)wc > 0xff) {
  len = 2;
 } else {
  len = 1;
 }

 if (len > MB_CUR_MAX) {
  errno = EILSEQ;
  return ((size_t)-1);
 }


 if ((wc < 0xa100) || (wc > 0xffff)) {

  nm = (wc >> ((len - 1) * 8));
  if (nm == cs2) {
   if (len != cs2width) {
    errno = EILSEQ;
    return ((size_t)-1);
   }
  } else if (nm == cs3) {
   if (len != cs3width) {
    errno = EILSEQ;
    return ((size_t)-1);
   }
  } else {
   errno = EILSEQ;
   return ((size_t)-1);
  }
 }


 for (i = len - 1; i >= 0; i--) {
  s[i] = (wc & 0xff);
  wc >>= 8;
 }
 return (len);
}
