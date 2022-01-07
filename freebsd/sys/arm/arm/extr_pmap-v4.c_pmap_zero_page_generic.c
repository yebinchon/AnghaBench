
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;


 int IS_PHYSICAL ;
 int L2_S_PROT (int ,int ) ;
 int L2_S_PROTO ;
 int PAGE_SIZE ;
 int PTE_KERNEL ;
 int PTE_SYNC (int*) ;
 int VM_PROT_WRITE ;
 scalar_t__ _arm_bzero (void*,int,int ) ;
 int _min_bzero_size ;
 int bzero (void*,int) ;
 int bzero_page (scalar_t__) ;
 int* cdst_pte ;
 scalar_t__ cdstp ;
 int cmtx ;
 int cpu_cpwait () ;
 int cpu_tlb_flushD_SE (scalar_t__) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
pmap_zero_page_generic(vm_paddr_t phys, int off, int size)
{

 if (_arm_bzero && size >= _min_bzero_size &&
     _arm_bzero((void *)(phys + off), size, IS_PHYSICAL) == 0)
  return;

 mtx_lock(&cmtx);






 *cdst_pte = L2_S_PROTO | phys | L2_S_PROT(PTE_KERNEL, VM_PROT_WRITE);
 PTE_SYNC(cdst_pte);
 cpu_tlb_flushD_SE(cdstp);
 cpu_cpwait();
 if (off || size != PAGE_SIZE)
  bzero((void *)(cdstp + off), size);
 else
  bzero_page(cdstp);

 mtx_unlock(&cmtx);
}
