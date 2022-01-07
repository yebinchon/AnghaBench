
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
typedef int mbstate_t ;
struct TYPE_2__ {int ch; } ;
typedef TYPE_1__ _GBKState ;


 int EILSEQ ;
 int EINVAL ;
 scalar_t__ _gbk_check (char const) ;
 int errno ;

__attribute__((used)) static size_t
_GBK_mbrtowc(wchar_t * __restrict pwc, const char * __restrict s, size_t n,
    mbstate_t * __restrict ps)
{
 _GBKState *gs;
 wchar_t wc;
 size_t len;

 gs = (_GBKState *)ps;

 if ((gs->ch & ~0xFF) != 0) {

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

 if (gs->ch != 0) {
  if (*s == '\0') {
   errno = EILSEQ;
   return ((size_t)-1);
  }
  wc = (gs->ch << 8) | (*s & 0xFF);
  if (pwc != ((void*)0))
   *pwc = wc;
  gs->ch = 0;
  return (1);
 }

 len = (size_t)_gbk_check(*s);
 wc = *s++ & 0xff;
 if (len == 2) {
  if (n < 2) {

   gs->ch = wc;
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
