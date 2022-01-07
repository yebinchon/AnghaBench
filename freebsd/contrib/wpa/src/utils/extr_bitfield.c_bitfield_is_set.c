
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitfield {size_t max_bits; int* bits; } ;


 int BIT (size_t) ;

int bitfield_is_set(struct bitfield *bf, size_t bit)
{
 if (bit >= bf->max_bits)
  return 0;
 return !!(bf->bits[bit / 8] & BIT(bit % 8));
}
