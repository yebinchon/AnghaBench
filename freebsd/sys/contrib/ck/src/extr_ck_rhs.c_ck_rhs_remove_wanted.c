
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_rhs_map {int dummy; } ;
struct ck_rhs_entry_desc {scalar_t__ wanted; } ;
struct ck_rhs {struct ck_rhs_map* map; } ;


 scalar_t__ CK_RHS_MAX_WANTED ;
 struct ck_rhs_entry_desc* ck_rhs_desc (struct ck_rhs_map*,long) ;
 long ck_rhs_map_probe_prev (struct ck_rhs_map*,long,int) ;
 int ck_rhs_probes (struct ck_rhs_map*,long) ;

__attribute__((used)) static unsigned long
ck_rhs_remove_wanted(struct ck_rhs *hs, long offset, long limit)
{
 struct ck_rhs_map *map = hs->map;
 int probes = ck_rhs_probes(map, offset);
 bool do_remove = 1;
 struct ck_rhs_entry_desc *desc;

 while (probes > 1) {
  probes--;
  offset = ck_rhs_map_probe_prev(map, offset, probes);
  if (offset == limit)
   do_remove = 0;
  if (do_remove) {
   desc = ck_rhs_desc(map, offset);
   if (desc->wanted != CK_RHS_MAX_WANTED)
    desc->wanted--;
  }
 }
 return offset;
}
