
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_21__ ;
typedef struct TYPE_26__ TYPE_1__ ;


typedef TYPE_3__* vm_page_t ;
struct l2_bucket {scalar_t__* l2b_kva; } ;
typedef TYPE_4__* pv_entry_t ;
typedef scalar_t__ pt_entry_t ;
typedef TYPE_5__* pmap_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_28__ {int resident_count; } ;
struct TYPE_31__ {TYPE_2__ pm_stats; } ;
struct TYPE_30__ {int pv_flags; TYPE_5__* pv_pmap; int pv_va; } ;
struct TYPE_26__ {int pv_kva; int pv_list; } ;
struct TYPE_29__ {int oflags; TYPE_1__ md; } ;
struct TYPE_27__ {int p_vmspace; } ;


 scalar_t__ FALSE ;
 int KASSERT (int,char*) ;
 int PAGE_SIZE ;
 int PGA_WRITEABLE ;
 int PMAP_LOCK (TYPE_5__*) ;
 int PMAP_UNLOCK (TYPE_5__*) ;
 int PTE_SYNC_CURRENT (TYPE_5__*,scalar_t__*) ;
 int PVF_UNMAN ;
 int PVF_WRITE ;
 scalar_t__ PV_BEEN_EXECD (int) ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 TYPE_4__* TAILQ_FIRST (int *) ;
 scalar_t__ TRUE ;
 int VPO_UNMANAGED ;
 int cpu_dcache_inv_range (int ,int ) ;
 int cpu_l2cache_inv_range (int ,int ) ;
 TYPE_21__* curproc ;
 TYPE_5__* kernel_pmap ;
 size_t l2pte_index (int ) ;
 int pmap_clearbit (TYPE_3__*,int ) ;
 int pmap_free_l2_bucket (TYPE_5__*,struct l2_bucket*,int) ;
 int pmap_free_pv_entry (TYPE_4__*) ;
 struct l2_bucket* pmap_get_l2_bucket (TYPE_5__*,int ) ;
 scalar_t__ pmap_has_valid_mapping (TYPE_5__*,int ) ;
 scalar_t__ pmap_is_current (TYPE_5__*) ;
 int pmap_nuke_pv (TYPE_3__*,TYPE_5__*,TYPE_4__*) ;
 int pmap_tlb_flushD (TYPE_5__*) ;
 int pmap_tlb_flushID (TYPE_5__*) ;
 int pvh_global_lock ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;
 int vm_page_aflag_clear (TYPE_3__*,int ) ;
 TYPE_5__* vmspace_pmap (int ) ;

void
pmap_remove_all(vm_page_t m)
{
 pv_entry_t pv;
 pt_entry_t *ptep;
 struct l2_bucket *l2b;
 boolean_t flush = FALSE;
 pmap_t curpm;
 int flags = 0;

 KASSERT((m->oflags & VPO_UNMANAGED) == 0,
     ("pmap_remove_all: page %p is not managed", m));
 if (TAILQ_EMPTY(&m->md.pv_list))
  return;
 rw_wlock(&pvh_global_lock);







 pmap_clearbit(m, PVF_WRITE);
 curpm = vmspace_pmap(curproc->p_vmspace);
 while ((pv = TAILQ_FIRST(&m->md.pv_list)) != ((void*)0)) {
  if (flush == FALSE && (pv->pv_pmap == curpm ||
      pv->pv_pmap == kernel_pmap))
   flush = TRUE;

  PMAP_LOCK(pv->pv_pmap);






  if (pmap_is_current(pv->pv_pmap)) {
   cpu_dcache_inv_range(pv->pv_va, PAGE_SIZE);
   if (pmap_has_valid_mapping(pv->pv_pmap, pv->pv_va))
    cpu_l2cache_inv_range(pv->pv_va, PAGE_SIZE);
  }

  if (pv->pv_flags & PVF_UNMAN) {



   m->md.pv_kva = pv->pv_va;
  } else {

   l2b = pmap_get_l2_bucket(pv->pv_pmap, pv->pv_va);
   KASSERT(l2b != ((void*)0), ("No l2 bucket"));
   ptep = &l2b->l2b_kva[l2pte_index(pv->pv_va)];
   *ptep = 0;
   PTE_SYNC_CURRENT(pv->pv_pmap, ptep);
   pmap_free_l2_bucket(pv->pv_pmap, l2b, 1);
   pv->pv_pmap->pm_stats.resident_count--;
   flags |= pv->pv_flags;
  }
  pmap_nuke_pv(m, pv->pv_pmap, pv);
  PMAP_UNLOCK(pv->pv_pmap);
  pmap_free_pv_entry(pv);
 }

 if (flush) {
  if (PV_BEEN_EXECD(flags))
   pmap_tlb_flushID(curpm);
  else
   pmap_tlb_flushD(curpm);
 }
 vm_page_aflag_clear(m, PGA_WRITEABLE);
 rw_wunlock(&pvh_global_lock);
}
