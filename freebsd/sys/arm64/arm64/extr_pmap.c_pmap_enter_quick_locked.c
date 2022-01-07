
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef scalar_t__ vm_pindex_t ;
typedef TYPE_2__* vm_page_t ;
typedef int vm_paddr_t ;
typedef int vm_offset_t ;
struct spglist {int dummy; } ;
struct rwlock {int dummy; } ;
typedef int pt_entry_t ;
typedef scalar_t__ pmap_t ;
typedef int pd_entry_t ;
struct TYPE_14__ {int clean_eva; int clean_sva; } ;
struct TYPE_12__ {scalar_t__ pv_memattr; } ;
struct TYPE_13__ {int oflags; scalar_t__ pindex; TYPE_1__ md; int ref_count; } ;


 int ATTR_AF ;
 int ATTR_AP (int ) ;
 int ATTR_AP_RO ;
 int ATTR_AP_USER ;
 int ATTR_DEFAULT ;
 int ATTR_DESCR_MASK ;
 int ATTR_IDX (scalar_t__) ;
 int ATTR_MASK ;
 int ATTR_PXN ;
 int ATTR_SW_MANAGED ;
 int ATTR_UXN ;
 int ATTR_XN ;
 int ATTR_nG ;
 int CTR2 (int ,char*,scalar_t__,int ) ;
 scalar_t__ DEVICE_MEMORY ;
 int KASSERT (int,char*) ;
 int KTR_PMAP ;
 int L2_BLOCK ;
 int L3_PAGE ;
 int MA_OWNED ;
 int PAGE_SIZE ;
 scalar_t__ PHYS_TO_DMAP (int) ;
 TYPE_2__* PHYS_TO_VM_PAGE (int) ;
 int PMAP_LOCK_ASSERT (scalar_t__,int ) ;
 int SLIST_INIT (struct spglist*) ;
 int VM_MAXUSER_ADDRESS ;
 scalar_t__ VM_MEMATTR_WRITE_BACK ;
 int VM_PAGE_TO_PHYS (TYPE_2__*) ;
 int VM_PROT_EXECUTE ;
 int VPO_UNMANAGED ;
 TYPE_2__* _pmap_alloc_l3 (scalar_t__,scalar_t__,int *) ;
 int cpu_icache_sync_range (scalar_t__,int ) ;
 int dsb (int ) ;
 int ishst ;
 scalar_t__ kernel_pmap ;
 TYPE_8__ kmi ;
 int pmap_invalidate_page (scalar_t__,int ) ;
 int* pmap_l1_to_l2 (int*,int ) ;
 scalar_t__ pmap_l2_pindex (int ) ;
 int* pmap_l2_to_l3 (int*,int ) ;
 size_t pmap_l3_index (int ) ;
 int pmap_load (int*) ;
 int* pmap_pde (scalar_t__,int ,int*) ;
 int pmap_resident_count_inc (scalar_t__,int) ;
 int pmap_store (int*,int) ;
 int pmap_try_insert_pv_entry (scalar_t__,int ,TYPE_2__*,struct rwlock**) ;
 scalar_t__ pmap_unwire_l3 (scalar_t__,int ,TYPE_2__*,struct spglist*) ;
 int vm_page_free_pages_toq (struct spglist*,int) ;

__attribute__((used)) static vm_page_t
pmap_enter_quick_locked(pmap_t pmap, vm_offset_t va, vm_page_t m,
    vm_prot_t prot, vm_page_t mpte, struct rwlock **lockp)
{
 struct spglist free;
 pd_entry_t *pde;
 pt_entry_t *l2, *l3, l3_val;
 vm_paddr_t pa;
 int lvl;

 KASSERT(va < kmi.clean_sva || va >= kmi.clean_eva ||
     (m->oflags & VPO_UNMANAGED) != 0,
     ("pmap_enter_quick_locked: managed mapping within the clean submap"));
 PMAP_LOCK_ASSERT(pmap, MA_OWNED);

 CTR2(KTR_PMAP, "pmap_enter_quick_locked: %p %lx", pmap, va);




 if (va < VM_MAXUSER_ADDRESS) {
  vm_pindex_t l2pindex;




  l2pindex = pmap_l2_pindex(va);
  if (mpte && (mpte->pindex == l2pindex)) {
   mpte->ref_count++;
  } else {



   pde = pmap_pde(pmap, va, &lvl);







   if (lvl == 1) {
    l2 = pmap_l1_to_l2(pde, va);
    if ((pmap_load(l2) & ATTR_DESCR_MASK) ==
        L2_BLOCK)
     return (((void*)0));
   }
   if (lvl == 2 && pmap_load(pde) != 0) {
    mpte =
        PHYS_TO_VM_PAGE(pmap_load(pde) & ~ATTR_MASK);
    mpte->ref_count++;
   } else {




    mpte = _pmap_alloc_l3(pmap, l2pindex, ((void*)0));
    if (mpte == ((void*)0))
     return (mpte);
   }
  }
  l3 = (pt_entry_t *)PHYS_TO_DMAP(VM_PAGE_TO_PHYS(mpte));
  l3 = &l3[pmap_l3_index(va)];
 } else {
  mpte = ((void*)0);
  pde = pmap_pde(kernel_pmap, va, &lvl);
  KASSERT(pde != ((void*)0),
      ("pmap_enter_quick_locked: Invalid page entry, va: 0x%lx",
       va));
  KASSERT(lvl == 2,
      ("pmap_enter_quick_locked: Invalid level %d", lvl));
  l3 = pmap_l2_to_l3(pde, va);
 }




 if (pmap_load(l3) != 0) {
  if (mpte != ((void*)0)) {
   mpte->ref_count--;
   mpte = ((void*)0);
  }
  return (mpte);
 }




 if ((m->oflags & VPO_UNMANAGED) == 0 &&
     !pmap_try_insert_pv_entry(pmap, va, m, lockp)) {
  if (mpte != ((void*)0)) {
   SLIST_INIT(&free);
   if (pmap_unwire_l3(pmap, va, mpte, &free)) {
    pmap_invalidate_page(pmap, va);
    vm_page_free_pages_toq(&free, 1);
   }
   mpte = ((void*)0);
  }
  return (mpte);
 }




 pmap_resident_count_inc(pmap, 1);

 pa = VM_PAGE_TO_PHYS(m);
 l3_val = pa | ATTR_DEFAULT | ATTR_IDX(m->md.pv_memattr) |
     ATTR_AP(ATTR_AP_RO) | L3_PAGE;
 if ((prot & VM_PROT_EXECUTE) == 0 || m->md.pv_memattr == DEVICE_MEMORY)
  l3_val |= ATTR_XN;
 if (va < VM_MAXUSER_ADDRESS)
  l3_val |= ATTR_AP(ATTR_AP_USER) | ATTR_PXN;
 else
  l3_val |= ATTR_UXN;
 if (pmap != kernel_pmap)
  l3_val |= ATTR_nG;




 if ((m->oflags & VPO_UNMANAGED) == 0) {
  l3_val |= ATTR_SW_MANAGED;
  l3_val &= ~ATTR_AF;
 }


 if ((prot & VM_PROT_EXECUTE) && pmap != kernel_pmap &&
     m->md.pv_memattr == VM_MEMATTR_WRITE_BACK)
  cpu_icache_sync_range(PHYS_TO_DMAP(pa), PAGE_SIZE);

 pmap_store(l3, l3_val);
 dsb(ishst);

 return (mpte);
}
