
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * descs; int * entries; } ;
struct TYPE_4__ {TYPE_1__ no_entries; } ;
struct ck_rhs_map {unsigned long mask; TYPE_2__ entries; } ;
struct ck_rhs_entry_desc {int in_rh; unsigned long probes; } ;
struct ck_rhs {int mode; int (* compare ) (void const*,void const*) ;} ;
typedef enum ck_rhs_probe_behavior { ____Placeholder_ck_rhs_probe_behavior } ck_rhs_probe_behavior ;


 uintptr_t CK_MD_VMA_BITS ;
 void const* CK_RHS_EMPTY ;
 unsigned long CK_RHS_KEY_MASK ;
 int CK_RHS_MODE_OBJECT ;
 int CK_RHS_PROBE_NO_RH ;
 int CK_RHS_PROBE_RH ;
 int CK_RHS_PROBE_ROBIN_HOOD ;
 void* CK_RHS_VMA (void const*) ;
 void* ck_pr_load_ptr (int *) ;
 unsigned long ck_rhs_map_probe_next (struct ck_rhs_map*,unsigned long,unsigned long) ;
 int stub1 (void const*,void const*) ;

__attribute__((used)) static long
ck_rhs_map_probe_rm(struct ck_rhs *hs,
    struct ck_rhs_map *map,
    unsigned long *n_probes,
    long *priority,
    unsigned long h,
    const void *key,
    const void **object,
    unsigned long probe_limit,
    enum ck_rhs_probe_behavior behavior)
{
 const void *k;
 const void *compare;
 long pr = -1;
 unsigned long offset, probes, opl;
 compare = key;

  *object = ((void*)0);
 if (behavior != CK_RHS_PROBE_ROBIN_HOOD) {
  probes = 0;
  offset = h & map->mask;
 } else {

  probes = *n_probes;
  offset = ck_rhs_map_probe_next(map, *priority,
      probes);
 }
 opl = probe_limit;

 for (;;) {
  if (probes++ == probe_limit) {
   if (probe_limit == opl || pr != -1) {
    k = CK_RHS_EMPTY;
    goto leave;
   }




   probe_limit = opl;
  }
  k = ck_pr_load_ptr(&map->entries.no_entries.entries[offset]);
  if (k == CK_RHS_EMPTY)
   goto leave;

  if (behavior != CK_RHS_PROBE_NO_RH) {
   struct ck_rhs_entry_desc *desc = (void *)&map->entries.no_entries.descs[offset];

   if (pr == -1 &&
       desc->in_rh == 0 && desc->probes < probes) {
    pr = offset;
    *n_probes = probes;

    if (behavior == CK_RHS_PROBE_RH ||
        behavior == CK_RHS_PROBE_ROBIN_HOOD) {
     k = CK_RHS_EMPTY;
     goto leave;
    }
   }
  }

  if (behavior != CK_RHS_PROBE_ROBIN_HOOD) {
   if (k == compare)
    goto leave;

   if (hs->compare == ((void*)0)) {
    offset = ck_rhs_map_probe_next(map, offset, probes);
    continue;
   }

   if (hs->compare(k, key) == 1)
    goto leave;
  }
  offset = ck_rhs_map_probe_next(map, offset, probes);
 }
leave:
 if (probes > probe_limit) {
  offset = -1;
 } else {
  *object = k;
 }

 if (pr == -1)
  *n_probes = probes;

 *priority = pr;
 return offset;
}
