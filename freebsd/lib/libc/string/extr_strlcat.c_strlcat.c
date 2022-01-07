
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char const*) ;

size_t
strlcat(char * __restrict dst, const char * __restrict src, size_t dsize)
{
 const char *odst = dst;
 const char *osrc = src;
 size_t n = dsize;
 size_t dlen;


 while (n-- != 0 && *dst != '\0')
  dst++;
 dlen = dst - odst;
 n = dsize - dlen;

 if (n-- == 0)
  return(dlen + strlen(src));
 while (*src != '\0') {
  if (n != 0) {
   *dst++ = *src;
   n--;
  }
  src++;
 }
 *dst = '\0';

 return(dlen + (src - osrc));
}
