
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
typedef int mbstate_t ;
struct TYPE_2__ {scalar_t__ want; } ;
typedef TYPE_1__ _UTF8State ;


 int EINVAL ;
 scalar_t__ MB_CUR_MAX ;
 int MB_LEN_MAX ;
 size_t _UTF8_wcrtomb (char*,int const,int *) ;
 int errno ;
 int memcpy (char*,char*,size_t) ;

__attribute__((used)) static size_t
_UTF8_wcsnrtombs(char * __restrict dst, const wchar_t ** __restrict src,
    size_t nwc, size_t len, mbstate_t * __restrict ps)
{
 _UTF8State *us;
 char buf[MB_LEN_MAX];
 const wchar_t *s;
 size_t nbytes;
 size_t nb;

 us = (_UTF8State *)ps;

 if (us->want != 0) {
  errno = EINVAL;
  return ((size_t)-1);
 }

 s = *src;
 nbytes = 0;

 if (dst == ((void*)0)) {
  while (nwc-- > 0) {
   if (0 <= *s && *s < 0x80)

    nb = 1;
   else if ((nb = _UTF8_wcrtomb(buf, *s, ps)) ==
       (size_t)-1)

    return ((size_t)-1);
   if (*s == L'\0')
    return (nbytes + nb - 1);
   s++;
   nbytes += nb;
  }
  return (nbytes);
 }

 while (len > 0 && nwc-- > 0) {
  if (0 <= *s && *s < 0x80) {

   nb = 1;
   *dst = *s;
  } else if (len > (size_t)MB_CUR_MAX) {

   if ((nb = _UTF8_wcrtomb(dst, *s, ps)) == (size_t)-1) {
    *src = s;
    return ((size_t)-1);
   }
  } else {



   if ((nb = _UTF8_wcrtomb(buf, *s, ps)) == (size_t)-1) {
    *src = s;
    return ((size_t)-1);
   }
   if (nb > (int)len)

    break;
   memcpy(dst, buf, nb);
  }
  if (*s == L'\0') {
   *src = ((void*)0);
   return (nbytes + nb - 1);
  }
  s++;
  dst += nb;
  len -= nb;
  nbytes += nb;
 }
 *src = s;
 return (nbytes);
}
