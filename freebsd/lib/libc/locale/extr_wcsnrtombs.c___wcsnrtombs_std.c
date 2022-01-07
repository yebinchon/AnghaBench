
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t (* wcrtomb_pfn_t ) (char*,int const,int *) ;
typedef int wchar_t ;
typedef int mbstate_t ;


 scalar_t__ MB_CUR_MAX ;
 int MB_LEN_MAX ;
 int memcpy (char*,char*,size_t) ;

size_t
__wcsnrtombs_std(char * __restrict dst, const wchar_t ** __restrict src,
    size_t nwc, size_t len, mbstate_t * __restrict ps,
    wcrtomb_pfn_t pwcrtomb)
{
 mbstate_t mbsbak;
 char buf[MB_LEN_MAX];
 const wchar_t *s;
 size_t nbytes;
 size_t nb;

 s = *src;
 nbytes = 0;

 if (dst == ((void*)0)) {
  while (nwc-- > 0) {
   if ((nb = pwcrtomb(buf, *s, ps)) == (size_t)-1)

    return ((size_t)-1);
   else if (*s == L'\0')
    return (nbytes + nb - 1);
   s++;
   nbytes += nb;
  }
  return (nbytes);
 }

 while (len > 0 && nwc-- > 0) {
  if (len > (size_t)MB_CUR_MAX) {

   if ((nb = pwcrtomb(dst, *s, ps)) == (size_t)-1) {
    *src = s;
    return ((size_t)-1);
   }
  } else {







   mbsbak = *ps;
   if ((nb = pwcrtomb(buf, *s, ps)) == (size_t)-1) {
    *src = s;
    return ((size_t)-1);
   }
   if (nb > (int)len) {

    *ps = mbsbak;
    break;
   }
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
