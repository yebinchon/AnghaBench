
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t u_short ;
typedef scalar_t__ u_int ;
struct l2_dtable {scalar_t__ l2_occupancy; } ;
struct l2_bucket {scalar_t__ l2b_occupancy; size_t l2b_l1idx; int * l2b_kva; } ;
typedef int pt_entry_t ;
typedef TYPE_2__* pmap_t ;
typedef int pd_entry_t ;
struct TYPE_7__ {struct l2_dtable** pm_l2; int pm_domain; TYPE_1__* pm_l1; } ;
struct TYPE_6__ {int* l1_kva; } ;


 int L1_C_DOM (int ) ;
 int L1_C_DOM_MASK ;
 int L1_TYPE_C ;
 int L1_TYPE_MASK ;
 size_t L2_IDX (size_t) ;
 int PTE_SYNC (int*) ;
 TYPE_2__* kernel_pmap ;
 int l2table_zone ;
 int pmap_free_l2_ptp (int,...) ;
 int pmap_is_current (TYPE_2__*) ;
 int uma_zfree (int ,struct l2_dtable*) ;

__attribute__((used)) static void
pmap_free_l2_bucket(pmap_t pm, struct l2_bucket *l2b, u_int count)
{
 struct l2_dtable *l2;
 pd_entry_t *pl1pd, l1pd;
 pt_entry_t *ptep;
 u_short l1idx;






 l2b->l2b_occupancy -= count;
 if (l2b->l2b_occupancy > 0 || pm == kernel_pmap)
  return;






 l1idx = l2b->l2b_l1idx;
 ptep = l2b->l2b_kva;
 l2b->l2b_kva = ((void*)0);

 pl1pd = &pm->pm_l1->l1_kva[l1idx];





 l1pd = *pl1pd & (L1_TYPE_MASK | L1_C_DOM_MASK);
 if (l1pd == (L1_C_DOM(pm->pm_domain) | L1_TYPE_C)) {
  *pl1pd = 0;
  PTE_SYNC(pl1pd);
 }





 pmap_free_l2_ptp(ptep);







 l2 = pm->pm_l2[L2_IDX(l1idx)];
 if (--l2->l2_occupancy > 0)
  return;






 pm->pm_l2[L2_IDX(l1idx)] = ((void*)0);
 uma_zfree(l2table_zone, l2);
}
