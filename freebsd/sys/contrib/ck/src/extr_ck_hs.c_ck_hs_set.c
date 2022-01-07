
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_hs_map {int capacity; int probe_limit; } ;
struct ck_hs {int mode; struct ck_hs_map* map; } ;


 void* CK_CC_DECONST_PTR (void const*) ;
 int CK_HS_PROBE_INSERT ;
 void const* CK_HS_TOMBSTONE ;
 int ck_hs_grow (struct ck_hs*,int) ;
 int ck_hs_map_bound_set (struct ck_hs_map*,unsigned long,unsigned long) ;
 int ck_hs_map_postinsert (struct ck_hs*,struct ck_hs_map*) ;
 void** ck_hs_map_probe (struct ck_hs*,struct ck_hs_map*,unsigned long*,void const***,unsigned long,void const*,void const**,int ,int ) ;
 int ck_hs_map_signal (struct ck_hs_map*,unsigned long) ;
 void* ck_hs_marshal (int ,void const*,unsigned long) ;
 int ck_pr_store_ptr (void const**,void const*) ;

bool
ck_hs_set(struct ck_hs *hs,
    unsigned long h,
    const void *key,
    void **previous)
{
 const void **slot, **first, *object, *insert;
 unsigned long n_probes;
 struct ck_hs_map *map;

 *previous = ((void*)0);

restart:
 map = hs->map;

 slot = ck_hs_map_probe(hs, map, &n_probes, &first, h, key, &object, map->probe_limit, CK_HS_PROBE_INSERT);
 if (slot == ((void*)0) && first == ((void*)0)) {
  if (ck_hs_grow(hs, map->capacity << 1) == 0)
   return 0;

  goto restart;
 }

 ck_hs_map_bound_set(map, h, n_probes);
 insert = ck_hs_marshal(hs->mode, key, h);

 if (first != ((void*)0)) {

  ck_pr_store_ptr(first, insert);
  if (object != ((void*)0)) {
   ck_hs_map_signal(map, h);
   ck_pr_store_ptr(slot, CK_HS_TOMBSTONE);
  }
 } else {




  ck_pr_store_ptr(slot, insert);
 }

 if (object == ((void*)0))
  ck_hs_map_postinsert(hs, map);

 *previous = CK_CC_DECONST_PTR(object);
 return 1;
}
