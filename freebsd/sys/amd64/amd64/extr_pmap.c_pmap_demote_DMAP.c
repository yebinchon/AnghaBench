
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_paddr_t ;
typedef int vm_offset_t ;
typedef int pdp_entry_t ;
typedef int pd_entry_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ FALSE ;
 int KASSERT (int,char*) ;
 int NBPDP ;
 int NBPDR ;
 int PG_PS ;
 int PHYS_TO_DMAP (int) ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 scalar_t__ TRUE ;
 int X86_PG_V ;
 int dmaplimit ;
 int kernel_pmap ;
 int panic (char*) ;
 int pmap_demote_pde (int ,int*,int ) ;
 int pmap_demote_pdpe (int ,int*,int ) ;
 int pmap_invalidate_page (int ,int ) ;
 int* pmap_pdpe (int ,int ) ;
 int* pmap_pdpe_to_pde (int*,int ) ;
 int powerof2 (int) ;

void
pmap_demote_DMAP(vm_paddr_t base, vm_size_t len, boolean_t invalidate)
{
 pdp_entry_t *pdpe;
 pd_entry_t *pde;
 vm_offset_t va;
 boolean_t changed;

 if (len == 0)
  return;
 KASSERT(powerof2(len), ("pmap_demote_DMAP: len is not a power of 2"));
 KASSERT((base & (len - 1)) == 0,
     ("pmap_demote_DMAP: base is not a multiple of len"));
 if (len < NBPDP && base < dmaplimit) {
  va = PHYS_TO_DMAP(base);
  changed = FALSE;
  PMAP_LOCK(kernel_pmap);
  pdpe = pmap_pdpe(kernel_pmap, va);
  if ((*pdpe & X86_PG_V) == 0)
   panic("pmap_demote_DMAP: invalid PDPE");
  if ((*pdpe & PG_PS) != 0) {
   if (!pmap_demote_pdpe(kernel_pmap, pdpe, va))
    panic("pmap_demote_DMAP: PDPE failed");
   changed = TRUE;
  }
  if (len < NBPDR) {
   pde = pmap_pdpe_to_pde(pdpe, va);
   if ((*pde & X86_PG_V) == 0)
    panic("pmap_demote_DMAP: invalid PDE");
   if ((*pde & PG_PS) != 0) {
    if (!pmap_demote_pde(kernel_pmap, pde, va))
     panic("pmap_demote_DMAP: PDE failed");
    changed = TRUE;
   }
  }
  if (changed && invalidate)
   pmap_invalidate_page(kernel_pmap, va);
  PMAP_UNLOCK(kernel_pmap);
 }
}
