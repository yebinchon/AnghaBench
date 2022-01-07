
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
typedef scalar_t__ vm_offset_t ;
typedef int u_int ;
struct spglist {int dummy; } ;
struct rwlock {int dummy; } ;
typedef TYPE_3__* pmap_t ;
typedef int pd_entry_t ;
struct TYPE_22__ {size_t wired_count; size_t resident_count; } ;
struct TYPE_24__ {TYPE_1__ pm_stats; } ;
struct TYPE_23__ {int ref_count; } ;


 int ATTR_DESCR_MASK ;
 scalar_t__ ATTR_MASK ;
 int ATTR_SW_DBM ;
 int ATTR_SW_MANAGED ;
 int ATTR_SW_WIRED ;
 int CTR2 (int ,char*,scalar_t__,TYPE_3__*) ;
 int KASSERT (int,char*) ;
 int KERN_FAILURE ;
 int KERN_RESOURCE_SHORTAGE ;
 int KERN_SUCCESS ;
 int KTR_PMAP ;
 int L2_BLOCK ;
 size_t L2_SIZE ;
 int MA_OWNED ;
 size_t PAGE_SIZE ;
 int PGA_WRITEABLE ;
 scalar_t__ PHYS_TO_DMAP (int ) ;
 TYPE_2__* PHYS_TO_VM_PAGE (scalar_t__) ;
 int PMAP_ENTER_NOREPLACE ;
 int PMAP_ENTER_NOSLEEP ;
 int PMAP_LOCK_ASSERT (TYPE_3__*,int ) ;
 int SLIST_INIT (struct spglist*) ;
 scalar_t__ VM_MAXUSER_ADDRESS ;
 int VM_PAGE_TO_PHYS (TYPE_2__*) ;
 int atomic_add_long (int *,int) ;
 int dsb (int ) ;
 int ishst ;
 int panic (char*) ;
 TYPE_2__* pmap_alloc_l2 (TYPE_3__*,scalar_t__,struct rwlock**) ;
 int pmap_clear (int*) ;
 scalar_t__ pmap_insert_pt_page (TYPE_3__*,TYPE_2__*,int) ;
 int pmap_invalidate_page (TYPE_3__*,scalar_t__) ;
 int* pmap_l1 (TYPE_3__*,scalar_t__) ;
 size_t pmap_l2_index (scalar_t__) ;
 int pmap_l2_mappings ;
 scalar_t__ pmap_load (int*) ;
 int pmap_pv_insert_l2 (TYPE_3__*,scalar_t__,int,int,struct rwlock**) ;
 int pmap_remove_l2 (TYPE_3__*,int*,scalar_t__,scalar_t__,struct spglist*,struct rwlock**) ;
 int pmap_remove_l3_range (TYPE_3__*,int,scalar_t__,scalar_t__,struct spglist*,struct rwlock**) ;
 int pmap_store (int*,int) ;
 scalar_t__ pmap_unwire_l3 (TYPE_3__*,scalar_t__,TYPE_2__*,struct spglist*) ;
 int vm_page_aflag_set (TYPE_2__*,int ) ;
 int vm_page_free_pages_toq (struct spglist*,int) ;

__attribute__((used)) static int
pmap_enter_l2(pmap_t pmap, vm_offset_t va, pd_entry_t new_l2, u_int flags,
    vm_page_t m, struct rwlock **lockp)
{
 struct spglist free;
 pd_entry_t *l2, old_l2;
 vm_page_t l2pg, mt;

 PMAP_LOCK_ASSERT(pmap, MA_OWNED);

 if ((l2pg = pmap_alloc_l2(pmap, va, (flags & PMAP_ENTER_NOSLEEP) != 0 ?
     ((void*)0) : lockp)) == ((void*)0)) {
  CTR2(KTR_PMAP, "pmap_enter_l2: failure for va %#lx in pmap %p",
      va, pmap);
  return (KERN_RESOURCE_SHORTAGE);
 }

 l2 = (pd_entry_t *)PHYS_TO_DMAP(VM_PAGE_TO_PHYS(l2pg));
 l2 = &l2[pmap_l2_index(va)];
 if ((old_l2 = pmap_load(l2)) != 0) {
  KASSERT(l2pg->ref_count > 1,
      ("pmap_enter_l2: l2pg's ref count is too low"));
  if ((flags & PMAP_ENTER_NOREPLACE) != 0) {
   l2pg->ref_count--;
   CTR2(KTR_PMAP,
       "pmap_enter_l2: failure for va %#lx in pmap %p",
       va, pmap);
   return (KERN_FAILURE);
  }
  SLIST_INIT(&free);
  if ((old_l2 & ATTR_DESCR_MASK) == L2_BLOCK)
   (void)pmap_remove_l2(pmap, l2, va,
       pmap_load(pmap_l1(pmap, va)), &free, lockp);
  else
   pmap_remove_l3_range(pmap, old_l2, va, va + L2_SIZE,
       &free, lockp);
  vm_page_free_pages_toq(&free, 1);
  if (va >= VM_MAXUSER_ADDRESS) {






   mt = PHYS_TO_VM_PAGE(pmap_load(l2) & ~ATTR_MASK);
   if (pmap_insert_pt_page(pmap, mt, 0))
    panic("pmap_enter_l2: trie insert failed");
   pmap_clear(l2);
   pmap_invalidate_page(pmap, va);
  } else
   KASSERT(pmap_load(l2) == 0,
       ("pmap_enter_l2: non-zero L2 entry %p", l2));
 }

 if ((new_l2 & ATTR_SW_MANAGED) != 0) {



  if (!pmap_pv_insert_l2(pmap, va, new_l2, flags, lockp)) {
   SLIST_INIT(&free);
   if (pmap_unwire_l3(pmap, va, l2pg, &free)) {
    pmap_invalidate_page(pmap, va);
    vm_page_free_pages_toq(&free, 1);
   }
   CTR2(KTR_PMAP,
       "pmap_enter_l2: failure for va %#lx in pmap %p",
       va, pmap);
   return (KERN_RESOURCE_SHORTAGE);
  }
  if ((new_l2 & ATTR_SW_DBM) != 0)
   for (mt = m; mt < &m[L2_SIZE / PAGE_SIZE]; mt++)
    vm_page_aflag_set(mt, PGA_WRITEABLE);
 }




 if ((new_l2 & ATTR_SW_WIRED) != 0)
  pmap->pm_stats.wired_count += L2_SIZE / PAGE_SIZE;
 pmap->pm_stats.resident_count += L2_SIZE / PAGE_SIZE;




 pmap_store(l2, new_l2);
 dsb(ishst);

 atomic_add_long(&pmap_l2_mappings, 1);
 CTR2(KTR_PMAP, "pmap_enter_l2: success for va %#lx in pmap %p",
     va, pmap);

 return (KERN_SUCCESS);
}
