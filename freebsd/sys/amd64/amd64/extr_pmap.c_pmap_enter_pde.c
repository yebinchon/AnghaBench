
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_3__ ;
typedef struct TYPE_34__ TYPE_2__ ;
typedef struct TYPE_33__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
typedef scalar_t__ vm_offset_t ;
typedef int u_int ;
struct spglist {int dummy; } ;
struct rwlock {int dummy; } ;
typedef int pt_entry_t ;
typedef TYPE_3__* pmap_t ;
typedef int pd_entry_t ;
struct TYPE_33__ {size_t wired_count; } ;
struct TYPE_35__ {scalar_t__ pm_type; TYPE_1__ pm_stats; } ;
struct TYPE_34__ {int ref_count; } ;


 int CTR2 (int ,char*,scalar_t__,TYPE_3__*) ;
 int KASSERT (int,char*) ;
 int KERN_FAILURE ;
 int KERN_RESOURCE_SHORTAGE ;
 int KERN_SUCCESS ;
 int KTR_PMAP ;
 int MA_OWNED ;
 size_t NBPDR ;
 size_t PAGE_SIZE ;
 int PGA_WRITEABLE ;
 int PG_FRAME ;
 int PG_MANAGED ;
 int PG_PS ;
 int PG_W ;
 scalar_t__ PHYS_TO_DMAP (int ) ;
 TYPE_2__* PHYS_TO_VM_PAGE (int) ;
 int PMAP_ENTER_NOREPLACE ;
 int PMAP_ENTER_NOSLEEP ;
 int PMAP_LOCK_ASSERT (TYPE_3__*,int ) ;
 scalar_t__ PT_X86 ;
 int SLIST_INIT (struct spglist*) ;
 scalar_t__ VM_MAXUSER_ADDRESS ;
 int VM_PAGE_TO_PHYS (TYPE_2__*) ;
 int X86_PG_PKU_MASK ;
 int atomic_add_long (int *,int) ;
 TYPE_3__* kernel_pmap ;
 int panic (char*) ;
 int pde_store (int*,int) ;
 TYPE_2__* pmap_allocpde (TYPE_3__*,scalar_t__,struct rwlock**) ;
 int pmap_allow_2m_x_page (TYPE_3__*,int ) ;
 int pmap_delayed_invl_finish () ;
 int pmap_delayed_invl_start () ;
 int pmap_global_bit (TYPE_3__*) ;
 scalar_t__ pmap_insert_pt_page (TYPE_3__*,TYPE_2__*,int) ;
 int pmap_invalidate_all (TYPE_3__*) ;
 int pmap_invalidate_page (TYPE_3__*,scalar_t__) ;
 int pmap_invalidate_pde_page (TYPE_3__*,scalar_t__,int) ;
 int pmap_modified_bit (TYPE_3__*) ;
 int pmap_pde_ept_executable (TYPE_3__*,int) ;
 size_t pmap_pde_index (scalar_t__) ;
 int pmap_pde_mappings ;
 int pmap_pkru_get (TYPE_3__*,scalar_t__) ;
 int pmap_pkru_same (TYPE_3__*,scalar_t__,int ) ;
 int pmap_pv_insert_pde (TYPE_3__*,scalar_t__,int,int,struct rwlock**) ;
 int pmap_remove_pde (TYPE_3__*,int*,scalar_t__,struct spglist*,struct rwlock**) ;
 scalar_t__ pmap_remove_ptes (TYPE_3__*,scalar_t__,scalar_t__,int*,struct spglist*,struct rwlock**) ;
 int pmap_resident_count_inc (TYPE_3__*,size_t) ;
 int pmap_rw_bit (TYPE_3__*) ;
 scalar_t__ pmap_unwire_ptp (TYPE_3__*,scalar_t__,TYPE_2__*,struct spglist*) ;
 int pmap_valid_bit (TYPE_3__*) ;
 int vm_page_aflag_set (TYPE_2__*,int ) ;
 int vm_page_free_pages_toq (struct spglist*,int) ;

__attribute__((used)) static int
pmap_enter_pde(pmap_t pmap, vm_offset_t va, pd_entry_t newpde, u_int flags,
    vm_page_t m, struct rwlock **lockp)
{
 struct spglist free;
 pd_entry_t oldpde, *pde;
 pt_entry_t PG_G, PG_RW, PG_V;
 vm_page_t mt, pdpg;

 KASSERT(pmap == kernel_pmap || (newpde & PG_W) == 0,
     ("pmap_enter_pde: cannot create wired user mapping"));
 PG_G = pmap_global_bit(pmap);
 PG_RW = pmap_rw_bit(pmap);
 KASSERT((newpde & (pmap_modified_bit(pmap) | PG_RW)) != PG_RW,
     ("pmap_enter_pde: newpde is missing PG_M"));
 PG_V = pmap_valid_bit(pmap);
 PMAP_LOCK_ASSERT(pmap, MA_OWNED);

 if (!pmap_allow_2m_x_page(pmap, pmap_pde_ept_executable(pmap,
     newpde))) {
  CTR2(KTR_PMAP, "pmap_enter_pde: 2m x blocked for va %#lx"
      " in pmap %p", va, pmap);
  return (KERN_FAILURE);
 }
 if ((pdpg = pmap_allocpde(pmap, va, (flags & PMAP_ENTER_NOSLEEP) != 0 ?
     ((void*)0) : lockp)) == ((void*)0)) {
  CTR2(KTR_PMAP, "pmap_enter_pde: failure for va %#lx"
      " in pmap %p", va, pmap);
  return (KERN_RESOURCE_SHORTAGE);
 }






 if (!pmap_pkru_same(pmap, va, va + NBPDR)) {
  SLIST_INIT(&free);
  if (pmap_unwire_ptp(pmap, va, pdpg, &free)) {
   pmap_invalidate_page(pmap, va);
   vm_page_free_pages_toq(&free, 1);
  }
  return (KERN_FAILURE);
 }
 if (va < VM_MAXUSER_ADDRESS && pmap->pm_type == PT_X86) {
  newpde &= ~X86_PG_PKU_MASK;
  newpde |= pmap_pkru_get(pmap, va);
 }

 pde = (pd_entry_t *)PHYS_TO_DMAP(VM_PAGE_TO_PHYS(pdpg));
 pde = &pde[pmap_pde_index(va)];
 oldpde = *pde;
 if ((oldpde & PG_V) != 0) {
  KASSERT(pdpg->ref_count > 1,
      ("pmap_enter_pde: pdpg's reference count is too low"));
  if ((flags & PMAP_ENTER_NOREPLACE) != 0) {
   pdpg->ref_count--;
   CTR2(KTR_PMAP, "pmap_enter_pde: failure for va %#lx"
       " in pmap %p", va, pmap);
   return (KERN_FAILURE);
  }

  SLIST_INIT(&free);
  if ((oldpde & PG_PS) != 0) {






   (void)pmap_remove_pde(pmap, pde, va, &free, lockp);
   if ((oldpde & PG_G) == 0)
    pmap_invalidate_pde_page(pmap, va, oldpde);
  } else {
   pmap_delayed_invl_start();
   if (pmap_remove_ptes(pmap, va, va + NBPDR, pde, &free,
       lockp))
                 pmap_invalidate_all(pmap);
   pmap_delayed_invl_finish();
  }
  vm_page_free_pages_toq(&free, 1);
  if (va >= VM_MAXUSER_ADDRESS) {




   mt = PHYS_TO_VM_PAGE(*pde & PG_FRAME);
   if (pmap_insert_pt_page(pmap, mt, 0))
    panic("pmap_enter_pde: trie insert failed");
  } else
   KASSERT(*pde == 0, ("pmap_enter_pde: non-zero pde %p",
       pde));
 }
 if ((newpde & PG_MANAGED) != 0) {



  if (!pmap_pv_insert_pde(pmap, va, newpde, flags, lockp)) {
   SLIST_INIT(&free);
   if (pmap_unwire_ptp(pmap, va, pdpg, &free)) {






    pmap_invalidate_page(pmap, va);
    vm_page_free_pages_toq(&free, 1);
   }
   CTR2(KTR_PMAP, "pmap_enter_pde: failure for va %#lx"
       " in pmap %p", va, pmap);
   return (KERN_RESOURCE_SHORTAGE);
  }
  if ((newpde & PG_RW) != 0) {
   for (mt = m; mt < &m[NBPDR / PAGE_SIZE]; mt++)
    vm_page_aflag_set(mt, PGA_WRITEABLE);
  }
 }




 if ((newpde & PG_W) != 0)
  pmap->pm_stats.wired_count += NBPDR / PAGE_SIZE;
 pmap_resident_count_inc(pmap, NBPDR / PAGE_SIZE);





 pde_store(pde, newpde);

 atomic_add_long(&pmap_pde_mappings, 1);
 CTR2(KTR_PMAP, "pmap_enter_pde: success for va %#lx"
     " in pmap %p", va, pmap);
 return (KERN_SUCCESS);
}
