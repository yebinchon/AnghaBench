
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uchar_t ;


 int MATCH_BITS ;
 int MATCH_MIN ;
 int NBBY ;
 int OFFSET_MASK ;

int
lzjb_decompress(void *s_start, void *d_start, size_t s_len, size_t d_len, int n)
{
 uchar_t *src = s_start;
 uchar_t *dst = d_start;
 uchar_t *d_end = (uchar_t *)d_start + d_len;
 uchar_t *cpy;
 uchar_t copymap = 0;
 int copymask = 1 << (NBBY - 1);

 while (dst < d_end) {
  if ((copymask <<= 1) == (1 << NBBY)) {
   copymask = 1;
   copymap = *src++;
  }
  if (copymap & copymask) {
   int mlen = (src[0] >> (NBBY - MATCH_BITS)) + MATCH_MIN;
   int offset = ((src[0] << NBBY) | src[1]) & OFFSET_MASK;
   src += 2;
   if ((cpy = dst - offset) < (uchar_t *)d_start)
    return (-1);
   if (mlen > (d_end - dst))
    mlen = d_end - dst;
   while (--mlen >= 0)
    *dst++ = *cpy++;
  } else {
   *dst++ = *src++;
  }
 }
 return (0);
}
