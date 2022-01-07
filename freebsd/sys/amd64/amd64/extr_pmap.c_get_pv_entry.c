
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
struct rwlock {int dummy; } ;
struct pv_chunks_list {int pvc_lock; int pvc_list; } ;
struct pv_chunk {int* pc_map; int * pc_pventry; TYPE_2__* pc_pmap; } ;
typedef int * pv_entry_t ;
typedef TYPE_2__* pmap_t ;
struct TYPE_9__ {int pm_pvchunk; } ;
struct TYPE_8__ {int phys_addr; } ;


 int MA_OWNED ;
 unsigned long PC_FREE0 ;
 unsigned long PC_FREE1 ;
 unsigned long PC_FREE2 ;
 scalar_t__ PHYS_TO_DMAP (int ) ;
 int PMAP_LOCK_ASSERT (TYPE_2__*,int ) ;
 int PV_STAT (int ) ;
 struct pv_chunk* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_HEAD (int *,struct pv_chunk*,int ) ;
 int TAILQ_INSERT_TAIL (int *,struct pv_chunk*,int ) ;
 int TAILQ_REMOVE (int *,struct pv_chunk*,int ) ;
 int VM_ALLOC_NOOBJ ;
 int VM_ALLOC_NORMAL ;
 int VM_ALLOC_WIRED ;
 int _NPCM ;
 int _NPCPV ;
 size_t _vm_phys_domain (int ) ;
 int atomic_add_int (int *,int) ;
 int atomic_add_long (int *,int) ;
 int atomic_subtract_int (int *,int) ;
 int bsfq (int) ;
 int dump_add_page (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pc_chunk_allocs ;
 int pc_chunk_count ;
 int pc_chunk_tryfail ;
 int pc_list ;
 int pc_lru ;
 struct pv_chunks_list* pv_chunks ;
 int pv_entry_allocs ;
 int pv_entry_count ;
 int pv_entry_spare ;
 TYPE_1__* reclaim_pv_chunk (TYPE_2__*,struct rwlock**) ;
 TYPE_1__* vm_page_alloc (int *,int ,int) ;

__attribute__((used)) static pv_entry_t
get_pv_entry(pmap_t pmap, struct rwlock **lockp)
{
 struct pv_chunks_list *pvc;
 int bit, field;
 pv_entry_t pv;
 struct pv_chunk *pc;
 vm_page_t m;

 PMAP_LOCK_ASSERT(pmap, MA_OWNED);
 PV_STAT(atomic_add_long(&pv_entry_allocs, 1));
retry:
 pc = TAILQ_FIRST(&pmap->pm_pvchunk);
 if (pc != ((void*)0)) {
  for (field = 0; field < _NPCM; field++) {
   if (pc->pc_map[field]) {
    bit = bsfq(pc->pc_map[field]);
    break;
   }
  }
  if (field < _NPCM) {
   pv = &pc->pc_pventry[field * 64 + bit];
   pc->pc_map[field] &= ~(1ul << bit);

   if (pc->pc_map[0] == 0 && pc->pc_map[1] == 0 &&
       pc->pc_map[2] == 0) {
    TAILQ_REMOVE(&pmap->pm_pvchunk, pc, pc_list);
    TAILQ_INSERT_TAIL(&pmap->pm_pvchunk, pc,
        pc_list);
   }
   PV_STAT(atomic_add_long(&pv_entry_count, 1));
   PV_STAT(atomic_subtract_int(&pv_entry_spare, 1));
   return (pv);
  }
 }

 m = vm_page_alloc(((void*)0), 0, VM_ALLOC_NORMAL | VM_ALLOC_NOOBJ |
     VM_ALLOC_WIRED);
 if (m == ((void*)0)) {
  if (lockp == ((void*)0)) {
   PV_STAT(pc_chunk_tryfail++);
   return (((void*)0));
  }
  m = reclaim_pv_chunk(pmap, lockp);
  if (m == ((void*)0))
   goto retry;
 }
 PV_STAT(atomic_add_int(&pc_chunk_count, 1));
 PV_STAT(atomic_add_int(&pc_chunk_allocs, 1));
 dump_add_page(m->phys_addr);
 pc = (void *)PHYS_TO_DMAP(m->phys_addr);
 pc->pc_pmap = pmap;
 pc->pc_map[0] = PC_FREE0 & ~1ul;
 pc->pc_map[1] = PC_FREE1;
 pc->pc_map[2] = PC_FREE2;
 pvc = &pv_chunks[_vm_phys_domain(m->phys_addr)];
 mtx_lock(&pvc->pvc_lock);
 TAILQ_INSERT_TAIL(&pvc->pvc_list, pc, pc_lru);
 mtx_unlock(&pvc->pvc_lock);
 pv = &pc->pc_pventry[0];
 TAILQ_INSERT_HEAD(&pmap->pm_pvchunk, pc, pc_list);
 PV_STAT(atomic_add_long(&pv_entry_count, 1));
 PV_STAT(atomic_add_int(&pv_entry_spare, _NPCPV - 1));
 return (pv);
}
