
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;


 size_t wcslen (char const*) ;

size_t
wcslcat(wchar_t *dst, const wchar_t *src, size_t siz)
{
 wchar_t *d = dst;
 const wchar_t *s = src;
 size_t n = siz;
 size_t dlen;


 while (n-- != 0 && *d != '\0')
  d++;
 dlen = d - dst;
 n = siz - dlen;

 if (n == 0)
  return(dlen + wcslen(s));
 while (*s != '\0') {
  if (n != 1) {
   *d++ = *s;
   n--;
  }
  s++;
 }
 *d = '\0';

 return(dlen + (s - src));
}
