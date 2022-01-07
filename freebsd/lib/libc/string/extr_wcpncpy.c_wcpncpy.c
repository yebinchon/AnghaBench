
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;



wchar_t *
wcpncpy(wchar_t * __restrict dst, const wchar_t * __restrict src, size_t n)
{

 for (; n--; dst++, src++) {
  if (!(*dst = *src)) {
   wchar_t *ret = dst;
   while (n--)
    *++dst = L'\0';
   return (ret);
  }
 }
 return (dst);
}
