
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
typedef int vm_paddr_t ;
typedef scalar_t__ vm_offset_t ;
struct rwlock {int dummy; } ;
struct pv_chunk {int* pc_map; scalar_t__ pv_va; struct pv_chunk* pc_pventry; } ;
struct md_page {int dummy; } ;
typedef struct pv_chunk* pv_entry_t ;
typedef TYPE_3__* pmap_t ;
struct TYPE_10__ {int pm_pvchunk; } ;
struct TYPE_8__ {int pv_gen; int pv_list; } ;
struct TYPE_9__ {int oflags; TYPE_1__ md; } ;


 int CHANGE_PV_LIST_LOCK_TO_PHYS (struct rwlock**,int) ;
 int KASSERT (int,char*) ;
 int MA_OWNED ;
 scalar_t__ NBPDR ;
 scalar_t__ NPTEPG ;
 scalar_t__ PAGE_SIZE ;
 int PDRMASK ;
 TYPE_2__* PHYS_TO_VM_PAGE (int) ;
 int PMAP_LOCK_ASSERT (TYPE_3__*,int ) ;
 int PV_STAT (int ) ;
 struct pv_chunk* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct pv_chunk*,int ) ;
 int TAILQ_REMOVE (int *,struct pv_chunk*,int ) ;
 int VPO_UNMANAGED ;
 int _NPCM ;
 int atomic_add_long (int *,scalar_t__) ;
 int atomic_subtract_int (int *,scalar_t__) ;
 int bsfq (int) ;
 struct md_page* pa_to_pvh (int) ;
 int pc_list ;
 struct pv_chunk* pmap_pvh_remove (struct md_page*,TYPE_3__*,scalar_t__) ;
 int pv_entry_allocs ;
 int pv_entry_count ;
 int pv_entry_spare ;
 int pv_next ;
 scalar_t__ trunc_2mpage (scalar_t__) ;

__attribute__((used)) static void
pmap_pv_demote_pde(pmap_t pmap, vm_offset_t va, vm_paddr_t pa,
    struct rwlock **lockp)
{
 struct md_page *pvh;
 struct pv_chunk *pc;
 pv_entry_t pv;
 vm_offset_t va_last;
 vm_page_t m;
 int bit, field;

 PMAP_LOCK_ASSERT(pmap, MA_OWNED);
 KASSERT((pa & PDRMASK) == 0,
     ("pmap_pv_demote_pde: pa is not 2mpage aligned"));
 CHANGE_PV_LIST_LOCK_TO_PHYS(lockp, pa);






 pvh = pa_to_pvh(pa);
 va = trunc_2mpage(va);
 pv = pmap_pvh_remove(pvh, pmap, va);
 KASSERT(pv != ((void*)0), ("pmap_pv_demote_pde: pv not found"));
 m = PHYS_TO_VM_PAGE(pa);
 TAILQ_INSERT_TAIL(&m->md.pv_list, pv, pv_next);
 m->md.pv_gen++;

 PV_STAT(atomic_add_long(&pv_entry_allocs, NPTEPG - 1));
 va_last = va + NBPDR - PAGE_SIZE;
 for (;;) {
  pc = TAILQ_FIRST(&pmap->pm_pvchunk);
  KASSERT(pc->pc_map[0] != 0 || pc->pc_map[1] != 0 ||
      pc->pc_map[2] != 0, ("pmap_pv_demote_pde: missing spare"));
  for (field = 0; field < _NPCM; field++) {
   while (pc->pc_map[field]) {
    bit = bsfq(pc->pc_map[field]);
    pc->pc_map[field] &= ~(1ul << bit);
    pv = &pc->pc_pventry[field * 64 + bit];
    va += PAGE_SIZE;
    pv->pv_va = va;
    m++;
    KASSERT((m->oflags & VPO_UNMANAGED) == 0,
       ("pmap_pv_demote_pde: page %p is not managed", m));
    TAILQ_INSERT_TAIL(&m->md.pv_list, pv, pv_next);
    m->md.pv_gen++;
    if (va == va_last)
     goto out;
   }
  }
  TAILQ_REMOVE(&pmap->pm_pvchunk, pc, pc_list);
  TAILQ_INSERT_TAIL(&pmap->pm_pvchunk, pc, pc_list);
 }
out:
 if (pc->pc_map[0] == 0 && pc->pc_map[1] == 0 && pc->pc_map[2] == 0) {
  TAILQ_REMOVE(&pmap->pm_pvchunk, pc, pc_list);
  TAILQ_INSERT_TAIL(&pmap->pm_pvchunk, pc, pc_list);
 }
 PV_STAT(atomic_add_long(&pv_entry_count, NPTEPG - 1));
 PV_STAT(atomic_subtract_int(&pv_entry_spare, NPTEPG - 1));
}
