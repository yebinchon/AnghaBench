
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_10__ ;


typedef TYPE_2__* vm_page_t ;
typedef int vm_offset_t ;
struct spglist {int dummy; } ;
struct rwlock {int dummy; } ;
struct md_page {int pv_list; } ;
typedef int pt_entry_t ;
typedef TYPE_3__* pmap_t ;
typedef int pd_entry_t ;
struct TYPE_18__ {int wired_count; } ;
struct TYPE_20__ {TYPE_1__ pm_stats; } ;
struct TYPE_17__ {int pv_list; } ;
struct TYPE_19__ {int flags; TYPE_10__ md; } ;


 int ATTR_AF ;
 int ATTR_MASK ;
 int ATTR_SW_MANAGED ;
 int ATTR_SW_WIRED ;
 int CHANGE_PV_LIST_LOCK_TO_VM_PAGE (struct rwlock**,TYPE_2__*) ;
 int MA_OWNED ;
 int PGA_REFERENCED ;
 int PGA_WRITEABLE ;
 int PG_FICTITIOUS ;
 TYPE_2__* PHYS_TO_VM_PAGE (int) ;
 int PMAP_LOCK_ASSERT (TYPE_3__*,int ) ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 int VM_PAGE_TO_PHYS (TYPE_2__*) ;
 struct md_page* pa_to_pvh (int ) ;
 int pmap_invalidate_page (TYPE_3__*,int ) ;
 int pmap_load_clear (int*) ;
 scalar_t__ pmap_pte_dirty (int) ;
 int pmap_pvh_free (TYPE_10__*,TYPE_3__*,int ) ;
 int pmap_resident_count_dec (TYPE_3__*,int) ;
 int pmap_unuse_pt (TYPE_3__*,int ,int ,struct spglist*) ;
 int vm_page_aflag_clear (TYPE_2__*,int ) ;
 int vm_page_aflag_set (TYPE_2__*,int ) ;
 int vm_page_dirty (TYPE_2__*) ;

__attribute__((used)) static int
pmap_remove_l3(pmap_t pmap, pt_entry_t *l3, vm_offset_t va,
    pd_entry_t l2e, struct spglist *free, struct rwlock **lockp)
{
 struct md_page *pvh;
 pt_entry_t old_l3;
 vm_page_t m;

 PMAP_LOCK_ASSERT(pmap, MA_OWNED);
 old_l3 = pmap_load_clear(l3);
 pmap_invalidate_page(pmap, va);
 if (old_l3 & ATTR_SW_WIRED)
  pmap->pm_stats.wired_count -= 1;
 pmap_resident_count_dec(pmap, 1);
 if (old_l3 & ATTR_SW_MANAGED) {
  m = PHYS_TO_VM_PAGE(old_l3 & ~ATTR_MASK);
  if (pmap_pte_dirty(old_l3))
   vm_page_dirty(m);
  if (old_l3 & ATTR_AF)
   vm_page_aflag_set(m, PGA_REFERENCED);
  CHANGE_PV_LIST_LOCK_TO_VM_PAGE(lockp, m);
  pmap_pvh_free(&m->md, pmap, va);
  if (TAILQ_EMPTY(&m->md.pv_list) &&
      (m->flags & PG_FICTITIOUS) == 0) {
   pvh = pa_to_pvh(VM_PAGE_TO_PHYS(m));
   if (TAILQ_EMPTY(&pvh->pv_list))
    vm_page_aflag_clear(m, PGA_WRITEABLE);
  }
 }
 return (pmap_unuse_pt(pmap, va, l2e, free));
}
