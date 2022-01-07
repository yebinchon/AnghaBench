
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



int
ctl_set_mask(uint32_t *mask, uint32_t bit)
{
 uint32_t chunk, piece;

 chunk = bit >> 5;
 piece = bit % (sizeof(uint32_t) * 8);

 if ((mask[chunk] & (1 << piece)) != 0)
  return (-1);
 else
  mask[chunk] |= (1 << piece);

 return (0);
}
