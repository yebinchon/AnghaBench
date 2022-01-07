
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_rhs_map {long (* probe_func ) (struct ck_rhs*,struct ck_rhs_map*,unsigned long*,long*,unsigned long,void const*,void const**,int ,int ) ;int n_entries; } ;
struct ck_rhs {struct ck_rhs_map* map; } ;


 void* CK_CC_DECONST_PTR (void const*) ;
 int CK_RHS_PROBE_NO_RH ;
 int ck_rhs_do_backward_shift_delete (struct ck_rhs*,long) ;
 int ck_rhs_map_bound_get (struct ck_rhs_map*,unsigned long) ;
 long stub1 (struct ck_rhs*,struct ck_rhs_map*,unsigned long*,long*,unsigned long,void const*,void const**,int ,int ) ;

void *
ck_rhs_remove(struct ck_rhs *hs,
    unsigned long h,
    const void *key)
{
 long slot, first;
 const void *object;
 struct ck_rhs_map *map = hs->map;
 unsigned long n_probes;

 slot = map->probe_func(hs, map, &n_probes, &first, h, key, &object,
     ck_rhs_map_bound_get(map, h), CK_RHS_PROBE_NO_RH);
 if (object == ((void*)0))
  return ((void*)0);

 map->n_entries--;
 ck_rhs_do_backward_shift_delete(hs, slot);
 return CK_CC_DECONST_PTR(object);
}
