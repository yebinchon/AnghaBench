
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_hs_map {unsigned long capacity; void** entries; unsigned long mask; unsigned long probe_limit; int n_entries; } ;
struct ck_hs {int mode; unsigned long (* hf ) (void const*,int ) ;int m; struct ck_hs_map* map; int seed; } ;


 scalar_t__ CK_CC_LIKELY (int) ;
 void const* CK_HS_EMPTY ;
 int CK_HS_MODE_OBJECT ;
 unsigned long CK_HS_PROBE_L1 ;
 void const* CK_HS_TOMBSTONE ;
 void* CK_HS_VMA (void const*) ;
 int CK_MD_CACHELINE ;
 int ck_hs_map_bound_set (struct ck_hs_map*,unsigned long,unsigned long) ;
 struct ck_hs_map* ck_hs_map_create (struct ck_hs*,unsigned long) ;
 int ck_hs_map_destroy (int ,struct ck_hs_map*,int) ;
 unsigned long ck_hs_map_probe_next (struct ck_hs_map*,unsigned long,unsigned long,int ,unsigned long) ;
 int ck_pr_fence_store () ;
 int ck_pr_store_ptr (struct ck_hs_map**,struct ck_hs_map*) ;
 unsigned long stub1 (void const*,int ) ;

bool
ck_hs_grow(struct ck_hs *hs,
    unsigned long capacity)
{
 struct ck_hs_map *map, *update;
 unsigned long k, i, j, offset, probes;
 const void *previous, **bucket;

restart:
 map = hs->map;
 if (map->capacity > capacity)
  return 0;

 update = ck_hs_map_create(hs, capacity);
 if (update == ((void*)0))
  return 0;

 for (k = 0; k < map->capacity; k++) {
  unsigned long h;

  previous = map->entries[k];
  if (previous == CK_HS_EMPTY || previous == CK_HS_TOMBSTONE)
   continue;






  h = hs->hf(previous, hs->seed);
  offset = h & update->mask;
  i = probes = 0;

  for (;;) {
   bucket = (const void **)((uintptr_t)&update->entries[offset] & ~(CK_MD_CACHELINE - 1));

   for (j = 0; j < CK_HS_PROBE_L1; j++) {
    const void **cursor = bucket + ((j + offset) & (CK_HS_PROBE_L1 - 1));

    if (probes++ == update->probe_limit)
     break;

    if (CK_CC_LIKELY(*cursor == CK_HS_EMPTY)) {
     *cursor = map->entries[k];
     update->n_entries++;

     ck_hs_map_bound_set(update, h, probes);
     break;
    }
   }

   if (j < CK_HS_PROBE_L1)
    break;

   offset = ck_hs_map_probe_next(update, offset, h, i++, probes);
  }

  if (probes > update->probe_limit) {



   ck_hs_map_destroy(hs->m, update, 0);
   capacity <<= 1;
   goto restart;
  }
 }

 ck_pr_fence_store();
 ck_pr_store_ptr(&hs->map, update);
 ck_hs_map_destroy(hs->m, map, 1);
 return 1;
}
