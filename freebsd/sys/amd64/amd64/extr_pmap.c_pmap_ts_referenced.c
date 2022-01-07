
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
typedef uintptr_t vm_paddr_t ;
typedef uintptr_t vm_offset_t ;
struct spglist {int dummy; } ;
struct rwlock {int dummy; } ;
struct md_page {int pv_gen; int pv_list; } ;
typedef TYPE_3__* pv_entry_t ;
typedef uintptr_t pt_entry_t ;
typedef scalar_t__ pmap_t ;
typedef uintptr_t pd_entry_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_15__ {uintptr_t pv_va; } ;
struct TYPE_13__ {int pv_gen; int pv_list; } ;
struct TYPE_14__ {int oflags; int flags; TYPE_1__ md; } ;


 scalar_t__ FALSE ;
 int KASSERT (int,char*) ;
 int NPTEPG ;
 uintptr_t PAGE_SHIFT ;
 uintptr_t PDRSHIFT ;
 int PG_FICTITIOUS ;
 uintptr_t PG_PS ;
 uintptr_t PG_PS_FRAME ;
 uintptr_t PG_W ;
 struct rwlock* PHYS_TO_PV_LIST_LOCK (uintptr_t) ;
 int PMAP_LOCK (scalar_t__) ;
 int PMAP_TRYLOCK (scalar_t__) ;
 int PMAP_TS_REFERENCED_MAX ;
 int PMAP_UNLOCK (scalar_t__) ;
 scalar_t__ PV_PMAP (TYPE_3__*) ;
 int SLIST_INIT (struct spglist*) ;
 TYPE_3__* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_TAIL (int *,TYPE_3__*,int ) ;
 int * TAILQ_NEXT (TYPE_3__*,int ) ;
 int TAILQ_REMOVE (int *,TYPE_3__*,int ) ;
 scalar_t__ TRUE ;
 uintptr_t VM_PAGE_TO_PHYS (TYPE_2__*) ;
 struct rwlock* VM_PAGE_TO_PV_LIST_LOCK (TYPE_2__*) ;
 int VPO_UNMANAGED ;
 int atomic_clear_long (uintptr_t*,uintptr_t) ;
 struct md_page* pa_to_pvh (uintptr_t) ;
 uintptr_t pmap_accessed_bit (scalar_t__) ;
 scalar_t__ pmap_demote_pde_locked (scalar_t__,uintptr_t*,uintptr_t,struct rwlock**) ;
 int pmap_invalidate_page (scalar_t__,uintptr_t) ;
 uintptr_t pmap_modified_bit (scalar_t__) ;
 uintptr_t* pmap_pde (scalar_t__,uintptr_t) ;
 uintptr_t* pmap_pde_to_pte (uintptr_t*,uintptr_t) ;
 int pmap_remove_pte (scalar_t__,uintptr_t*,uintptr_t,uintptr_t,struct spglist*,struct rwlock**) ;
 uintptr_t pmap_rw_bit (scalar_t__) ;
 struct md_page pv_dummy ;
 int pv_next ;
 int rw_wlock (struct rwlock*) ;
 int rw_wunlock (struct rwlock*) ;
 scalar_t__ safe_to_clear_referenced (scalar_t__,uintptr_t) ;
 int vm_page_dirty (TYPE_2__*) ;
 int vm_page_free_pages_toq (struct spglist*,int) ;

int
pmap_ts_referenced(vm_page_t m)
{
 struct md_page *pvh;
 pv_entry_t pv, pvf;
 pmap_t pmap;
 struct rwlock *lock;
 pd_entry_t oldpde, *pde;
 pt_entry_t *pte, PG_A, PG_M, PG_RW;
 vm_offset_t va;
 vm_paddr_t pa;
 int cleared, md_gen, not_cleared, pvh_gen;
 struct spglist free;
 boolean_t demoted;

 KASSERT((m->oflags & VPO_UNMANAGED) == 0,
     ("pmap_ts_referenced: page %p is not managed", m));
 SLIST_INIT(&free);
 cleared = 0;
 pa = VM_PAGE_TO_PHYS(m);
 lock = PHYS_TO_PV_LIST_LOCK(pa);
 pvh = (m->flags & PG_FICTITIOUS) != 0 ? &pv_dummy : pa_to_pvh(pa);
 rw_wlock(lock);
retry:
 not_cleared = 0;
 if ((pvf = TAILQ_FIRST(&pvh->pv_list)) == ((void*)0))
  goto small_mappings;
 pv = pvf;
 do {
  if (pvf == ((void*)0))
   pvf = pv;
  pmap = PV_PMAP(pv);
  if (!PMAP_TRYLOCK(pmap)) {
   pvh_gen = pvh->pv_gen;
   rw_wunlock(lock);
   PMAP_LOCK(pmap);
   rw_wlock(lock);
   if (pvh_gen != pvh->pv_gen) {
    PMAP_UNLOCK(pmap);
    goto retry;
   }
  }
  PG_A = pmap_accessed_bit(pmap);
  PG_M = pmap_modified_bit(pmap);
  PG_RW = pmap_rw_bit(pmap);
  va = pv->pv_va;
  pde = pmap_pde(pmap, pv->pv_va);
  oldpde = *pde;
  if ((oldpde & (PG_M | PG_RW)) == (PG_M | PG_RW)) {





   vm_page_dirty(m);
  }
  if ((oldpde & PG_A) != 0) {
   if ((((pa >> PAGE_SHIFT) ^ (pv->pv_va >> PDRSHIFT) ^
       (uintptr_t)pmap) & (NPTEPG - 1)) == 0 &&
       (oldpde & PG_W) == 0) {
    if (safe_to_clear_referenced(pmap, oldpde)) {
     atomic_clear_long(pde, PG_A);
     pmap_invalidate_page(pmap, pv->pv_va);
     demoted = FALSE;
    } else if (pmap_demote_pde_locked(pmap, pde,
        pv->pv_va, &lock)) {
     demoted = TRUE;
     va += VM_PAGE_TO_PHYS(m) - (oldpde &
         PG_PS_FRAME);
     pte = pmap_pde_to_pte(pde, va);
     pmap_remove_pte(pmap, pte, va, *pde,
         ((void*)0), &lock);
     pmap_invalidate_page(pmap, va);
    } else
     demoted = TRUE;

    if (demoted) {





     if (pvf == pv)
      pvf = ((void*)0);
     pv = ((void*)0);
    }
    cleared++;
    KASSERT(lock == VM_PAGE_TO_PV_LIST_LOCK(m),
        ("inconsistent pv lock %p %p for page %p",
        lock, VM_PAGE_TO_PV_LIST_LOCK(m), m));
   } else
    not_cleared++;
  }
  PMAP_UNLOCK(pmap);

  if (pv != ((void*)0) && TAILQ_NEXT(pv, pv_next) != ((void*)0)) {
   TAILQ_REMOVE(&pvh->pv_list, pv, pv_next);
   TAILQ_INSERT_TAIL(&pvh->pv_list, pv, pv_next);
   pvh->pv_gen++;
  }
  if (cleared + not_cleared >= PMAP_TS_REFERENCED_MAX)
   goto out;
 } while ((pv = TAILQ_FIRST(&pvh->pv_list)) != pvf);
small_mappings:
 if ((pvf = TAILQ_FIRST(&m->md.pv_list)) == ((void*)0))
  goto out;
 pv = pvf;
 do {
  if (pvf == ((void*)0))
   pvf = pv;
  pmap = PV_PMAP(pv);
  if (!PMAP_TRYLOCK(pmap)) {
   pvh_gen = pvh->pv_gen;
   md_gen = m->md.pv_gen;
   rw_wunlock(lock);
   PMAP_LOCK(pmap);
   rw_wlock(lock);
   if (pvh_gen != pvh->pv_gen || md_gen != m->md.pv_gen) {
    PMAP_UNLOCK(pmap);
    goto retry;
   }
  }
  PG_A = pmap_accessed_bit(pmap);
  PG_M = pmap_modified_bit(pmap);
  PG_RW = pmap_rw_bit(pmap);
  pde = pmap_pde(pmap, pv->pv_va);
  KASSERT((*pde & PG_PS) == 0,
      ("pmap_ts_referenced: found a 2mpage in page %p's pv list",
      m));
  pte = pmap_pde_to_pte(pde, pv->pv_va);
  if ((*pte & (PG_M | PG_RW)) == (PG_M | PG_RW))
   vm_page_dirty(m);
  if ((*pte & PG_A) != 0) {
   if (safe_to_clear_referenced(pmap, *pte)) {
    atomic_clear_long(pte, PG_A);
    pmap_invalidate_page(pmap, pv->pv_va);
    cleared++;
   } else if ((*pte & PG_W) == 0) {






    pmap_remove_pte(pmap, pte, pv->pv_va,
        *pde, &free, &lock);
    pmap_invalidate_page(pmap, pv->pv_va);
    cleared++;
    if (pvf == pv)
     pvf = ((void*)0);
    pv = ((void*)0);
    KASSERT(lock == VM_PAGE_TO_PV_LIST_LOCK(m),
        ("inconsistent pv lock %p %p for page %p",
        lock, VM_PAGE_TO_PV_LIST_LOCK(m), m));
   } else
    not_cleared++;
  }
  PMAP_UNLOCK(pmap);

  if (pv != ((void*)0) && TAILQ_NEXT(pv, pv_next) != ((void*)0)) {
   TAILQ_REMOVE(&m->md.pv_list, pv, pv_next);
   TAILQ_INSERT_TAIL(&m->md.pv_list, pv, pv_next);
   m->md.pv_gen++;
  }
 } while ((pv = TAILQ_FIRST(&m->md.pv_list)) != pvf && cleared +
     not_cleared < PMAP_TS_REFERENCED_MAX);
out:
 rw_wunlock(lock);
 vm_page_free_pages_toq(&free, 1);
 return (cleared + not_cleared);
}
