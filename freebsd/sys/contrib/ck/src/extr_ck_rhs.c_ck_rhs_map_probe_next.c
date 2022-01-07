
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_rhs_map {unsigned long offset_mask; unsigned long mask; } ;



__attribute__((used)) static inline unsigned long
ck_rhs_map_probe_next(struct ck_rhs_map *map,
    unsigned long offset,
    unsigned long probes)
{

 if (probes & map->offset_mask) {
  offset = (offset &~ map->offset_mask) +
      ((offset + 1) & map->offset_mask);
  return offset;
 } else
  return (offset + probes) & map->mask;
}
