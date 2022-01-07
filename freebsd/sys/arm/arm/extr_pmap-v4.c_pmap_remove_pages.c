
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef TYPE_3__* vm_page_t ;
typedef scalar_t__ vm_offset_t ;
struct pv_entry {int pv_flags; int pv_va; } ;
struct l2_bucket {int* l2b_kva; } ;
typedef int pt_entry_t ;
typedef TYPE_4__* pmap_t ;
struct TYPE_14__ {int resident_count; } ;
struct TYPE_17__ {TYPE_1__ pm_stats; int pm_pvlist; } ;
struct TYPE_15__ {int pv_list; } ;
struct TYPE_16__ {TYPE_2__ md; } ;


 int KASSERT (int,char*) ;
 scalar_t__ KERNBASE ;
 int L2_S_FRAME ;
 int PGA_WRITEABLE ;
 TYPE_3__* PHYS_TO_VM_PAGE (int) ;
 int PMAP_LOCK (TYPE_4__*) ;
 int PMAP_UNLOCK (TYPE_4__*) ;
 int PTE_SYNC (int*) ;
 int PVF_UNMAN ;
 int PVF_WIRED ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 struct pv_entry* TAILQ_FIRST (int *) ;
 struct pv_entry* TAILQ_NEXT (struct pv_entry*,int ) ;
 int cpu_cpwait () ;
 int cpu_idcache_wbinv_all () ;
 int cpu_l2cache_wbinv_all () ;
 int cpu_tlb_flushID () ;
 size_t l2pte_index (int ) ;
 int pmap_free_l2_bucket (TYPE_4__*,struct l2_bucket*,int) ;
 int pmap_free_pv_entry (struct pv_entry*) ;
 struct l2_bucket* pmap_get_l2_bucket (TYPE_4__*,int ) ;
 int pmap_nuke_pv (TYPE_3__*,TYPE_4__*,struct pv_entry*) ;
 int pv_plist ;
 int pvh_global_lock ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;
 int vm_page_aflag_clear (TYPE_3__*,int ) ;

void
pmap_remove_pages(pmap_t pmap)
{
 struct pv_entry *pv, *npv;
 struct l2_bucket *l2b = ((void*)0);
 vm_page_t m;
 pt_entry_t *pt;

 rw_wlock(&pvh_global_lock);
 PMAP_LOCK(pmap);
 cpu_idcache_wbinv_all();
 cpu_l2cache_wbinv_all();
 for (pv = TAILQ_FIRST(&pmap->pm_pvlist); pv; pv = npv) {
  if (pv->pv_flags & PVF_WIRED || pv->pv_flags & PVF_UNMAN) {

   npv = TAILQ_NEXT(pv, pv_plist);
   continue;
  }
  pmap->pm_stats.resident_count--;
  l2b = pmap_get_l2_bucket(pmap, pv->pv_va);
  KASSERT(l2b != ((void*)0), ("No L2 bucket in pmap_remove_pages"));
  pt = &l2b->l2b_kva[l2pte_index(pv->pv_va)];
  m = PHYS_TO_VM_PAGE(*pt & L2_S_FRAME);
  KASSERT((vm_offset_t)m >= KERNBASE, ("Trying to access non-existent page va %x pte %x", pv->pv_va, *pt));
  *pt = 0;
  PTE_SYNC(pt);
  npv = TAILQ_NEXT(pv, pv_plist);
  pmap_nuke_pv(m, pmap, pv);
  if (TAILQ_EMPTY(&m->md.pv_list))
   vm_page_aflag_clear(m, PGA_WRITEABLE);
  pmap_free_pv_entry(pv);
  pmap_free_l2_bucket(pmap, l2b, 1);
 }
 rw_wunlock(&pvh_global_lock);
 cpu_tlb_flushID();
 cpu_cpwait();
 PMAP_UNLOCK(pmap);
}
