
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ wchar_t ;
typedef int mbstate_t ;
struct TYPE_2__ {scalar_t__ want; } ;
typedef TYPE_1__ _UTF8State ;


 int EILSEQ ;
 size_t _UTF8_mbrtowc (scalar_t__*,char const*,size_t,int *) ;
 int errno ;

__attribute__((used)) static size_t
_UTF8_mbsnrtowcs(wchar_t * __restrict dst, const char ** __restrict src,
    size_t nms, size_t len, mbstate_t * __restrict ps)
{
 _UTF8State *us;
 const char *s;
 size_t nchr;
 wchar_t wc;
 size_t nb;

 us = (_UTF8State *)ps;

 s = *src;
 nchr = 0;

 if (dst == ((void*)0)) {





  if (nms > 0 && us->want > 0 && (signed char)*s > 0) {
   errno = EILSEQ;
   return ((size_t)-1);
  }
  for (;;) {
   if (nms > 0 && (signed char)*s > 0)




    nb = 1;
   else if ((nb = _UTF8_mbrtowc(&wc, s, nms, ps)) ==
       (size_t)-1)

    return ((size_t)-1);
   else if (nb == 0 || nb == (size_t)-2)
    return (nchr);
   s += nb;
   nms -= nb;
   nchr++;
  }

 }






 if (nms > 0 && len > 0 && us->want > 0 && (signed char)*s > 0) {
  errno = EILSEQ;
  return ((size_t)-1);
 }
 while (len-- > 0) {
  if (nms > 0 && (signed char)*s > 0) {




   *dst = (wchar_t)*s;
   nb = 1;
  } else if ((nb = _UTF8_mbrtowc(dst, s, nms, ps)) ==
      (size_t)-1) {
   *src = s;
   return ((size_t)-1);
  } else if (nb == (size_t)-2) {
   *src = s + nms;
   return (nchr);
  } else if (nb == 0) {
   *src = ((void*)0);
   return (nchr);
  }
  s += nb;
  nms -= nb;
  nchr++;
  dst++;
 }
 *src = s;
 return (nchr);
}
