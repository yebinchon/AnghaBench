
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
typedef int boolean_t ;


 int FALSE ;
 int KASSERT (int,char*) ;
 int MA_OWNED ;
 size_t NBPDR ;
 size_t PAGE_SIZE ;
 int PDRMASK ;
 int PG_MANAGED ;
 int PG_PROMOTED ;
 int PG_PS_FRAME ;
 int * PHYS_TO_VM_PAGE (int) ;
 int PMAP_LOCK_ASSERT (int ,int ) ;
 int TRUE ;
 int VM_PROT_EXECUTE ;
 int VM_PROT_WRITE ;
 int atomic_cmpset_long (int*,int,int) ;
 int kernel_pmap ;
 int pg_nx ;
 int pmap_global_bit (int ) ;
 int pmap_invalidate_pde_page (int ,int,int) ;
 int pmap_modified_bit (int ) ;
 int pmap_rw_bit (int ) ;
 int vm_page_dirty (int *) ;

__attribute__((used)) static boolean_t
pmap_protect_pde(pmap_t pmap, pd_entry_t *pde, vm_offset_t sva, vm_prot_t prot)
{
 pd_entry_t newpde, oldpde;
 vm_page_t m, mt;
 boolean_t anychanged;
 pt_entry_t PG_G, PG_M, PG_RW;

 PG_G = pmap_global_bit(pmap);
 PG_M = pmap_modified_bit(pmap);
 PG_RW = pmap_rw_bit(pmap);

 PMAP_LOCK_ASSERT(pmap, MA_OWNED);
 KASSERT((sva & PDRMASK) == 0,
     ("pmap_protect_pde: sva is not 2mpage aligned"));
 anychanged = FALSE;
retry:
 oldpde = newpde = *pde;
 if ((prot & VM_PROT_WRITE) == 0) {
  if ((oldpde & (PG_MANAGED | PG_M | PG_RW)) ==
      (PG_MANAGED | PG_M | PG_RW)) {
   m = PHYS_TO_VM_PAGE(oldpde & PG_PS_FRAME);
   for (mt = m; mt < &m[NBPDR / PAGE_SIZE]; mt++)
    vm_page_dirty(mt);
  }
  newpde &= ~(PG_RW | PG_M);
 }
 if ((prot & VM_PROT_EXECUTE) == 0)
  newpde |= pg_nx;
 if (newpde != oldpde) {





  if (!atomic_cmpset_long(pde, oldpde, newpde & ~PG_PROMOTED))
   goto retry;
  if ((oldpde & PG_G) != 0)
   pmap_invalidate_pde_page(kernel_pmap, sva, oldpde);
  else
   anychanged = TRUE;
 }
 return (anychanged);
}
