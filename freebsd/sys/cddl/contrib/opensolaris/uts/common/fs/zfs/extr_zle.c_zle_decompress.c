
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uchar_t ;



int
zle_decompress(void *s_start, void *d_start, size_t s_len, size_t d_len, int n)
{
 uchar_t *src = s_start;
 uchar_t *dst = d_start;
 uchar_t *s_end = src + s_len;
 uchar_t *d_end = dst + d_len;

 while (src < s_end && dst < d_end) {
  int len = 1 + *src++;
  if (len <= n) {
   while (len-- != 0)
    *dst++ = *src++;
  } else {
   len -= n;
   while (len-- != 0)
    *dst++ = 0;
  }
 }
 return (dst == d_end ? 0 : -1);
}
