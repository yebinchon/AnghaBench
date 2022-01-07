
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int pt_entry_t ;
typedef int pd_entry_t ;


 int MPASS (int) ;
 int PAGE_MASK ;
 scalar_t__ PHYS_TO_DMAP (int) ;
 int VM_OBJECT_ASSERT_WLOCKED (int ) ;
 int VM_PAGE_TO_PHYS (int ) ;
 int X86_PG_PS ;
 int X86_PG_RW ;
 int X86_PG_V ;
 int pg_nx ;
 int pmap_pte_index (int ) ;
 int pmap_pti_alloc_page () ;
 int pmap_pti_free_page (int ) ;
 int* pmap_pti_pde (int ) ;
 int pmap_pti_wire_pte (int*) ;
 int pti_obj ;

__attribute__((used)) static pt_entry_t *
pmap_pti_pte(vm_offset_t va, bool *unwire_pde)
{
 pd_entry_t *pde;
 pt_entry_t *pte;
 vm_page_t m;
 vm_paddr_t mphys;

 VM_OBJECT_ASSERT_WLOCKED(pti_obj);

 pde = pmap_pti_pde(va);
 if (unwire_pde != ((void*)0)) {
  *unwire_pde = 1;
  pmap_pti_wire_pte(pde);
 }
 if (*pde == 0) {
  m = pmap_pti_alloc_page();
  if (*pde != 0) {
   pmap_pti_free_page(m);
   MPASS((*pde & X86_PG_PS) == 0);
   mphys = *pde & ~(PAGE_MASK | pg_nx);
  } else {
   mphys = VM_PAGE_TO_PHYS(m);
   *pde = mphys | X86_PG_RW | X86_PG_V;
   if (unwire_pde != ((void*)0))
    *unwire_pde = 0;
  }
 } else {
  MPASS((*pde & X86_PG_PS) == 0);
  mphys = *pde & ~(PAGE_MASK | pg_nx);
 }

 pte = (pt_entry_t *)PHYS_TO_DMAP(mphys);
 pte += pmap_pte_index(va);

 return (pte);
}
