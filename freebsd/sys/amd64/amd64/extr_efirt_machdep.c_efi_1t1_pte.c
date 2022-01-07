
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t vm_pindex_t ;
typedef int vm_page_t ;
typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef scalar_t__ pt_entry_t ;
typedef int pml4_entry_t ;
typedef int pdp_entry_t ;
typedef int pd_entry_t ;


 int KASSERT (int,char*) ;
 int PAGE_MASK ;
 scalar_t__ PHYS_TO_DMAP (int) ;
 int VM_PAGE_TO_PHYS (int ) ;
 int X86_PG_RW ;
 int X86_PG_V ;
 int efi_1t1_page () ;
 int* efi_pml4 ;
 size_t pmap_pde_index (int ) ;
 size_t pmap_pdpe_index (int ) ;
 size_t pmap_pml4e_index (int ) ;
 int pmap_pte_index (int ) ;

__attribute__((used)) static pt_entry_t *
efi_1t1_pte(vm_offset_t va)
{
 pml4_entry_t *pml4e;
 pdp_entry_t *pdpe;
 pd_entry_t *pde;
 pt_entry_t *pte;
 vm_page_t m;
 vm_pindex_t pml4_idx, pdp_idx, pd_idx;
 vm_paddr_t mphys;

 pml4_idx = pmap_pml4e_index(va);
 pml4e = &efi_pml4[pml4_idx];
 if (*pml4e == 0) {
  m = efi_1t1_page();
  mphys = VM_PAGE_TO_PHYS(m);
  *pml4e = mphys | X86_PG_RW | X86_PG_V;
 } else {
  mphys = *pml4e & ~PAGE_MASK;
 }

 pdpe = (pdp_entry_t *)PHYS_TO_DMAP(mphys);
 pdp_idx = pmap_pdpe_index(va);
 pdpe += pdp_idx;
 if (*pdpe == 0) {
  m = efi_1t1_page();
  mphys = VM_PAGE_TO_PHYS(m);
  *pdpe = mphys | X86_PG_RW | X86_PG_V;
 } else {
  mphys = *pdpe & ~PAGE_MASK;
 }

 pde = (pd_entry_t *)PHYS_TO_DMAP(mphys);
 pd_idx = pmap_pde_index(va);
 pde += pd_idx;
 if (*pde == 0) {
  m = efi_1t1_page();
  mphys = VM_PAGE_TO_PHYS(m);
  *pde = mphys | X86_PG_RW | X86_PG_V;
 } else {
  mphys = *pde & ~PAGE_MASK;
 }

 pte = (pt_entry_t *)PHYS_TO_DMAP(mphys);
 pte += pmap_pte_index(va);
 KASSERT(*pte == 0, ("va %#jx *pt %#jx", va, *pte));

 return (pte);
}
