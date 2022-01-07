
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



int
ctl_ffz(uint32_t *mask, uint32_t first, uint32_t last)
{
 int i;

 for (i = first; i < last; i++) {
  if ((mask[i / 32] & (1 << (i % 32))) == 0)
   return (i);
 }
 return (-1);
}
