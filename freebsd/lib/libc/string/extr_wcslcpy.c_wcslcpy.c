
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;



size_t
wcslcpy(wchar_t *dst, const wchar_t *src, size_t siz)
{
 wchar_t *d = dst;
 const wchar_t *s = src;
 size_t n = siz;


 if (n != 0 && --n != 0) {
  do {
   if ((*d++ = *s++) == 0)
    break;
  } while (--n != 0);
 }


 if (n == 0) {
  if (siz != 0)
   *d = '\0';
  while (*s++)
   ;
 }

 return(s - src - 1);
}
