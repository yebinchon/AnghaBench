
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_15__ ;


typedef TYPE_4__* vm_page_t ;
typedef int vm_offset_t ;
typedef unsigned long uint32_t ;
struct spglist {int dummy; } ;
struct pv_chunk {unsigned long* pc_map; int pv_va; struct pv_chunk* pc_pventry; TYPE_5__* pc_pmap; } ;
struct pch {int dummy; } ;
struct md_page {int pv_list; } ;
typedef struct pv_chunk* pv_entry_t ;
typedef int pt2_entry_t ;
typedef int pt1_entry_t ;
typedef TYPE_5__* pmap_t ;
struct TYPE_25__ {int resident_count; } ;
struct TYPE_28__ {int pm_pvchunk; TYPE_2__ pm_stats; } ;
struct TYPE_24__ {int pv_list; } ;
struct TYPE_27__ {int flags; int ref_count; TYPE_1__ md; } ;
struct TYPE_26__ {int ss; } ;
struct TYPE_23__ {TYPE_3__ s; } ;


 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int PGA_REFERENCED ;
 int PGA_WRITEABLE ;
 int PG_FICTITIOUS ;
 TYPE_4__* PHYS_TO_VM_PAGE (int ) ;
 int PMAP_LOCK (TYPE_5__*) ;
 int PMAP_LOCK_ASSERT (TYPE_5__*,int ) ;
 int PMAP_TRYLOCK (TYPE_5__*) ;
 int PMAP_UNLOCK (TYPE_5__*) ;
 int PTE2_A ;
 int PTE2_W ;
 int PV_STAT (int) ;
 scalar_t__ SLIST_EMPTY (struct spglist*) ;
 TYPE_4__* SLIST_FIRST (struct spglist*) ;
 int SLIST_INIT (struct spglist*) ;
 int SLIST_REMOVE_HEAD (struct spglist*,int ) ;
 int TAILQ_CONCAT (int *,struct pch*,int ) ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 struct pv_chunk* TAILQ_FIRST (int *) ;
 int TAILQ_INIT (struct pch*) ;
 int TAILQ_INSERT_HEAD (int *,struct pv_chunk*,int ) ;
 int TAILQ_INSERT_TAIL (struct pch*,struct pv_chunk*,int ) ;
 int TAILQ_REMOVE (int *,struct pv_chunk*,int ) ;
 int VM_PAGE_TO_PHYS (TYPE_4__*) ;
 int _NPCM ;
 int _NPCPV ;
 int ffs (unsigned long) ;
 struct md_page* pa_to_pvh (int ) ;
 int pc_chunk_count ;
 int pc_chunk_frees ;
 unsigned long* pc_freemask ;
 int pc_list ;
 int pc_lru ;
 TYPE_15__ plinks ;
 int pmap_kextract (int ) ;
 int * pmap_pte1 (TYPE_5__*,int ) ;
 int* pmap_pte2 (TYPE_5__*,int ) ;
 int pmap_pte2_release (int*) ;
 int pmap_pte2list_free (scalar_t__*,int ) ;
 int pmap_qremove (int ,int) ;
 int pmap_tlb_flush (TYPE_5__*,int ) ;
 int pmap_unuse_pt2 (TYPE_5__*,int ,struct spglist*) ;
 scalar_t__ pte1_is_section (int ) ;
 int pte1_load (int *) ;
 scalar_t__ pte2_is_dirty (int) ;
 int pte2_load (int*) ;
 int pte2_load_clear (int*) ;
 int pte2_pa (int) ;
 int pv_chunks ;
 int pv_entry_count ;
 int pv_entry_frees ;
 int pv_entry_spare ;
 int pv_next ;
 scalar_t__ pv_vafree ;
 int vm_page_aflag_clear (TYPE_4__*,int ) ;
 int vm_page_aflag_set (TYPE_4__*,int ) ;
 int vm_page_dirty (TYPE_4__*) ;
 int vm_page_free_pages_toq (struct spglist*,int) ;
 int vm_wire_add (int) ;

__attribute__((used)) static vm_page_t
pmap_pv_reclaim(pmap_t locked_pmap)
{
 struct pch newtail;
 struct pv_chunk *pc;
 struct md_page *pvh;
 pt1_entry_t *pte1p;
 pmap_t pmap;
 pt2_entry_t *pte2p, tpte2;
 pv_entry_t pv;
 vm_offset_t va;
 vm_page_t m, m_pc;
 struct spglist free;
 uint32_t inuse;
 int bit, field, freed;

 PMAP_LOCK_ASSERT(locked_pmap, MA_OWNED);
 pmap = ((void*)0);
 m_pc = ((void*)0);
 SLIST_INIT(&free);
 TAILQ_INIT(&newtail);
 while ((pc = TAILQ_FIRST(&pv_chunks)) != ((void*)0) && (pv_vafree == 0 ||
     SLIST_EMPTY(&free))) {
  TAILQ_REMOVE(&pv_chunks, pc, pc_lru);
  if (pmap != pc->pc_pmap) {
   if (pmap != ((void*)0)) {
    if (pmap != locked_pmap)
     PMAP_UNLOCK(pmap);
   }
   pmap = pc->pc_pmap;

   if (pmap > locked_pmap)
    PMAP_LOCK(pmap);
   else if (pmap != locked_pmap && !PMAP_TRYLOCK(pmap)) {
    pmap = ((void*)0);
    TAILQ_INSERT_TAIL(&newtail, pc, pc_lru);
    continue;
   }
  }




  freed = 0;
  for (field = 0; field < _NPCM; field++) {
   for (inuse = ~pc->pc_map[field] & pc_freemask[field];
       inuse != 0; inuse &= ~(1UL << bit)) {
    bit = ffs(inuse) - 1;
    pv = &pc->pc_pventry[field * 32 + bit];
    va = pv->pv_va;
    pte1p = pmap_pte1(pmap, va);
    if (pte1_is_section(pte1_load(pte1p)))
     continue;
    pte2p = pmap_pte2(pmap, va);
    tpte2 = pte2_load(pte2p);
    if ((tpte2 & PTE2_W) == 0)
     tpte2 = pte2_load_clear(pte2p);
    pmap_pte2_release(pte2p);
    if ((tpte2 & PTE2_W) != 0)
     continue;
    KASSERT(tpte2 != 0,
        ("pmap_pv_reclaim: pmap %p va %#x zero pte",
        pmap, va));
    pmap_tlb_flush(pmap, va);
    m = PHYS_TO_VM_PAGE(pte2_pa(tpte2));
    if (pte2_is_dirty(tpte2))
     vm_page_dirty(m);
    if ((tpte2 & PTE2_A) != 0)
     vm_page_aflag_set(m, PGA_REFERENCED);
    TAILQ_REMOVE(&m->md.pv_list, pv, pv_next);
    if (TAILQ_EMPTY(&m->md.pv_list) &&
        (m->flags & PG_FICTITIOUS) == 0) {
     pvh = pa_to_pvh(VM_PAGE_TO_PHYS(m));
     if (TAILQ_EMPTY(&pvh->pv_list)) {
      vm_page_aflag_clear(m,
          PGA_WRITEABLE);
     }
    }
    pc->pc_map[field] |= 1UL << bit;
    pmap_unuse_pt2(pmap, va, &free);
    freed++;
   }
  }
  if (freed == 0) {
   TAILQ_INSERT_TAIL(&newtail, pc, pc_lru);
   continue;
  }

  pmap->pm_stats.resident_count -= freed;
  PV_STAT(pv_entry_frees += freed);
  PV_STAT(pv_entry_spare += freed);
  pv_entry_count -= freed;
  TAILQ_REMOVE(&pmap->pm_pvchunk, pc, pc_list);
  for (field = 0; field < _NPCM; field++)
   if (pc->pc_map[field] != pc_freemask[field]) {
    TAILQ_INSERT_HEAD(&pmap->pm_pvchunk, pc,
        pc_list);
    TAILQ_INSERT_TAIL(&newtail, pc, pc_lru);





    if (pmap == locked_pmap)
     goto out;
    break;
   }
  if (field == _NPCM) {
   PV_STAT(pv_entry_spare -= _NPCPV);
   PV_STAT(pc_chunk_count--);
   PV_STAT(pc_chunk_frees++);

   m_pc = PHYS_TO_VM_PAGE(pmap_kextract((vm_offset_t)pc));
   pmap_qremove((vm_offset_t)pc, 1);
   pmap_pte2list_free(&pv_vafree, (vm_offset_t)pc);
   break;
  }
 }
out:
 TAILQ_CONCAT(&pv_chunks, &newtail, pc_lru);
 if (pmap != ((void*)0)) {
  if (pmap != locked_pmap)
   PMAP_UNLOCK(pmap);
 }
 if (m_pc == ((void*)0) && pv_vafree != 0 && SLIST_EMPTY(&free)) {
  m_pc = SLIST_FIRST(&free);
  SLIST_REMOVE_HEAD(&free, plinks.s.ss);

  m_pc->ref_count = 1;
  vm_wire_add(1);
 }
 vm_page_free_pages_toq(&free, 0);
 return (m_pc);
}
