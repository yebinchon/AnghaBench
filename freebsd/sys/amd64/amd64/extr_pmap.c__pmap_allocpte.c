
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef size_t vm_pindex_t ;
typedef TYPE_1__* vm_page_t ;
struct rwlock {int dummy; } ;
typedef int pt_entry_t ;
typedef int pml4_entry_t ;
typedef TYPE_2__* pmap_t ;
typedef int pdp_entry_t ;
typedef int pd_entry_t ;
struct TYPE_20__ {int* pm_pml4; int* pm_pml4u; scalar_t__ pm_ucr3; } ;
struct TYPE_19__ {int flags; int ref_count; } ;


 int MA_OWNED ;
 unsigned long NPDEPGSHIFT ;
 unsigned long NPDPEPGSHIFT ;
 size_t NPML4EPGSHIFT ;
 size_t NUPDE ;
 size_t NUPDPE ;
 size_t NUPML4E ;
 int PG_FRAME ;
 int PG_U ;
 int PG_ZERO ;
 scalar_t__ PHYS_TO_DMAP (int) ;
 TYPE_1__* PHYS_TO_VM_PAGE (int) ;
 int PMAP_ASSERT_NOT_IN_DI () ;
 int PMAP_LOCK (TYPE_2__*) ;
 int PMAP_LOCK_ASSERT (TYPE_2__*,int ) ;
 scalar_t__ PMAP_NO_CR3 ;
 int PMAP_UNLOCK (TYPE_2__*) ;
 int RELEASE_PV_LIST_LOCK (struct rwlock**) ;
 int VM_ALLOC_NOOBJ ;
 int VM_ALLOC_WIRED ;
 int VM_ALLOC_ZERO ;
 int VM_PAGE_TO_PHYS (TYPE_1__*) ;
 int pg_nx ;
 int pmap_accessed_bit (TYPE_2__*) ;
 int pmap_modified_bit (TYPE_2__*) ;
 int pmap_resident_count_inc (TYPE_2__*,int) ;
 int pmap_rw_bit (TYPE_2__*) ;
 int pmap_valid_bit (TYPE_2__*) ;
 int pmap_zero_page (TYPE_1__*) ;
 TYPE_1__* vm_page_alloc (int *,size_t,int) ;
 int vm_page_free_zero (TYPE_1__*) ;
 int vm_page_unwire_noq (TYPE_1__*) ;
 int vm_wait (int *) ;

__attribute__((used)) static vm_page_t
_pmap_allocpte(pmap_t pmap, vm_pindex_t ptepindex, struct rwlock **lockp)
{
 vm_page_t m, pdppg, pdpg;
 pt_entry_t PG_A, PG_M, PG_RW, PG_V;

 PMAP_LOCK_ASSERT(pmap, MA_OWNED);

 PG_A = pmap_accessed_bit(pmap);
 PG_M = pmap_modified_bit(pmap);
 PG_V = pmap_valid_bit(pmap);
 PG_RW = pmap_rw_bit(pmap);




 if ((m = vm_page_alloc(((void*)0), ptepindex, VM_ALLOC_NOOBJ |
     VM_ALLOC_WIRED | VM_ALLOC_ZERO)) == ((void*)0)) {
  if (lockp != ((void*)0)) {
   RELEASE_PV_LIST_LOCK(lockp);
   PMAP_UNLOCK(pmap);
   PMAP_ASSERT_NOT_IN_DI();
   vm_wait(((void*)0));
   PMAP_LOCK(pmap);
  }





  return (((void*)0));
 }
 if ((m->flags & PG_ZERO) == 0)
  pmap_zero_page(m);






 if (ptepindex >= (NUPDE + NUPDPE)) {
  pml4_entry_t *pml4, *pml4u;
  vm_pindex_t pml4index;


  pml4index = ptepindex - (NUPDE + NUPDPE);
  pml4 = &pmap->pm_pml4[pml4index];
  *pml4 = VM_PAGE_TO_PHYS(m) | PG_U | PG_RW | PG_V | PG_A | PG_M;
  if (pmap->pm_pml4u != ((void*)0) && pml4index < NUPML4E) {







   if (pmap->pm_ucr3 != PMAP_NO_CR3)
    *pml4 |= pg_nx;

   pml4u = &pmap->pm_pml4u[pml4index];
   *pml4u = VM_PAGE_TO_PHYS(m) | PG_U | PG_RW | PG_V |
       PG_A | PG_M;
  }

 } else if (ptepindex >= NUPDE) {
  vm_pindex_t pml4index;
  vm_pindex_t pdpindex;
  pml4_entry_t *pml4;
  pdp_entry_t *pdp;


  pdpindex = ptepindex - NUPDE;
  pml4index = pdpindex >> NPML4EPGSHIFT;

  pml4 = &pmap->pm_pml4[pml4index];
  if ((*pml4 & PG_V) == 0) {

   if (_pmap_allocpte(pmap, NUPDE + NUPDPE + pml4index,
       lockp) == ((void*)0)) {
    vm_page_unwire_noq(m);
    vm_page_free_zero(m);
    return (((void*)0));
   }
  } else {

   pdppg = PHYS_TO_VM_PAGE(*pml4 & PG_FRAME);
   pdppg->ref_count++;
  }
  pdp = (pdp_entry_t *)PHYS_TO_DMAP(*pml4 & PG_FRAME);


  pdp = &pdp[pdpindex & ((1ul << NPDPEPGSHIFT) - 1)];
  *pdp = VM_PAGE_TO_PHYS(m) | PG_U | PG_RW | PG_V | PG_A | PG_M;

 } else {
  vm_pindex_t pml4index;
  vm_pindex_t pdpindex;
  pml4_entry_t *pml4;
  pdp_entry_t *pdp;
  pd_entry_t *pd;


  pdpindex = ptepindex >> NPDPEPGSHIFT;
  pml4index = pdpindex >> NPML4EPGSHIFT;


  pml4 = &pmap->pm_pml4[pml4index];
  if ((*pml4 & PG_V) == 0) {

   if (_pmap_allocpte(pmap, NUPDE + pdpindex,
       lockp) == ((void*)0)) {
    vm_page_unwire_noq(m);
    vm_page_free_zero(m);
    return (((void*)0));
   }
   pdp = (pdp_entry_t *)PHYS_TO_DMAP(*pml4 & PG_FRAME);
   pdp = &pdp[pdpindex & ((1ul << NPDPEPGSHIFT) - 1)];
  } else {
   pdp = (pdp_entry_t *)PHYS_TO_DMAP(*pml4 & PG_FRAME);
   pdp = &pdp[pdpindex & ((1ul << NPDPEPGSHIFT) - 1)];
   if ((*pdp & PG_V) == 0) {

    if (_pmap_allocpte(pmap, NUPDE + pdpindex,
        lockp) == ((void*)0)) {
     vm_page_unwire_noq(m);
     vm_page_free_zero(m);
     return (((void*)0));
    }
   } else {

    pdpg = PHYS_TO_VM_PAGE(*pdp & PG_FRAME);
    pdpg->ref_count++;
   }
  }
  pd = (pd_entry_t *)PHYS_TO_DMAP(*pdp & PG_FRAME);


  pd = &pd[ptepindex & ((1ul << NPDEPGSHIFT) - 1)];
  *pd = VM_PAGE_TO_PHYS(m) | PG_U | PG_RW | PG_V | PG_A | PG_M;
 }

 pmap_resident_count_inc(pmap, 1);

 return (m);
}
