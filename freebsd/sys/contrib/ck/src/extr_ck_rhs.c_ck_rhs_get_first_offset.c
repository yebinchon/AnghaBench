
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_rhs_map {unsigned int offset_mask; unsigned long mask; } ;



__attribute__((used)) static long
ck_rhs_get_first_offset(struct ck_rhs_map *map, unsigned long offset, unsigned int probes)
{
 while (probes > (unsigned long)map->offset_mask + 1) {
  offset -= ((probes - 1) &~ map->offset_mask);
  offset &= map->mask;
  offset = (offset &~ map->offset_mask) +
      ((offset - map->offset_mask) & map->offset_mask);
  probes -= map->offset_mask + 1;
 }
 return ((offset &~ map->offset_mask) + ((offset - (probes - 1)) & map->offset_mask));
}
