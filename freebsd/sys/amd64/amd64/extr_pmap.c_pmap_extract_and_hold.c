
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_prot_t ;
typedef int * vm_page_t ;
typedef int vm_offset_t ;
typedef int pt_entry_t ;
typedef int pmap_t ;
typedef int pd_entry_t ;


 int PDRMASK ;
 int PG_FRAME ;
 int PG_PS ;
 int PG_PS_FRAME ;
 int * PHYS_TO_VM_PAGE (int) ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int VM_PROT_WRITE ;
 int* pmap_pde (int ,int) ;
 int* pmap_pde_to_pte (int*,int) ;
 int pmap_rw_bit (int ) ;
 int pmap_valid_bit (int ) ;
 int vm_page_wire_mapped (int *) ;

vm_page_t
pmap_extract_and_hold(pmap_t pmap, vm_offset_t va, vm_prot_t prot)
{
 pd_entry_t pde, *pdep;
 pt_entry_t pte, PG_RW, PG_V;
 vm_page_t m;

 m = ((void*)0);
 PG_RW = pmap_rw_bit(pmap);
 PG_V = pmap_valid_bit(pmap);

 PMAP_LOCK(pmap);
 pdep = pmap_pde(pmap, va);
 if (pdep != ((void*)0) && (pde = *pdep)) {
  if (pde & PG_PS) {
   if ((pde & PG_RW) != 0 || (prot & VM_PROT_WRITE) == 0)
    m = PHYS_TO_VM_PAGE((pde & PG_PS_FRAME) |
        (va & PDRMASK));
  } else {
   pte = *pmap_pde_to_pte(pdep, va);
   if ((pte & PG_V) != 0 &&
       ((pte & PG_RW) != 0 || (prot & VM_PROT_WRITE) == 0))
    m = PHYS_TO_VM_PAGE(pte & PG_FRAME);
  }
  if (m != ((void*)0) && !vm_page_wire_mapped(m))
   m = ((void*)0);
 }
 PMAP_UNLOCK(pmap);
 return (m);
}
