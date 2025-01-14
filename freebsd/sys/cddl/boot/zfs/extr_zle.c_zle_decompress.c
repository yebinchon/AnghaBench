
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
zle_decompress(void *s_start, void *d_start, size_t s_len, size_t d_len, int n)
{
 unsigned char *src = s_start;
 unsigned char *dst = d_start;
 unsigned char *s_end = src + s_len;
 unsigned char *d_end = dst + d_len;

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
