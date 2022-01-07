
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_rhs_map {unsigned long mask; } ;
struct ck_rhs_entry_desc {scalar_t__ wanted; } ;
struct ck_rhs {struct ck_rhs_map* map; } ;


 scalar_t__ CK_RHS_MAX_WANTED ;
 struct ck_rhs_entry_desc* ck_rhs_desc (struct ck_rhs_map*,long) ;
 long ck_rhs_map_probe_next (struct ck_rhs_map*,long,unsigned int) ;

__attribute__((used)) static void
ck_rhs_add_wanted(struct ck_rhs *hs, long end_offset, long old_slot,
 unsigned long h)
{
 struct ck_rhs_map *map = hs->map;
 long offset;
 unsigned int probes = 1;
 bool found_slot = 0;
 struct ck_rhs_entry_desc *desc;

 offset = h & map->mask;

 if (old_slot == -1)
  found_slot = 1;
 while (offset != end_offset) {
  if (offset == old_slot)
   found_slot = 1;
  if (found_slot) {
   desc = ck_rhs_desc(map, offset);
   if (desc->wanted < CK_RHS_MAX_WANTED)
    desc->wanted++;
  }
  offset = ck_rhs_map_probe_next(map, offset, probes);
  probes++;
 }
}
