
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void
ftpvis(char *dst, size_t dstlen, const char *src, size_t srclen)
{
 size_t di, si;

 for (di = si = 0;
     src[si] != '\0' && di < dstlen && si < srclen;
     di++, si++) {
  switch (src[si]) {
  case '\\':
  case ' ':
  case '\t':
  case '\r':
  case '\n':
  case '"':
   dst[di++] = '\\';
   if (di >= dstlen)
    break;

  default:
   dst[di] = src[si];
  }
 }
 dst[di] = '\0';
}
