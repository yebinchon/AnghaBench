
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_rhs_map {long (* probe_func ) (struct ck_rhs*,struct ck_rhs_map*,unsigned long*,long*,unsigned long,void const*,void const**,int ,int ) ;int capacity; scalar_t__ n_entries; scalar_t__ max_entries; int * generation; int probe_limit; } ;
struct ck_rhs_entry_desc {int in_rh; unsigned long probes; } ;
struct ck_rhs {int mode; struct ck_rhs_map* map; } ;


 void* CK_CC_DECONST_PTR (void const*) ;
 scalar_t__ CK_CC_UNLIKELY (int) ;
 unsigned long CK_RHS_G_MASK ;
 int CK_RHS_PROBE_INSERT ;
 int ck_pr_fence_atomic_store () ;
 int ck_pr_inc_uint (int *) ;
 int ck_pr_store_ptr (int ,void const*) ;
 int ck_rhs_add_wanted (struct ck_rhs*,long,int,unsigned long) ;
 struct ck_rhs_entry_desc* ck_rhs_desc (struct ck_rhs_map*,long) ;
 int ck_rhs_do_backward_shift_delete (struct ck_rhs*,long) ;
 int ck_rhs_entry_addr (struct ck_rhs_map*,long) ;
 int ck_rhs_grow (struct ck_rhs*,int) ;
 int ck_rhs_map_bound_set (struct ck_rhs_map*,unsigned long,unsigned long) ;
 void* ck_rhs_marshal (int ,void const*,unsigned long) ;
 int ck_rhs_put_robin_hood (struct ck_rhs*,long,struct ck_rhs_entry_desc*) ;
 int ck_rhs_set_probes (struct ck_rhs_map*,long,unsigned long) ;
 long stub1 (struct ck_rhs*,struct ck_rhs_map*,unsigned long*,long*,unsigned long,void const*,void const**,int ,int ) ;

bool
ck_rhs_set(struct ck_rhs *hs,
    unsigned long h,
    const void *key,
    void **previous)
{
 long slot, first;
 const void *object;
 const void *insert;
 unsigned long n_probes;
 struct ck_rhs_map *map;

 *previous = ((void*)0);

restart:
 map = hs->map;

 slot = map->probe_func(hs, map, &n_probes, &first, h, key, &object, map->probe_limit, CK_RHS_PROBE_INSERT);
 if (slot == -1 && first == -1) {
  if (ck_rhs_grow(hs, map->capacity << 1) == 0)
   return 0;

  goto restart;
 }
 ck_rhs_map_bound_set(map, h, n_probes);
 insert = ck_rhs_marshal(hs->mode, key, h);

 if (first != -1) {
  struct ck_rhs_entry_desc *desc = ((void*)0), *desc2;
  if (slot != -1) {
   desc = ck_rhs_desc(map, slot);
   desc->in_rh = 1;
  }
  desc2 = ck_rhs_desc(map, first);
  int ret = ck_rhs_put_robin_hood(hs, first, desc2);
  if (slot != -1)
   desc->in_rh = 0;

  if (CK_CC_UNLIKELY(ret == 1))
   goto restart;
  if (CK_CC_UNLIKELY(ret == -1))
   return 0;

  ck_pr_store_ptr(ck_rhs_entry_addr(map, first), insert);
  desc2->probes = n_probes;







  ck_rhs_add_wanted(hs, first, -1, h);
  if (object != ((void*)0)) {
   ck_pr_inc_uint(&map->generation[h & CK_RHS_G_MASK]);
   ck_pr_fence_atomic_store();
   ck_rhs_do_backward_shift_delete(hs, slot);
  }

 } else {




  ck_pr_store_ptr(ck_rhs_entry_addr(map, slot), insert);
  ck_rhs_set_probes(map, slot, n_probes);
  if (object == ((void*)0))
   ck_rhs_add_wanted(hs, slot, -1, h);
 }

 if (object == ((void*)0)) {
  map->n_entries++;
  if ((map->n_entries ) > map->max_entries)
   ck_rhs_grow(hs, map->capacity << 1);
 }

 *previous = CK_CC_DECONST_PTR(object);
 return 1;
}
