
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int uintmax_t ;
typedef int pt_entry_t ;
typedef int pml4_entry_t ;
typedef TYPE_2__* pmap_t ;
typedef int pdp_entry_t ;
typedef int pd_entry_t ;
struct TYPE_9__ {scalar_t__ wired_count; } ;
struct TYPE_10__ {TYPE_1__ pm_stats; } ;


 int NBPDP ;
 int NBPDR ;
 int NBPML4 ;
 int PAGE_SIZE ;
 int PDPMASK ;
 int PDRMASK ;
 int PG_PS ;
 int PG_W ;
 int PMAP_LOCK (TYPE_2__*) ;
 int PMAP_UNLOCK (TYPE_2__*) ;
 int PML4MASK ;
 int atomic_clear_long (int*,int) ;
 int panic (char*,...) ;
 int pmap_demote_pde (TYPE_2__*,int*,int) ;
 int* pmap_pde_to_pte (int*,int) ;
 int* pmap_pdpe_to_pde (int*,int) ;
 int* pmap_pml4e (TYPE_2__*,int) ;
 int* pmap_pml4e_to_pdpe (int*,int) ;
 int pmap_valid_bit (TYPE_2__*) ;

void
pmap_unwire(pmap_t pmap, vm_offset_t sva, vm_offset_t eva)
{
 vm_offset_t va_next;
 pml4_entry_t *pml4e;
 pdp_entry_t *pdpe;
 pd_entry_t *pde;
 pt_entry_t *pte, PG_V;

 PG_V = pmap_valid_bit(pmap);
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
  if ((*pde & PG_V) == 0)
   continue;
  if ((*pde & PG_PS) != 0) {
   if ((*pde & PG_W) == 0)
    panic("pmap_unwire: pde %#jx is missing PG_W",
        (uintmax_t)*pde);





   if (sva + NBPDR == va_next && eva >= va_next) {
    atomic_clear_long(pde, PG_W);
    pmap->pm_stats.wired_count -= NBPDR /
        PAGE_SIZE;
    continue;
   } else if (!pmap_demote_pde(pmap, pde, sva))
    panic("pmap_unwire: demotion failed");
  }
  if (va_next > eva)
   va_next = eva;
  for (pte = pmap_pde_to_pte(pde, sva); sva != va_next; pte++,
      sva += PAGE_SIZE) {
   if ((*pte & PG_V) == 0)
    continue;
   if ((*pte & PG_W) == 0)
    panic("pmap_unwire: pte %#jx is missing PG_W",
        (uintmax_t)*pte);






   atomic_clear_long(pte, PG_W);
   pmap->pm_stats.wired_count--;
  }
 }
 PMAP_UNLOCK(pmap);
}
