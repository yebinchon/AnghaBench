
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_paddr_t ;
struct TYPE_2__ {int pv_list; } ;
struct vm_page {TYPE_1__ md; } ;


 int L2_S_PROT (int ,int ) ;
 int L2_S_PROTO ;
 int PAGE_SIZE ;
 struct vm_page* PHYS_TO_VM_PAGE (int) ;
 int PTE_KERNEL ;
 int PTE_SYNC (int*) ;
 int TAILQ_FIRST (int *) ;
 int TRUE ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 int bcopy_page (int ,int ) ;
 int* cdst_pte ;
 int cdstp ;
 int cmtx ;
 int cpu_cpwait () ;
 int cpu_dcache_inv_range (int ,int ) ;
 int cpu_dcache_wbinv_range (int ,int ) ;
 int cpu_l2cache_inv_range (int ,int ) ;
 int cpu_l2cache_wbinv_range (int ,int ) ;
 int cpu_tlb_flushD_SE (int ) ;
 int* csrc_pte ;
 int csrcp ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pmap_clean_page (int ,int ) ;
 int pte_l2_s_cache_mode ;

__attribute__((used)) static void
pmap_copy_page_generic(vm_paddr_t src, vm_paddr_t dst)
{
 mtx_lock(&cmtx);
 *csrc_pte = L2_S_PROTO | src |
     L2_S_PROT(PTE_KERNEL, VM_PROT_READ) | pte_l2_s_cache_mode;
 PTE_SYNC(csrc_pte);
 *cdst_pte = L2_S_PROTO | dst |
     L2_S_PROT(PTE_KERNEL, VM_PROT_WRITE) | pte_l2_s_cache_mode;
 PTE_SYNC(cdst_pte);
 cpu_tlb_flushD_SE(csrcp);
 cpu_tlb_flushD_SE(cdstp);
 cpu_cpwait();
 bcopy_page(csrcp, cdstp);
 mtx_unlock(&cmtx);
 cpu_dcache_inv_range(csrcp, PAGE_SIZE);
 cpu_dcache_wbinv_range(cdstp, PAGE_SIZE);
 cpu_l2cache_inv_range(csrcp, PAGE_SIZE);
 cpu_l2cache_wbinv_range(cdstp, PAGE_SIZE);
}
