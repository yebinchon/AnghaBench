
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_prot_t ;
typedef int * vm_page_t ;
typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int pt2_entry_t ;
typedef int pt1_entry_t ;
typedef int pmap_t ;


 int * PHYS_TO_VM_PAGE (int) ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int PTE1_OFFSET ;
 int PTE1_RO ;
 int PTE2_RO ;
 int VM_PROT_WRITE ;
 int pmap_pte1 (int ,int) ;
 int* pmap_pte2 (int ,int) ;
 int pmap_pte2_release (int*) ;
 scalar_t__ pte1_is_link (int) ;
 scalar_t__ pte1_is_section (int) ;
 int pte1_load (int ) ;
 int pte1_pa (int) ;
 scalar_t__ pte2_is_valid (int) ;
 int pte2_load (int*) ;
 int pte2_pa (int) ;
 int vm_page_wire_mapped (int *) ;

vm_page_t
pmap_extract_and_hold(pmap_t pmap, vm_offset_t va, vm_prot_t prot)
{
 vm_paddr_t pa;
 pt1_entry_t pte1;
 pt2_entry_t pte2, *pte2p;
 vm_page_t m;

 m = ((void*)0);
 PMAP_LOCK(pmap);
 pte1 = pte1_load(pmap_pte1(pmap, va));
 if (pte1_is_section(pte1)) {
  if (!(pte1 & PTE1_RO) || !(prot & VM_PROT_WRITE)) {
   pa = pte1_pa(pte1) | (va & PTE1_OFFSET);
   m = PHYS_TO_VM_PAGE(pa);
   if (!vm_page_wire_mapped(m))
    m = ((void*)0);
  }
 } else if (pte1_is_link(pte1)) {
  pte2p = pmap_pte2(pmap, va);
  pte2 = pte2_load(pte2p);
  pmap_pte2_release(pte2p);
  if (pte2_is_valid(pte2) &&
      (!(pte2 & PTE2_RO) || !(prot & VM_PROT_WRITE))) {
   pa = pte2_pa(pte2);
   m = PHYS_TO_VM_PAGE(pa);
   if (!vm_page_wire_mapped(m))
    m = ((void*)0);
  }
 }
 PMAP_UNLOCK(pmap);
 return (m);
}
