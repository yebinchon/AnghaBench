
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int pt_entry_t ;
typedef TYPE_1__* pmap_t ;
typedef int pd_entry_t ;
struct TYPE_4__ {int * pm_l0; } ;


 int ATTR_DESCR_MASK ;
 int L0_TABLE ;
 int L1_BLOCK ;
 int L1_TABLE ;
 int L2_BLOCK ;
 int L2_TABLE ;
 int * pmap_l0 (TYPE_1__*,int ) ;
 int * pmap_l0_to_l1 (int *,int ) ;
 int * pmap_l1_to_l2 (int *,int ) ;
 int * pmap_l2_to_l3 (int *,int ) ;
 int pmap_load (int *) ;

bool
pmap_get_tables(pmap_t pmap, vm_offset_t va, pd_entry_t **l0, pd_entry_t **l1,
    pd_entry_t **l2, pt_entry_t **l3)
{
 pd_entry_t *l0p, *l1p, *l2p;

 if (pmap->pm_l0 == ((void*)0))
  return (0);

 l0p = pmap_l0(pmap, va);
 *l0 = l0p;

 if ((pmap_load(l0p) & ATTR_DESCR_MASK) != L0_TABLE)
  return (0);

 l1p = pmap_l0_to_l1(l0p, va);
 *l1 = l1p;

 if ((pmap_load(l1p) & ATTR_DESCR_MASK) == L1_BLOCK) {
  *l2 = ((void*)0);
  *l3 = ((void*)0);
  return (1);
 }

 if ((pmap_load(l1p) & ATTR_DESCR_MASK) != L1_TABLE)
  return (0);

 l2p = pmap_l1_to_l2(l1p, va);
 *l2 = l2p;

 if ((pmap_load(l2p) & ATTR_DESCR_MASK) == L2_BLOCK) {
  *l3 = ((void*)0);
  return (1);
 }

 if ((pmap_load(l2p) & ATTR_DESCR_MASK) != L2_TABLE)
  return (0);

 *l3 = pmap_l2_to_l3(l2p, va);

 return (1);
}
