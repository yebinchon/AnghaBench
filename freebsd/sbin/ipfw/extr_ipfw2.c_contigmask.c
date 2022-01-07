
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



int
contigmask(uint8_t *p, int len)
{
 int i, n;

 for (i=0; i<len ; i++)
  if ( (p[i/8] & (1 << (7 - (i%8)))) == 0)
   break;
 for (n=i+1; n < len; n++)
  if ( (p[n/8] & (1 << (7 - (n%8)))) != 0)
   return -1;
 return i;
}
