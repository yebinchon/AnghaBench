
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_pindex_t ;
typedef int vm_page_t ;
typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int pdp_entry_t ;
typedef int pd_entry_t ;


 int MPASS (int) ;
 int PAGE_MASK ;
 scalar_t__ PHYS_TO_DMAP (int) ;
 int VM_OBJECT_ASSERT_WLOCKED (int ) ;
 int VM_PAGE_TO_PHYS (int ) ;
 int X86_PG_PS ;
 int X86_PG_RW ;
 int X86_PG_V ;
 int pmap_pde_index (int ) ;
 int pmap_pti_alloc_page () ;
 int pmap_pti_free_page (int ) ;
 int* pmap_pti_pdpe (int ) ;
 int pti_obj ;

__attribute__((used)) static pd_entry_t *
pmap_pti_pde(vm_offset_t va)
{
 pdp_entry_t *pdpe;
 pd_entry_t *pde;
 vm_page_t m;
 vm_pindex_t pd_idx;
 vm_paddr_t mphys;

 VM_OBJECT_ASSERT_WLOCKED(pti_obj);

 pdpe = pmap_pti_pdpe(va);
 if (*pdpe == 0) {
  m = pmap_pti_alloc_page();
  if (*pdpe != 0) {
   pmap_pti_free_page(m);
   MPASS((*pdpe & X86_PG_PS) == 0);
   mphys = *pdpe & ~PAGE_MASK;
  } else {
   mphys = VM_PAGE_TO_PHYS(m);
   *pdpe = mphys | X86_PG_RW | X86_PG_V;
  }
 } else {
  MPASS((*pdpe & X86_PG_PS) == 0);
  mphys = *pdpe & ~PAGE_MASK;
 }

 pde = (pd_entry_t *)PHYS_TO_DMAP(mphys);
 pd_idx = pmap_pde_index(va);
 pde += pd_idx;
 return (pde);
}
