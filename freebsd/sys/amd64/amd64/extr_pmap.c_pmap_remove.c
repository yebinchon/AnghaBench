
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int vm_offset_t ;
struct spglist {int dummy; } ;
struct rwlock {int dummy; } ;
typedef int pt_entry_t ;
typedef int pml4_entry_t ;
typedef TYPE_2__* pmap_t ;
typedef int pdp_entry_t ;
typedef int pd_entry_t ;
struct TYPE_16__ {scalar_t__ resident_count; } ;
struct TYPE_17__ {TYPE_1__ pm_stats; } ;


 int NBPDP ;
 int NBPDR ;
 int NBPML4 ;
 int PAGE_SIZE ;
 int PDPMASK ;
 int PDRMASK ;
 int PG_PS ;
 int PMAP_LOCK (TYPE_2__*) ;
 int PMAP_UNLOCK (TYPE_2__*) ;
 int PML4MASK ;
 int SLIST_INIT (struct spglist*) ;
 int pmap_delayed_invl_finish () ;
 int pmap_delayed_invl_start () ;
 int pmap_demote_pde_locked (TYPE_2__*,int*,int,struct rwlock**) ;
 int pmap_global_bit (TYPE_2__*) ;
 int pmap_invalidate_all (TYPE_2__*) ;
 int* pmap_pde (TYPE_2__*,int) ;
 int* pmap_pdpe_to_pde (int*,int) ;
 int pmap_pkru_on_remove (TYPE_2__*,int,int) ;
 int* pmap_pml4e (TYPE_2__*,int) ;
 int* pmap_pml4e_to_pdpe (int*,int) ;
 int pmap_remove_page (TYPE_2__*,int,int*,struct spglist*) ;
 int pmap_remove_pde (TYPE_2__*,int*,int,struct spglist*,struct rwlock**) ;
 scalar_t__ pmap_remove_ptes (TYPE_2__*,int,int,int*,struct spglist*,struct rwlock**) ;
 int pmap_valid_bit (TYPE_2__*) ;
 int rw_wunlock (struct rwlock*) ;
 int vm_page_free_pages_toq (struct spglist*,int) ;

void
pmap_remove(pmap_t pmap, vm_offset_t sva, vm_offset_t eva)
{
 struct rwlock *lock;
 vm_offset_t va_next;
 pml4_entry_t *pml4e;
 pdp_entry_t *pdpe;
 pd_entry_t ptpaddr, *pde;
 pt_entry_t PG_G, PG_V;
 struct spglist free;
 int anyvalid;

 PG_G = pmap_global_bit(pmap);
 PG_V = pmap_valid_bit(pmap);




 if (pmap->pm_stats.resident_count == 0)
  return;

 anyvalid = 0;
 SLIST_INIT(&free);

 pmap_delayed_invl_start();
 PMAP_LOCK(pmap);
 pmap_pkru_on_remove(pmap, sva, eva);






 if (sva + PAGE_SIZE == eva) {
  pde = pmap_pde(pmap, sva);
  if (pde && (*pde & PG_PS) == 0) {
   pmap_remove_page(pmap, sva, pde, &free);
   goto out;
  }
 }

 lock = ((void*)0);
 for (; sva < eva; sva = va_next) {

  if (pmap->pm_stats.resident_count == 0)
   break;

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




    if ((ptpaddr & PG_G) == 0)
     anyvalid = 1;
    pmap_remove_pde(pmap, pde, sva, &free, &lock);
    continue;
   } else if (!pmap_demote_pde_locked(pmap, pde, sva,
       &lock)) {

    continue;
   } else
    ptpaddr = *pde;
  }






  if (va_next > eva)
   va_next = eva;

  if (pmap_remove_ptes(pmap, sva, va_next, pde, &free, &lock))
   anyvalid = 1;
 }
 if (lock != ((void*)0))
  rw_wunlock(lock);
out:
 if (anyvalid)
  pmap_invalidate_all(pmap);
 PMAP_UNLOCK(pmap);
 pmap_delayed_invl_finish();
 vm_page_free_pages_toq(&free, 1);
}
