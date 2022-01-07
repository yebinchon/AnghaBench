
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bitfield {size_t max_bits; int * bits; } ;


 struct bitfield* os_zalloc (int) ;

struct bitfield * bitfield_alloc(size_t max_bits)
{
 struct bitfield *bf;

 bf = os_zalloc(sizeof(*bf) + (max_bits + 7) / 8);
 if (bf == ((void*)0))
  return ((void*)0);
 bf->bits = (u8 *) (bf + 1);
 bf->max_bits = max_bits;
 return bf;
}
