
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_rhs_map {unsigned long capacity; unsigned long mask; int n_entries; int probe_limit; } ;
struct ck_rhs {int mode; unsigned long (* hf ) (void const*,int ) ;int m; struct ck_rhs_map* map; int seed; } ;


 scalar_t__ CK_CC_LIKELY (int) ;
 void const* CK_RHS_EMPTY ;
 int CK_RHS_MODE_OBJECT ;
 void* CK_RHS_VMA (void const*) ;
 int ck_pr_fence_store () ;
 int ck_pr_store_ptr (struct ck_rhs_map**,struct ck_rhs_map*) ;
 void* ck_rhs_entry (struct ck_rhs_map*,unsigned long) ;
 void** ck_rhs_entry_addr (struct ck_rhs_map*,unsigned long) ;
 int ck_rhs_map_bound_set (struct ck_rhs_map*,unsigned long,unsigned long) ;
 struct ck_rhs_map* ck_rhs_map_create (struct ck_rhs*,unsigned long) ;
 int ck_rhs_map_destroy (int ,struct ck_rhs_map*,int) ;
 unsigned long ck_rhs_map_probe_next (struct ck_rhs_map*,unsigned long,unsigned long) ;
 unsigned long ck_rhs_probes (struct ck_rhs_map*,unsigned long) ;
 int ck_rhs_set_probes (struct ck_rhs_map*,unsigned long,unsigned long) ;
 int ck_rhs_wanted_inc (struct ck_rhs_map*,unsigned long) ;
 unsigned long stub1 (void const*,int ) ;
 unsigned long stub2 (void const*,int ) ;

bool
ck_rhs_grow(struct ck_rhs *hs,
    unsigned long capacity)
{
 struct ck_rhs_map *map, *update;
 const void *previous, *prev_saved;
 unsigned long k, offset, probes;

restart:
 map = hs->map;
 if (map->capacity > capacity)
  return 0;

 update = ck_rhs_map_create(hs, capacity);
 if (update == ((void*)0))
  return 0;

 for (k = 0; k < map->capacity; k++) {
  unsigned long h;

  prev_saved = previous = ck_rhs_entry(map, k);
  if (previous == CK_RHS_EMPTY)
   continue;






  h = hs->hf(previous, hs->seed);
  offset = h & update->mask;
  probes = 0;

  for (;;) {
   const void **cursor = ck_rhs_entry_addr(update, offset);

   if (probes++ == update->probe_limit) {



    ck_rhs_map_destroy(hs->m, update, 0);
    capacity <<= 1;
    goto restart;
   }

   if (CK_CC_LIKELY(*cursor == CK_RHS_EMPTY)) {
    *cursor = prev_saved;
    update->n_entries++;
    ck_rhs_set_probes(update, offset, probes);
    ck_rhs_map_bound_set(update, h, probes);
    break;
   } else if (ck_rhs_probes(update, offset) < probes) {
    const void *tmp = prev_saved;
    unsigned int old_probes;
    prev_saved = previous = *cursor;




    *cursor = tmp;
    ck_rhs_map_bound_set(update, h, probes);
    h = hs->hf(previous, hs->seed);
    old_probes = ck_rhs_probes(update, offset);
    ck_rhs_set_probes(update, offset, probes);
    probes = old_probes - 1;
    continue;
   }
   ck_rhs_wanted_inc(update, offset);
   offset = ck_rhs_map_probe_next(update, offset, probes);
  }

 }

 ck_pr_fence_store();
 ck_pr_store_ptr(&hs->map, update);
 ck_rhs_map_destroy(hs->m, map, 1);
 return 1;
}
