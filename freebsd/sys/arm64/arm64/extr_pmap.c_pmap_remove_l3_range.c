
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_10__ ;


typedef TYPE_2__* vm_page_t ;
typedef scalar_t__ vm_offset_t ;
struct spglist {int dummy; } ;
struct rwlock {int dummy; } ;
struct md_page {int pv_list; } ;
typedef int pt_entry_t ;
typedef TYPE_3__* pmap_t ;
typedef int pd_entry_t ;
struct TYPE_17__ {int wired_count; } ;
struct TYPE_19__ {TYPE_1__ pm_stats; } ;
struct TYPE_16__ {int pv_list; } ;
struct TYPE_18__ {int flags; TYPE_10__ md; } ;


 int ATTR_AF ;
 int ATTR_MASK ;
 int ATTR_SW_MANAGED ;
 int ATTR_SW_WIRED ;
 int KASSERT (int,char*) ;
 scalar_t__ L2_SIZE ;
 scalar_t__ L3_SIZE ;
 int MA_OWNED ;
 int PGA_REFERENCED ;
 int PGA_WRITEABLE ;
 int PG_FICTITIOUS ;
 struct rwlock* PHYS_TO_PV_LIST_LOCK (int ) ;
 TYPE_2__* PHYS_TO_VM_PAGE (int) ;
 int PMAP_LOCK_ASSERT (TYPE_3__*,int ) ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 int VM_PAGE_TO_PHYS (TYPE_2__*) ;
 struct md_page* pa_to_pvh (int ) ;
 int pmap_invalidate_range (TYPE_3__*,scalar_t__,scalar_t__) ;
 int* pmap_l2_to_l3 (int *,scalar_t__) ;
 int pmap_l3_valid (int ) ;
 int pmap_load (int*) ;
 int pmap_load_clear (int*) ;
 scalar_t__ pmap_pte_dirty (int) ;
 int pmap_pvh_free (TYPE_10__*,TYPE_3__*,scalar_t__) ;
 int pmap_resident_count_dec (TYPE_3__*,int) ;
 scalar_t__ pmap_unuse_pt (TYPE_3__*,scalar_t__,int ,struct spglist*) ;
 scalar_t__ rounddown2 (scalar_t__,scalar_t__) ;
 scalar_t__ roundup2 (scalar_t__,scalar_t__) ;
 int rw_wlock (struct rwlock*) ;
 int rw_wunlock (struct rwlock*) ;
 int vm_page_aflag_clear (TYPE_2__*,int ) ;
 int vm_page_aflag_set (TYPE_2__*,int ) ;
 int vm_page_dirty (TYPE_2__*) ;

__attribute__((used)) static void
pmap_remove_l3_range(pmap_t pmap, pd_entry_t l2e, vm_offset_t sva,
    vm_offset_t eva, struct spglist *free, struct rwlock **lockp)
{
 struct md_page *pvh;
 struct rwlock *new_lock;
 pt_entry_t *l3, old_l3;
 vm_offset_t va;
 vm_page_t m;

 PMAP_LOCK_ASSERT(pmap, MA_OWNED);
 KASSERT(rounddown2(sva, L2_SIZE) + L2_SIZE == roundup2(eva, L2_SIZE),
     ("pmap_remove_l3_range: range crosses an L3 page table boundary"));
 va = eva;
 for (l3 = pmap_l2_to_l3(&l2e, sva); sva != eva; l3++, sva += L3_SIZE) {
  if (!pmap_l3_valid(pmap_load(l3))) {
   if (va != eva) {
    pmap_invalidate_range(pmap, va, sva);
    va = eva;
   }
   continue;
  }
  old_l3 = pmap_load_clear(l3);
  if ((old_l3 & ATTR_SW_WIRED) != 0)
   pmap->pm_stats.wired_count--;
  pmap_resident_count_dec(pmap, 1);
  if ((old_l3 & ATTR_SW_MANAGED) != 0) {
   m = PHYS_TO_VM_PAGE(old_l3 & ~ATTR_MASK);
   if (pmap_pte_dirty(old_l3))
    vm_page_dirty(m);
   if ((old_l3 & ATTR_AF) != 0)
    vm_page_aflag_set(m, PGA_REFERENCED);
   new_lock = PHYS_TO_PV_LIST_LOCK(VM_PAGE_TO_PHYS(m));
   if (new_lock != *lockp) {
    if (*lockp != ((void*)0)) {
     if (va != eva) {
      pmap_invalidate_range(pmap, va,
          sva);
      va = eva;
     }
     rw_wunlock(*lockp);
    }
    *lockp = new_lock;
    rw_wlock(*lockp);
   }
   pmap_pvh_free(&m->md, pmap, sva);
   if (TAILQ_EMPTY(&m->md.pv_list) &&
       (m->flags & PG_FICTITIOUS) == 0) {
    pvh = pa_to_pvh(VM_PAGE_TO_PHYS(m));
    if (TAILQ_EMPTY(&pvh->pv_list))
     vm_page_aflag_clear(m, PGA_WRITEABLE);
   }
  }
  if (va == eva)
   va = sva;
  if (pmap_unuse_pt(pmap, sva, l2e, free)) {
   sva += L3_SIZE;
   break;
  }
 }
 if (va != eva)
  pmap_invalidate_range(pmap, va, sva);
}
