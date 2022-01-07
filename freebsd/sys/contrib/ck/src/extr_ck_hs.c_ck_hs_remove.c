
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_hs_map {int tombstones; int n_entries; } ;
struct ck_hs {struct ck_hs_map* map; } ;


 void* CK_CC_DECONST_PTR (void const*) ;
 int CK_HS_PROBE ;
 int CK_HS_TOMBSTONE ;
 int ck_hs_map_bound_get (struct ck_hs_map*,unsigned long) ;
 void** ck_hs_map_probe (struct ck_hs*,struct ck_hs_map*,unsigned long*,void const***,unsigned long,void const*,void const**,int ,int ) ;
 int ck_pr_store_ptr (void const**,int ) ;

void *
ck_hs_remove(struct ck_hs *hs,
    unsigned long h,
    const void *key)
{
 const void **slot, **first, *object;
 struct ck_hs_map *map = hs->map;
 unsigned long n_probes;

 slot = ck_hs_map_probe(hs, map, &n_probes, &first, h, key, &object,
     ck_hs_map_bound_get(map, h), CK_HS_PROBE);
 if (object == ((void*)0))
  return ((void*)0);

 ck_pr_store_ptr(slot, CK_HS_TOMBSTONE);
 map->n_entries--;
 map->tombstones++;
 return CK_CC_DECONST_PTR(object);
}
