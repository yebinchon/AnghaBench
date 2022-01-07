
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef int vm_offset_t ;
struct pv_entry {int dummy; } ;
struct l2_bucket {int* l2b_kva; } ;
typedef int pt_entry_t ;


 int KASSERT (int ,char*) ;
 int L2_L_FRAME ;
 int L2_L_OFFSET ;
 int L2_S_FRAME ;
 int L2_S_OFFSET ;
 int L2_TYPE_L ;
 int L2_TYPE_MASK ;
 int PAGE_MASK ;
 int PAGE_SIZE ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int cpu_cpwait () ;
 int cpu_dcache_wbinv_range (int,int ) ;
 int cpu_l2cache_wbinv_range (int,int ) ;
 int cpu_tlb_flushD_SE (int) ;
 int kernel_pmap ;
 size_t l2pte_index (int) ;
 scalar_t__ l2pte_valid (int) ;
 int pmap_free_pv_entry (struct pv_entry*) ;
 struct l2_bucket* pmap_get_l2_bucket (int ,int) ;
 struct pv_entry* pmap_remove_pv (int ,int ,int) ;
 int pvh_global_lock ;
 int * pvzone ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;
 int vm_phys_paddr_to_vm_page (int) ;

void
pmap_kremove(vm_offset_t va)
{
 struct l2_bucket *l2b;
 pt_entry_t *pte, opte;
 struct pv_entry *pve;
 vm_page_t m;
 vm_offset_t pa;

 l2b = pmap_get_l2_bucket(kernel_pmap, va);
 if (!l2b)
  return;
 KASSERT(l2b != ((void*)0), ("No L2 Bucket"));
 pte = &l2b->l2b_kva[l2pte_index(va)];
 opte = *pte;
 if (l2pte_valid(opte)) {

  if ((opte & L2_TYPE_MASK) == L2_TYPE_L)
   pa = (opte & L2_L_FRAME) | (va & L2_L_OFFSET);
  else
   pa = (opte & L2_S_FRAME) | (va & L2_S_OFFSET);



  rw_wlock(&pvh_global_lock);
  PMAP_LOCK(kernel_pmap);
  if (pvzone != ((void*)0) && (m = vm_phys_paddr_to_vm_page(pa)) &&
      (pve = pmap_remove_pv(m, kernel_pmap, va)))
   pmap_free_pv_entry(pve);
  PMAP_UNLOCK(kernel_pmap);
  rw_wunlock(&pvh_global_lock);
  va = va & ~PAGE_MASK;
  cpu_dcache_wbinv_range(va, PAGE_SIZE);
  cpu_l2cache_wbinv_range(va, PAGE_SIZE);
  cpu_tlb_flushD_SE(va);
  cpu_cpwait();
  *pte = 0;
 }
}
