
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char const*) ;

size_t
isc_string_strlcat(char *dst, const char *src, size_t size)
{
 char *d = dst;
 const char *s = src;
 size_t n = size;
 size_t dlen;


 while (n-- != 0U && *d != '\0')
  d++;
 dlen = d - dst;
 n = size - dlen;

 if (n == 0U)
  return(dlen + strlen(s));
 while (*s != '\0') {
  if (n != 1U) {
   *d++ = *s;
   n--;
  }
  s++;
 }
 *d = '\0';

 return(dlen + (s - src));
}
