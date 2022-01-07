
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_rhs_map {unsigned int* generation; int (* probe_func ) (struct ck_rhs*,struct ck_rhs_map*,unsigned long*,long*,unsigned long,void const*,void const**,unsigned int,int ) ;} ;
struct ck_rhs {int map; } ;


 void* CK_CC_DECONST_PTR (void const*) ;
 unsigned long CK_RHS_G_MASK ;
 int CK_RHS_PROBE_NO_RH ;
 int ck_pr_fence_load () ;
 struct ck_rhs_map* ck_pr_load_ptr (int *) ;
 unsigned int ck_pr_load_uint (unsigned int*) ;
 unsigned int ck_rhs_map_bound_get (struct ck_rhs_map*,unsigned long) ;
 int stub1 (struct ck_rhs*,struct ck_rhs_map*,unsigned long*,long*,unsigned long,void const*,void const**,unsigned int,int ) ;

void *
ck_rhs_get(struct ck_rhs *hs,
    unsigned long h,
    const void *key)
{
 long first;
 const void *object;
 struct ck_rhs_map *map;
 unsigned long n_probes;
 unsigned int g, g_p, probe;
 unsigned int *generation;

 do {
  map = ck_pr_load_ptr(&hs->map);
  generation = &map->generation[h & CK_RHS_G_MASK];
  g = ck_pr_load_uint(generation);
  probe = ck_rhs_map_bound_get(map, h);
  ck_pr_fence_load();

  first = -1;
  map->probe_func(hs, map, &n_probes, &first, h, key, &object, probe, CK_RHS_PROBE_NO_RH);

  ck_pr_fence_load();
  g_p = ck_pr_load_uint(generation);
 } while (g != g_p);

 return CK_CC_DECONST_PTR(object);
}
