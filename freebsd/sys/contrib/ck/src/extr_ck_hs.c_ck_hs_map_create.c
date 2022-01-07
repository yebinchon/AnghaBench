
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ck_hs_map {unsigned long size; unsigned int probe_limit; unsigned long capacity; unsigned long mask; int * probe_bound; int * generation; int * entries; int n_entries; int step; scalar_t__ probe_maximum; } ;
struct ck_hs {int mode; TYPE_1__* m; } ;
struct TYPE_2__ {struct ck_hs_map* (* malloc ) (unsigned long) ;} ;
typedef int CK_HS_WORD ;


 int CK_HS_MODE_DELETE ;
 unsigned long CK_HS_PROBE_L1 ;
 int CK_HS_PROBE_L1_DEFAULT ;
 int CK_HS_PROBE_L1_SHIFT ;
 int CK_MD_CACHELINE ;
 unsigned long UINT_MAX ;
 int ck_cc_ffsl (unsigned long) ;
 unsigned long ck_internal_max (unsigned long,int ) ;
 unsigned long ck_internal_power_2 (unsigned long) ;
 int ck_pr_fence_store () ;
 int memset (int *,int ,unsigned long) ;
 struct ck_hs_map* stub1 (unsigned long) ;

__attribute__((used)) static struct ck_hs_map *
ck_hs_map_create(struct ck_hs *hs, unsigned long entries)
{
 struct ck_hs_map *map;
 unsigned long size, n_entries, prefix, limit;

 n_entries = ck_internal_power_2(entries);
 if (n_entries < CK_HS_PROBE_L1)
  n_entries = CK_HS_PROBE_L1;

 size = sizeof(struct ck_hs_map) + (sizeof(void *) * n_entries + CK_MD_CACHELINE - 1);

 if (hs->mode & CK_HS_MODE_DELETE) {
  prefix = sizeof(CK_HS_WORD) * n_entries;
  size += prefix;
 } else {
  prefix = 0;
 }

 map = hs->m->malloc(size);
 if (map == ((void*)0))
  return ((void*)0);

 map->size = size;


 limit = ck_internal_max(n_entries >> (CK_HS_PROBE_L1_SHIFT + 2), CK_HS_PROBE_L1_DEFAULT);
 if (limit > UINT_MAX)
  limit = UINT_MAX;

 map->probe_limit = (unsigned int)limit;
 map->probe_maximum = 0;
 map->capacity = n_entries;
 map->step = ck_cc_ffsl(n_entries);
 map->mask = n_entries - 1;
 map->n_entries = 0;


 map->entries = (void *)(((uintptr_t)&map[1] + prefix +
     CK_MD_CACHELINE - 1) & ~(CK_MD_CACHELINE - 1));

 memset(map->entries, 0, sizeof(void *) * n_entries);
 memset(map->generation, 0, sizeof map->generation);

 if (hs->mode & CK_HS_MODE_DELETE) {
  map->probe_bound = (CK_HS_WORD *)&map[1];
  memset(map->probe_bound, 0, prefix);
 } else {
  map->probe_bound = ((void*)0);
 }


 ck_pr_fence_store();
 return map;
}
