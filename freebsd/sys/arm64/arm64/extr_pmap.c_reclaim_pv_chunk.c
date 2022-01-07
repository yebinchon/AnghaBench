
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_14__ ;


typedef TYPE_3__* vm_page_t ;
typedef int vm_offset_t ;
typedef unsigned long uint64_t ;
struct spglist {int dummy; } ;
struct rwlock {int dummy; } ;
struct pv_chunk_header {int dummy; } ;
struct pv_chunk {unsigned long* pc_map; TYPE_4__* pc_pmap; int pv_va; struct pv_chunk* pc_pventry; } ;
struct md_page {int pv_list; } ;
typedef struct pv_chunk* pv_entry_t ;
typedef int pt_entry_t ;
typedef TYPE_4__* pmap_t ;
typedef int pd_entry_t ;
typedef int pc_marker_end_b ;
typedef int pc_marker_b ;
struct TYPE_27__ {int pm_pvchunk; } ;
struct TYPE_25__ {int pv_list; int pv_gen; } ;
struct TYPE_26__ {int flags; int ref_count; int phys_addr; TYPE_2__ md; } ;
struct TYPE_24__ {int ss; } ;
struct TYPE_23__ {TYPE_1__ s; } ;


 int ATTR_AF ;
 int ATTR_MASK ;
 int ATTR_SW_WIRED ;
 int CHANGE_PV_LIST_LOCK_TO_VM_PAGE (struct rwlock**,TYPE_3__*) ;
 int DMAP_TO_PHYS (int ) ;
 int KASSERT (int ,char*) ;
 int MA_OWNED ;
 int MPASS (int ) ;
 unsigned long PC_FREE0 ;
 unsigned long PC_FREE1 ;
 unsigned long PC_FREE2 ;
 int PGA_REFERENCED ;
 int PGA_WRITEABLE ;
 int PG_FICTITIOUS ;
 TYPE_3__* PHYS_TO_VM_PAGE (int) ;
 int PMAP_LOCK (TYPE_4__*) ;
 int PMAP_LOCK_ASSERT (TYPE_4__*,int ) ;
 scalar_t__ PMAP_TRYLOCK (TYPE_4__*) ;
 int PMAP_UNLOCK (TYPE_4__*) ;
 int PV_STAT (int ) ;
 int RELEASE_PV_LIST_LOCK (struct rwlock**) ;
 scalar_t__ SLIST_EMPTY (struct spglist*) ;
 TYPE_3__* SLIST_FIRST (struct spglist*) ;
 int SLIST_INIT (struct spglist*) ;
 int SLIST_REMOVE_HEAD (struct spglist*,int ) ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 struct pv_chunk* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_AFTER (int *,struct pv_chunk*,struct pv_chunk*,int ) ;
 int TAILQ_INSERT_HEAD (int *,struct pv_chunk*,int ) ;
 int TAILQ_INSERT_TAIL (int *,struct pv_chunk*,int ) ;
 struct pv_chunk* TAILQ_NEXT (struct pv_chunk*,int ) ;
 int TAILQ_REMOVE (int *,struct pv_chunk*,int ) ;
 int VM_PAGE_TO_PHYS (TYPE_3__*) ;
 int _NPCM ;
 int _NPCPV ;
 int atomic_add_int (int *,int) ;
 int atomic_add_long (int *,int) ;
 int atomic_subtract_int (int *,int) ;
 int atomic_subtract_long (int *,int) ;
 int bzero (struct pv_chunk_header*,int) ;
 int dump_drop_page (int ) ;
 int ffsl (unsigned long) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 struct md_page* pa_to_pvh (int ) ;
 int pc_chunk_count ;
 int pc_chunk_frees ;
 unsigned long* pc_freemask ;
 int pc_list ;
 int pc_lru ;
 TYPE_14__ plinks ;
 int pmap_invalidate_page (TYPE_4__*,int ) ;
 int* pmap_l2_to_l3 (int*,int ) ;
 int pmap_load (int*) ;
 int pmap_load_clear (int*) ;
 int* pmap_pde (TYPE_4__*,int ,int*) ;
 scalar_t__ pmap_pte_dirty (int) ;
 int pmap_resident_count_dec (TYPE_4__*,int) ;
 int pmap_unuse_pt (TYPE_4__*,int ,int,struct spglist*) ;
 int pv_chunks ;
 int pv_chunks_mutex ;
 int pv_entry_count ;
 int pv_entry_frees ;
 int pv_entry_spare ;
 int pv_next ;
 int vm_page_aflag_clear (TYPE_3__*,int ) ;
 int vm_page_aflag_set (TYPE_3__*,int ) ;
 int vm_page_dirty (TYPE_3__*) ;
 int vm_page_free_pages_toq (struct spglist*,int) ;

__attribute__((used)) static vm_page_t
reclaim_pv_chunk(pmap_t locked_pmap, struct rwlock **lockp)
{
 struct pv_chunk *pc, *pc_marker, *pc_marker_end;
 struct pv_chunk_header pc_marker_b, pc_marker_end_b;
 struct md_page *pvh;
 pd_entry_t *pde;
 pmap_t next_pmap, pmap;
 pt_entry_t *pte, tpte;
 pv_entry_t pv;
 vm_offset_t va;
 vm_page_t m, m_pc;
 struct spglist free;
 uint64_t inuse;
 int bit, field, freed, lvl;
 static int active_reclaims = 0;

 PMAP_LOCK_ASSERT(locked_pmap, MA_OWNED);
 KASSERT(lockp != ((void*)0), ("reclaim_pv_chunk: lockp is NULL"));

 pmap = ((void*)0);
 m_pc = ((void*)0);
 SLIST_INIT(&free);
 bzero(&pc_marker_b, sizeof(pc_marker_b));
 bzero(&pc_marker_end_b, sizeof(pc_marker_end_b));
 pc_marker = (struct pv_chunk *)&pc_marker_b;
 pc_marker_end = (struct pv_chunk *)&pc_marker_end_b;

 mtx_lock(&pv_chunks_mutex);
 active_reclaims++;
 TAILQ_INSERT_HEAD(&pv_chunks, pc_marker, pc_lru);
 TAILQ_INSERT_TAIL(&pv_chunks, pc_marker_end, pc_lru);
 while ((pc = TAILQ_NEXT(pc_marker, pc_lru)) != pc_marker_end &&
     SLIST_EMPTY(&free)) {
  next_pmap = pc->pc_pmap;
  if (next_pmap == ((void*)0)) {






   goto next_chunk;
  }
  mtx_unlock(&pv_chunks_mutex);






  if (pmap != next_pmap) {
   if (pmap != ((void*)0) && pmap != locked_pmap)
    PMAP_UNLOCK(pmap);
   pmap = next_pmap;

   if (pmap > locked_pmap) {
    RELEASE_PV_LIST_LOCK(lockp);
    PMAP_LOCK(pmap);
    mtx_lock(&pv_chunks_mutex);
    continue;
   } else if (pmap != locked_pmap) {
    if (PMAP_TRYLOCK(pmap)) {
     mtx_lock(&pv_chunks_mutex);
     continue;
    } else {
     pmap = ((void*)0);
     mtx_lock(&pv_chunks_mutex);
     pc = TAILQ_NEXT(pc_marker, pc_lru);
     if (pc == ((void*)0) ||
         pc->pc_pmap != next_pmap)
      continue;
     goto next_chunk;
    }
   }
  }




  freed = 0;
  for (field = 0; field < _NPCM; field++) {
   for (inuse = ~pc->pc_map[field] & pc_freemask[field];
       inuse != 0; inuse &= ~(1UL << bit)) {
    bit = ffsl(inuse) - 1;
    pv = &pc->pc_pventry[field * 64 + bit];
    va = pv->pv_va;
    pde = pmap_pde(pmap, va, &lvl);
    if (lvl != 2)
     continue;
    pte = pmap_l2_to_l3(pde, va);
    tpte = pmap_load(pte);
    if ((tpte & ATTR_SW_WIRED) != 0)
     continue;
    tpte = pmap_load_clear(pte);
    pmap_invalidate_page(pmap, va);
    m = PHYS_TO_VM_PAGE(tpte & ~ATTR_MASK);
    if (pmap_pte_dirty(tpte))
     vm_page_dirty(m);
    if ((tpte & ATTR_AF) != 0)
     vm_page_aflag_set(m, PGA_REFERENCED);
    CHANGE_PV_LIST_LOCK_TO_VM_PAGE(lockp, m);
    TAILQ_REMOVE(&m->md.pv_list, pv, pv_next);
    m->md.pv_gen++;
    if (TAILQ_EMPTY(&m->md.pv_list) &&
        (m->flags & PG_FICTITIOUS) == 0) {
     pvh = pa_to_pvh(VM_PAGE_TO_PHYS(m));
     if (TAILQ_EMPTY(&pvh->pv_list)) {
      vm_page_aflag_clear(m,
          PGA_WRITEABLE);
     }
    }
    pc->pc_map[field] |= 1UL << bit;
    pmap_unuse_pt(pmap, va, pmap_load(pde), &free);
    freed++;
   }
  }
  if (freed == 0) {
   mtx_lock(&pv_chunks_mutex);
   goto next_chunk;
  }

  pmap_resident_count_dec(pmap, freed);
  PV_STAT(atomic_add_long(&pv_entry_frees, freed));
  PV_STAT(atomic_add_int(&pv_entry_spare, freed));
  PV_STAT(atomic_subtract_long(&pv_entry_count, freed));
  TAILQ_REMOVE(&pmap->pm_pvchunk, pc, pc_list);
  if (pc->pc_map[0] == PC_FREE0 && pc->pc_map[1] == PC_FREE1 &&
      pc->pc_map[2] == PC_FREE2) {
   PV_STAT(atomic_subtract_int(&pv_entry_spare, _NPCPV));
   PV_STAT(atomic_subtract_int(&pc_chunk_count, 1));
   PV_STAT(atomic_add_int(&pc_chunk_frees, 1));

   m_pc = PHYS_TO_VM_PAGE(DMAP_TO_PHYS((vm_offset_t)pc));
   dump_drop_page(m_pc->phys_addr);
   mtx_lock(&pv_chunks_mutex);
   TAILQ_REMOVE(&pv_chunks, pc, pc_lru);
   break;
  }
  TAILQ_INSERT_HEAD(&pmap->pm_pvchunk, pc, pc_list);
  mtx_lock(&pv_chunks_mutex);

  if (pmap == locked_pmap)
   break;

next_chunk:
  TAILQ_REMOVE(&pv_chunks, pc_marker, pc_lru);
  TAILQ_INSERT_AFTER(&pv_chunks, pc, pc_marker, pc_lru);
  if (active_reclaims == 1 && pmap != ((void*)0)) {







   while ((pc = TAILQ_FIRST(&pv_chunks)) != pc_marker) {
    MPASS(pc->pc_pmap != ((void*)0));
    TAILQ_REMOVE(&pv_chunks, pc, pc_lru);
    TAILQ_INSERT_TAIL(&pv_chunks, pc, pc_lru);
   }
  }
 }
 TAILQ_REMOVE(&pv_chunks, pc_marker, pc_lru);
 TAILQ_REMOVE(&pv_chunks, pc_marker_end, pc_lru);
 active_reclaims--;
 mtx_unlock(&pv_chunks_mutex);
 if (pmap != ((void*)0) && pmap != locked_pmap)
  PMAP_UNLOCK(pmap);
 if (m_pc == ((void*)0) && !SLIST_EMPTY(&free)) {
  m_pc = SLIST_FIRST(&free);
  SLIST_REMOVE_HEAD(&free, plinks.s.ss);

  m_pc->ref_count = 1;
 }
 vm_page_free_pages_toq(&free, 1);
 return (m_pc);
}
