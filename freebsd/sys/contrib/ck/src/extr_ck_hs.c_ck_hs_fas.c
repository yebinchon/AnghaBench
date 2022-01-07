
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_hs_map {int dummy; } ;
struct ck_hs {int mode; struct ck_hs_map* map; } ;


 void* CK_CC_DECONST_PTR (void const*) ;
 int CK_HS_PROBE ;
 void const* CK_HS_TOMBSTONE ;
 int ck_hs_map_bound_get (struct ck_hs_map*,unsigned long) ;
 void** ck_hs_map_probe (struct ck_hs*,struct ck_hs_map*,unsigned long*,void const***,unsigned long,void const*,void const**,int ,int ) ;
 int ck_hs_map_signal (struct ck_hs_map*,unsigned long) ;
 void* ck_hs_marshal (int ,void const*,unsigned long) ;
 int ck_pr_store_ptr (void const**,void const*) ;

bool
ck_hs_fas(struct ck_hs *hs,
    unsigned long h,
    const void *key,
    void **previous)
{
 const void **slot, **first, *object, *insert;
 struct ck_hs_map *map = hs->map;
 unsigned long n_probes;

 *previous = ((void*)0);
 slot = ck_hs_map_probe(hs, map, &n_probes, &first, h, key, &object,
     ck_hs_map_bound_get(map, h), CK_HS_PROBE);


 if (object == ((void*)0))
  return 0;

 insert = ck_hs_marshal(hs->mode, key, h);

 if (first != ((void*)0)) {
  ck_pr_store_ptr(first, insert);
  ck_hs_map_signal(map, h);
  ck_pr_store_ptr(slot, CK_HS_TOMBSTONE);
 } else {
  ck_pr_store_ptr(slot, insert);
 }

 *previous = CK_CC_DECONST_PTR(object);
 return 1;
}
