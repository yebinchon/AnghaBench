
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int STEP ;

void
swab(const void * __restrict from, void * __restrict to, ssize_t len)
{
 unsigned long temp;
 int n;
 char *fp, *tp;

 if (len <= 0)
  return;
 n = len >> 1;
 fp = (char *)from;
 tp = (char *)to;


 for (; n & 0x7; --n)
  temp = *fp++,*tp++ = *fp++,*tp++ = temp;
 for (n >>= 3; n > 0; --n) {
  temp = *fp++,*tp++ = *fp++,*tp++ = temp; temp = *fp++,*tp++ = *fp++,*tp++ = temp; temp = *fp++,*tp++ = *fp++,*tp++ = temp; temp = *fp++,*tp++ = *fp++,*tp++ = temp;
  temp = *fp++,*tp++ = *fp++,*tp++ = temp; temp = *fp++,*tp++ = *fp++,*tp++ = temp; temp = *fp++,*tp++ = *fp++,*tp++ = temp; temp = *fp++,*tp++ = *fp++,*tp++ = temp;
 }
}
