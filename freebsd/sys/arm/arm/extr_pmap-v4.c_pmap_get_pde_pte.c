
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef size_t u_short ;
struct l2_dtable {TYPE_2__* l2_bucket; } ;
typedef int pt_entry_t ;
typedef TYPE_3__* pmap_t ;
typedef int pd_entry_t ;
typedef int boolean_t ;
struct TYPE_7__ {struct l2_dtable** pm_l2; TYPE_1__* pm_l1; } ;
struct TYPE_6__ {int * l2b_kva; } ;
struct TYPE_5__ {int * l1_kva; } ;


 int FALSE ;
 size_t L1_IDX (int ) ;
 size_t L2_BUCKET (size_t) ;
 size_t L2_IDX (size_t) ;
 int TRUE ;
 scalar_t__ l1pte_section_p (int ) ;
 size_t l2pte_index (int ) ;

boolean_t
pmap_get_pde_pte(pmap_t pm, vm_offset_t va, pd_entry_t **pdp, pt_entry_t **ptp)
{
 struct l2_dtable *l2;
 pd_entry_t *pl1pd, l1pd;
 pt_entry_t *ptep;
 u_short l1idx;

 if (pm->pm_l1 == ((void*)0))
  return (FALSE);

 l1idx = L1_IDX(va);
 *pdp = pl1pd = &pm->pm_l1->l1_kva[l1idx];
 l1pd = *pl1pd;

 if (l1pte_section_p(l1pd)) {
  *ptp = ((void*)0);
  return (TRUE);
 }

 if (pm->pm_l2 == ((void*)0))
  return (FALSE);

 l2 = pm->pm_l2[L2_IDX(l1idx)];

 if (l2 == ((void*)0) ||
     (ptep = l2->l2_bucket[L2_BUCKET(l1idx)].l2b_kva) == ((void*)0)) {
  return (FALSE);
 }

 *ptp = &ptep[l2pte_index(va)];
 return (TRUE);
}
