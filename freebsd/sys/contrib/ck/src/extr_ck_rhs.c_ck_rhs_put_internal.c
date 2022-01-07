
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_rhs_map {long (* probe_func ) (struct ck_rhs*,struct ck_rhs_map*,unsigned long*,long*,unsigned long,void const*,void const**,int ,int) ;int capacity; scalar_t__ n_entries; scalar_t__ max_entries; int probe_limit; } ;
struct ck_rhs_entry_desc {unsigned long probes; } ;
struct ck_rhs {int mode; struct ck_rhs_map* map; } ;
typedef enum ck_rhs_probe_behavior { ____Placeholder_ck_rhs_probe_behavior } ck_rhs_probe_behavior ;


 scalar_t__ CK_CC_UNLIKELY (int) ;
 int ck_pr_store_ptr (int ,void const*) ;
 int ck_rhs_add_wanted (struct ck_rhs*,long,int,unsigned long) ;
 struct ck_rhs_entry_desc* ck_rhs_desc (struct ck_rhs_map*,long) ;
 int ck_rhs_entry_addr (struct ck_rhs_map*,long) ;
 int ck_rhs_grow (struct ck_rhs*,int) ;
 int ck_rhs_map_bound_set (struct ck_rhs_map*,unsigned long,unsigned long) ;
 void* ck_rhs_marshal (int ,void const*,unsigned long) ;
 int ck_rhs_put_robin_hood (struct ck_rhs*,long,struct ck_rhs_entry_desc*) ;
 int ck_rhs_set_probes (struct ck_rhs_map*,long,unsigned long) ;
 long stub1 (struct ck_rhs*,struct ck_rhs_map*,unsigned long*,long*,unsigned long,void const*,void const**,int ,int) ;

__attribute__((used)) static bool
ck_rhs_put_internal(struct ck_rhs *hs,
    unsigned long h,
    const void *key,
    enum ck_rhs_probe_behavior behavior)
{
 long slot, first;
 const void *object;
 const void *insert;
 unsigned long n_probes;
 struct ck_rhs_map *map;

restart:
 map = hs->map;

 slot = map->probe_func(hs, map, &n_probes, &first, h, key, &object,
     map->probe_limit, behavior);

 if (slot == -1 && first == -1) {
  if (ck_rhs_grow(hs, map->capacity << 1) == 0)
   return 0;

  goto restart;
 }


 if (object != ((void*)0))
  return 0;

 ck_rhs_map_bound_set(map, h, n_probes);
 insert = ck_rhs_marshal(hs->mode, key, h);

 if (first != -1) {
  struct ck_rhs_entry_desc *desc = ck_rhs_desc(map, first);
  int ret = ck_rhs_put_robin_hood(hs, first, desc);
  if (CK_CC_UNLIKELY(ret == 1))
   return ck_rhs_put_internal(hs, h, key, behavior);
  else if (CK_CC_UNLIKELY(ret == -1))
   return 0;

  ck_pr_store_ptr(ck_rhs_entry_addr(map, first), insert);
  desc->probes = n_probes;
  ck_rhs_add_wanted(hs, first, -1, h);
 } else {

  ck_pr_store_ptr(ck_rhs_entry_addr(map, slot), insert);
  ck_rhs_set_probes(map, slot, n_probes);
  ck_rhs_add_wanted(hs, slot, -1, h);
 }

 map->n_entries++;
 if ((map->n_entries ) > map->max_entries)
  ck_rhs_grow(hs, map->capacity << 1);
 return 1;
}
