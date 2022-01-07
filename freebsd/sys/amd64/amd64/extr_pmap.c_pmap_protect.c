
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_prot_t ;
typedef int vm_page_t ;
typedef int vm_offset_t ;
typedef int pt_entry_t ;
typedef int pml4_entry_t ;
typedef int pmap_t ;
typedef int pdp_entry_t ;
typedef int pd_entry_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ FALSE ;
 int KASSERT (int,char*) ;
 int NBPDP ;
 int NBPDR ;
 int NBPML4 ;
 scalar_t__ PAGE_SIZE ;
 int PDPMASK ;
 int PDRMASK ;
 int PG_FRAME ;
 int PG_MANAGED ;
 int PG_PS ;
 int PHYS_TO_VM_PAGE (int) ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int PML4MASK ;
 scalar_t__ TRUE ;
 int VM_PROT_ALL ;
 int VM_PROT_EXECUTE ;
 int VM_PROT_NONE ;
 int VM_PROT_WRITE ;
 int atomic_cmpset_long (int*,int,int) ;
 int pg_nx ;
 int pmap_demote_pde (int ,int*,int) ;
 int pmap_global_bit (int ) ;
 int pmap_invalidate_all (int ) ;
 int pmap_invalidate_page (int ,int) ;
 int pmap_modified_bit (int ) ;
 int* pmap_pde_to_pte (int*,int) ;
 int* pmap_pdpe_to_pde (int*,int) ;
 int* pmap_pml4e (int ,int) ;
 int* pmap_pml4e_to_pdpe (int*,int) ;
 scalar_t__ pmap_protect_pde (int ,int*,int,int) ;
 int pmap_remove (int ,int,int) ;
 int pmap_rw_bit (int ) ;
 int pmap_valid_bit (int ) ;
 int vm_page_dirty (int ) ;

void
pmap_protect(pmap_t pmap, vm_offset_t sva, vm_offset_t eva, vm_prot_t prot)
{
 vm_offset_t va_next;
 pml4_entry_t *pml4e;
 pdp_entry_t *pdpe;
 pd_entry_t ptpaddr, *pde;
 pt_entry_t *pte, PG_G, PG_M, PG_RW, PG_V;
 boolean_t anychanged;

 KASSERT((prot & ~VM_PROT_ALL) == 0, ("invalid prot %x", prot));
 if (prot == VM_PROT_NONE) {
  pmap_remove(pmap, sva, eva);
  return;
 }

 if ((prot & (VM_PROT_WRITE|VM_PROT_EXECUTE)) ==
     (VM_PROT_WRITE|VM_PROT_EXECUTE))
  return;

 PG_G = pmap_global_bit(pmap);
 PG_M = pmap_modified_bit(pmap);
 PG_V = pmap_valid_bit(pmap);
 PG_RW = pmap_rw_bit(pmap);
 anychanged = FALSE;
 PMAP_LOCK(pmap);
 for (; sva < eva; sva = va_next) {

  pml4e = pmap_pml4e(pmap, sva);
  if ((*pml4e & PG_V) == 0) {
   va_next = (sva + NBPML4) & ~PML4MASK;
   if (va_next < sva)
    va_next = eva;
   continue;
  }

  pdpe = pmap_pml4e_to_pdpe(pml4e, sva);
  if ((*pdpe & PG_V) == 0) {
   va_next = (sva + NBPDP) & ~PDPMASK;
   if (va_next < sva)
    va_next = eva;
   continue;
  }

  va_next = (sva + NBPDR) & ~PDRMASK;
  if (va_next < sva)
   va_next = eva;

  pde = pmap_pdpe_to_pde(pdpe, sva);
  ptpaddr = *pde;




  if (ptpaddr == 0)
   continue;




  if ((ptpaddr & PG_PS) != 0) {




   if (sva + NBPDR == va_next && eva >= va_next) {




    if (pmap_protect_pde(pmap, pde, sva, prot))
     anychanged = TRUE;
    continue;
   } else if (!pmap_demote_pde(pmap, pde, sva)) {



    continue;
   }
  }

  if (va_next > eva)
   va_next = eva;

  for (pte = pmap_pde_to_pte(pde, sva); sva != va_next; pte++,
      sva += PAGE_SIZE) {
   pt_entry_t obits, pbits;
   vm_page_t m;

retry:
   obits = pbits = *pte;
   if ((pbits & PG_V) == 0)
    continue;

   if ((prot & VM_PROT_WRITE) == 0) {
    if ((pbits & (PG_MANAGED | PG_M | PG_RW)) ==
        (PG_MANAGED | PG_M | PG_RW)) {
     m = PHYS_TO_VM_PAGE(pbits & PG_FRAME);
     vm_page_dirty(m);
    }
    pbits &= ~(PG_RW | PG_M);
   }
   if ((prot & VM_PROT_EXECUTE) == 0)
    pbits |= pg_nx;

   if (pbits != obits) {
    if (!atomic_cmpset_long(pte, obits, pbits))
     goto retry;
    if (obits & PG_G)
     pmap_invalidate_page(pmap, sva);
    else
     anychanged = TRUE;
   }
  }
 }
 if (anychanged)
  pmap_invalidate_all(pmap);
 PMAP_UNLOCK(pmap);
}
