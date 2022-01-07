
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int vm_offset_t ;


 int L2_S_PROT (int ,int ) ;
 int L2_S_PROTO ;
 int PTE_KERNEL ;
 int PTE_SYNC (int*) ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 int bcopy (char*,char*,int) ;
 int* cdst_pte ;
 int cdstp ;
 int cmtx ;
 int cpu_cpwait () ;
 int cpu_dcache_inv_range (int,int) ;
 int cpu_dcache_wbinv_range (int,int) ;
 int cpu_l2cache_inv_range (int,int) ;
 int cpu_l2cache_wbinv_range (int,int) ;
 int cpu_tlb_flushD_SE (int) ;
 int* csrc_pte ;
 int csrcp ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pte_l2_s_cache_mode ;

void
pmap_copy_page_offs_generic(vm_paddr_t a_phys, vm_offset_t a_offs,
    vm_paddr_t b_phys, vm_offset_t b_offs, int cnt)
{

 mtx_lock(&cmtx);
 *csrc_pte = L2_S_PROTO | a_phys |
     L2_S_PROT(PTE_KERNEL, VM_PROT_READ) | pte_l2_s_cache_mode;
 PTE_SYNC(csrc_pte);
 *cdst_pte = L2_S_PROTO | b_phys |
     L2_S_PROT(PTE_KERNEL, VM_PROT_WRITE) | pte_l2_s_cache_mode;
 PTE_SYNC(cdst_pte);
 cpu_tlb_flushD_SE(csrcp);
 cpu_tlb_flushD_SE(cdstp);
 cpu_cpwait();
 bcopy((char *)csrcp + a_offs, (char *)cdstp + b_offs, cnt);
 mtx_unlock(&cmtx);
 cpu_dcache_inv_range(csrcp + a_offs, cnt);
 cpu_dcache_wbinv_range(cdstp + b_offs, cnt);
 cpu_l2cache_inv_range(csrcp + a_offs, cnt);
 cpu_l2cache_wbinv_range(cdstp + b_offs, cnt);
}
