
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct l2_bucket {int* l2b_kva; } ;
typedef int pt_entry_t ;


 int L2_S_CACHE_MASK ;
 int L2_TABLE_SIZE_REAL ;
 int PAGE_MASK ;
 int PTE_SYNC (int*) ;
 int PTE_SYNC_RANGE (void*,int) ;
 int cpu_cpwait () ;
 int cpu_tlb_flushD_SE (int) ;
 int kernel_pmap ;
 size_t l2pte_index (int) ;
 int memset (void*,int ,int) ;
 struct l2_bucket* pmap_get_l2_bucket (int ,int) ;
 int pte_l2_s_cache_mode_pt ;

__attribute__((used)) static int
pmap_l2ptp_ctor(void *mem, int size, void *arg, int flags)
{

 struct l2_bucket *l2b;
 pt_entry_t *ptep, pte;

 vm_offset_t va = (vm_offset_t)mem & ~PAGE_MASK;
  l2b = pmap_get_l2_bucket(kernel_pmap, va);
  ptep = &l2b->l2b_kva[l2pte_index(va)];
  pte = *ptep;

  if ((pte & L2_S_CACHE_MASK) != pte_l2_s_cache_mode_pt) {




   *ptep = (pte & ~L2_S_CACHE_MASK) | pte_l2_s_cache_mode_pt;
   PTE_SYNC(ptep);
   cpu_tlb_flushD_SE(va);
   cpu_cpwait();
  }

 memset(mem, 0, L2_TABLE_SIZE_REAL);
 PTE_SYNC_RANGE(mem, L2_TABLE_SIZE_REAL / sizeof(pt_entry_t));
 return (0);
}
