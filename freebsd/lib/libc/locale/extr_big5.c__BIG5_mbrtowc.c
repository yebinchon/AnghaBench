
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
typedef int mbstate_t ;
struct TYPE_2__ {int ch; } ;
typedef TYPE_1__ _BIG5State ;


 int EILSEQ ;
 int EINVAL ;
 scalar_t__ _big5_check (char const) ;
 int errno ;

__attribute__((used)) static size_t
_BIG5_mbrtowc(wchar_t * __restrict pwc, const char * __restrict s, size_t n,
    mbstate_t * __restrict ps)
{
 _BIG5State *bs;
 wchar_t wc;
 size_t len;

 bs = (_BIG5State *)ps;

 if ((bs->ch & ~0xFF) != 0) {

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

 if (bs->ch != 0) {
  if (*s == '\0') {
   errno = EILSEQ;
   return ((size_t)-1);
  }
  wc = (bs->ch << 8) | (*s & 0xFF);
  if (pwc != ((void*)0))
   *pwc = wc;
  bs->ch = 0;
  return (1);
 }

 len = (size_t)_big5_check(*s);
 wc = *s++ & 0xff;
 if (len == 2) {
  if (n < 2) {

   bs->ch = wc;
   return ((size_t)-2);
  }
  if (*s == '\0') {
   errno = EILSEQ;
   return ((size_t)-1);
  }
  wc = (wc << 8) | (*s++ & 0xff);
  if (pwc != ((void*)0))
   *pwc = wc;
  return (2);
 } else {
  if (pwc != ((void*)0))
   *pwc = wc;
  return (wc == L'\0' ? 0 : 1);
 }
}
