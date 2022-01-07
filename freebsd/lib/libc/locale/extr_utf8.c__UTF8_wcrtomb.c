
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
typedef int mbstate_t ;
struct TYPE_2__ {scalar_t__ want; } ;
typedef TYPE_1__ _UTF8State ;


 int EILSEQ ;
 int EINVAL ;
 int errno ;

__attribute__((used)) static size_t
_UTF8_wcrtomb(char * __restrict s, wchar_t wc, mbstate_t * __restrict ps)
{
 _UTF8State *us;
 unsigned char lead;
 int i, len;

 us = (_UTF8State *)ps;

 if (us->want != 0) {
  errno = EINVAL;
  return ((size_t)-1);
 }

 if (s == ((void*)0))

  return (1);







 if ((wc & ~0x7f) == 0) {

  *s = (char)wc;
  return (1);
 } else if ((wc & ~0x7ff) == 0) {
  lead = 0xc0;
  len = 2;
 } else if ((wc & ~0xffff) == 0) {
  if (wc >= 0xd800 && wc <= 0xdfff) {
   errno = EILSEQ;
   return ((size_t)-1);
  }
  lead = 0xe0;
  len = 3;
 } else if (wc >= 0 && wc <= 0x10ffff) {
  lead = 0xf0;
  len = 4;
 } else {
  errno = EILSEQ;
  return ((size_t)-1);
 }







 for (i = len - 1; i > 0; i--) {
  s[i] = (wc & 0x3f) | 0x80;
  wc >>= 6;
 }
 *s = (wc & 0xff) | lead;

 return (len);
}
