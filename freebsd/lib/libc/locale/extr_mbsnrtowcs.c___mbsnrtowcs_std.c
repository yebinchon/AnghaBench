
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int mbstate_t ;
typedef size_t (* mbrtowc_pfn_t ) (int *,char const*,size_t,int *) ;



size_t
__mbsnrtowcs_std(wchar_t * __restrict dst, const char ** __restrict src,
    size_t nms, size_t len, mbstate_t * __restrict ps,
    mbrtowc_pfn_t pmbrtowc)
{
 const char *s;
 size_t nchr;
 wchar_t wc;
 size_t nb;

 s = *src;
 nchr = 0;

 if (dst == ((void*)0)) {
  for (;;) {
   if ((nb = pmbrtowc(&wc, s, nms, ps)) == (size_t)-1)

    return ((size_t)-1);
   else if (nb == 0 || nb == (size_t)-2)
    return (nchr);
   s += nb;
   nms -= nb;
   nchr++;
  }

 }

 while (len-- > 0) {
  if ((nb = pmbrtowc(dst, s, nms, ps)) == (size_t)-1) {
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
