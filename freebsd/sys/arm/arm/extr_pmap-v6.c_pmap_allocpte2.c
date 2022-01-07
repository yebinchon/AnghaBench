
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int * vm_page_t ;
typedef int vm_offset_t ;
typedef int u_int ;
typedef int pt1_entry_t ;
typedef TYPE_1__* pmap_t ;
struct TYPE_5__ {int * pm_pt1; } ;


 int * PHYS_TO_VM_PAGE (int ) ;
 int PMAP_ENTER_NOSLEEP ;
 int * _pmap_allocpte2 (TYPE_1__*,int ,int) ;
 int pmap_demote_pte1 (TYPE_1__*,int *,int ) ;
 int pt2_wirecount_inc (int *,int) ;
 int pte1_index (int ) ;
 scalar_t__ pte1_is_link (int ) ;
 scalar_t__ pte1_is_section (int ) ;
 int pte1_link_pa (int ) ;
 int pte1_load (int *) ;

__attribute__((used)) static vm_page_t
pmap_allocpte2(pmap_t pmap, vm_offset_t va, u_int flags)
{
 u_int pte1_idx;
 pt1_entry_t *pte1p, pte1;
 vm_page_t m;

 pte1_idx = pte1_index(va);
retry:
 pte1p = pmap->pm_pt1 + pte1_idx;
 pte1 = pte1_load(pte1p);





 if (pte1_is_section(pte1)) {
  (void)pmap_demote_pte1(pmap, pte1p, va);






  pte1 = pte1_load(pte1p);
 }





 if (pte1_is_link(pte1)) {
  m = PHYS_TO_VM_PAGE(pte1_link_pa(pte1));
  pt2_wirecount_inc(m, pte1_idx);
 } else {




  m = _pmap_allocpte2(pmap, va, flags);
  if (m == ((void*)0) && (flags & PMAP_ENTER_NOSLEEP) == 0)
   goto retry;
 }

 return (m);
}
