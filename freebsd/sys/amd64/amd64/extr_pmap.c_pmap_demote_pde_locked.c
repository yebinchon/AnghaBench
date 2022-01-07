
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int vm_paddr_t ;
typedef scalar_t__ vm_offset_t ;
struct rwlock {int dummy; } ;
typedef int pt_entry_t ;
typedef int pmap_t ;
typedef int pd_entry_t ;
typedef int boolean_t ;
struct TYPE_5__ {scalar_t__ valid; scalar_t__ ref_count; } ;


 int CTR2 (int ,char*,scalar_t__,int ) ;
 scalar_t__ DMAP_MAX_ADDRESS ;
 scalar_t__ DMAP_MIN_ADDRESS ;
 int FALSE ;
 int KASSERT (int,char*) ;
 int KTR_PMAP ;
 int MA_OWNED ;
 scalar_t__ NPTEPG ;
 int PG_MANAGED ;
 int PG_PS ;
 int PG_PS_FRAME ;
 int PG_PTE_PROMOTE ;
 int PG_U ;
 int PG_W ;
 scalar_t__ PHYS_TO_DMAP (int) ;
 int PMAP_LOCK_ASSERT (int ,int ) ;
 int TRUE ;
 int VM_ALLOC_INTERRUPT ;
 int VM_ALLOC_NOOBJ ;
 int VM_ALLOC_NORMAL ;
 int VM_ALLOC_WIRED ;
 scalar_t__ VM_MAXUSER_ADDRESS ;
 int VM_PAGE_TO_PHYS (TYPE_1__*) ;
 int atomic_add_long (int *,int) ;
 int pde_store (int*,int) ;
 int pmap_accessed_bit (int ) ;
 int pmap_cache_mask (int ,int ) ;
 int pmap_demote_pde_abort (int ,scalar_t__,int*,int,struct rwlock**) ;
 int pmap_demote_pde_check (int*,int) ;
 int pmap_fill_ptp (int*,int) ;
 int pmap_global_bit (int ) ;
 int pmap_invalidate_page (int ,scalar_t__) ;
 int pmap_modified_bit (int ) ;
 int pmap_pde_demotions ;
 int pmap_pde_pindex (scalar_t__) ;
 int pmap_pku_mask_bit (int ) ;
 int pmap_pv_demote_pde (int ,scalar_t__,int,struct rwlock**) ;
 TYPE_1__* pmap_remove_pt_page (int ,scalar_t__) ;
 int pmap_resident_count_inc (int ,int) ;
 int pmap_rw_bit (int ) ;
 int pmap_swap_pat (int ,int) ;
 int pmap_update_pde (int ,scalar_t__,int*,int) ;
 int pmap_valid_bit (int ) ;
 int reserve_pv_entries (int ,scalar_t__,struct rwlock**) ;
 TYPE_1__* vm_page_alloc (int *,int ,int) ;
 scalar_t__ vtopte (scalar_t__) ;
 scalar_t__ workaround_erratum383 ;

__attribute__((used)) static boolean_t
pmap_demote_pde_locked(pmap_t pmap, pd_entry_t *pde, vm_offset_t va,
    struct rwlock **lockp)
{
 pd_entry_t newpde, oldpde;
 pt_entry_t *firstpte, newpte;
 pt_entry_t PG_A, PG_G, PG_M, PG_PKU_MASK, PG_RW, PG_V;
 vm_paddr_t mptepa;
 vm_page_t mpte;
 int PG_PTE_CACHE;
 bool in_kernel;

 PG_A = pmap_accessed_bit(pmap);
 PG_G = pmap_global_bit(pmap);
 PG_M = pmap_modified_bit(pmap);
 PG_RW = pmap_rw_bit(pmap);
 PG_V = pmap_valid_bit(pmap);
 PG_PTE_CACHE = pmap_cache_mask(pmap, 0);
 PG_PKU_MASK = pmap_pku_mask_bit(pmap);

 PMAP_LOCK_ASSERT(pmap, MA_OWNED);
 in_kernel = va >= VM_MAXUSER_ADDRESS;
 oldpde = *pde;
 KASSERT((oldpde & (PG_PS | PG_V)) == (PG_PS | PG_V),
     ("pmap_demote_pde: oldpde is missing PG_PS and/or PG_V"));





 if ((oldpde & PG_A) == 0) {
  KASSERT((oldpde & PG_W) == 0,
      ("pmap_demote_pde: a wired mapping is missing PG_A"));
  pmap_demote_pde_abort(pmap, va, pde, oldpde, lockp);
  return (FALSE);
 }

 mpte = pmap_remove_pt_page(pmap, va);
 if (mpte == ((void*)0)) {
  KASSERT((oldpde & PG_W) == 0,
      ("pmap_demote_pde: page table page for a wired mapping"
      " is missing"));
  KASSERT(!in_kernel || (va >= DMAP_MIN_ADDRESS &&
      va < DMAP_MAX_ADDRESS),
      ("pmap_demote_pde: No saved mpte for va %#lx", va));
  mpte = vm_page_alloc(((void*)0), pmap_pde_pindex(va),
      (in_kernel ? VM_ALLOC_INTERRUPT : VM_ALLOC_NORMAL) |
      VM_ALLOC_NOOBJ | VM_ALLOC_WIRED);





  if (mpte == ((void*)0)) {
   pmap_demote_pde_abort(pmap, va, pde, oldpde, lockp);
   return (FALSE);
  }

  if (!in_kernel) {
   mpte->ref_count = NPTEPG;
   pmap_resident_count_inc(pmap, 1);
  }
 }
 mptepa = VM_PAGE_TO_PHYS(mpte);
 firstpte = (pt_entry_t *)PHYS_TO_DMAP(mptepa);
 newpde = mptepa | PG_M | PG_A | (oldpde & PG_U) | PG_RW | PG_V;
 KASSERT((oldpde & (PG_M | PG_RW)) != PG_RW,
     ("pmap_demote_pde: oldpde is missing PG_M"));
 newpte = oldpde & ~PG_PS;
 newpte = pmap_swap_pat(pmap, newpte);





 if (mpte->valid == 0)
  pmap_fill_ptp(firstpte, newpte);

 pmap_demote_pde_check(firstpte, newpte);





 if ((*firstpte & PG_PTE_PROMOTE) != (newpte & PG_PTE_PROMOTE))
  pmap_fill_ptp(firstpte, newpte);
 if ((oldpde & PG_MANAGED) != 0)
  reserve_pv_entries(pmap, NPTEPG - 1, lockp);
 if (workaround_erratum383)
  pmap_update_pde(pmap, va, pde, newpde);
 else
  pde_store(pde, newpde);




 if (in_kernel)
  pmap_invalidate_page(pmap, (vm_offset_t)vtopte(va));




 if ((oldpde & PG_MANAGED) != 0)
  pmap_pv_demote_pde(pmap, va, oldpde & PG_PS_FRAME, lockp);

 atomic_add_long(&pmap_pde_demotions, 1);
 CTR2(KTR_PMAP, "pmap_demote_pde: success for va %#lx in pmap %p",
     va, pmap);
 return (TRUE);
}
