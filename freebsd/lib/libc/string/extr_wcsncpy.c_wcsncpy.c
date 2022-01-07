
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;



wchar_t *
wcsncpy(wchar_t * __restrict dst, const wchar_t * __restrict src, size_t n)
{
 if (n != 0) {
  wchar_t *d = dst;
  const wchar_t *s = src;

  do {
   if ((*d++ = *s++) == L'\0') {

    while (--n != 0)
     *d++ = L'\0';
    break;
   }
  } while (--n != 0);
 }
 return (dst);
}
