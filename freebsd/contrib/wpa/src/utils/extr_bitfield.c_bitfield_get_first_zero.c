
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitfield {int max_bits; int* bits; } ;


 size_t first_zero (int) ;

int bitfield_get_first_zero(struct bitfield *bf)
{
 size_t i;
 for (i = 0; i < (bf->max_bits + 7) / 8; i++) {
  if (bf->bits[i] != 0xff)
   break;
 }
 if (i == (bf->max_bits + 7) / 8)
  return -1;
 i = i * 8 + first_zero(bf->bits[i]);
 if (i >= bf->max_bits)
  return -1;
 return i;
}
