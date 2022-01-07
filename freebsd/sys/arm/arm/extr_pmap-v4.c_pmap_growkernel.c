
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int pmap_t ;


 scalar_t__ L1_S_SIZE ;
 int cpu_cpwait () ;
 int cpu_dcache_wbinv_all () ;
 int cpu_l2cache_wbinv_all () ;
 int cpu_tlb_flushD () ;
 int kernel_pmap ;
 scalar_t__ kernel_vm_end ;
 scalar_t__ pmap_curmaxkvaddr ;
 int pmap_grow_l2_bucket (int ,scalar_t__) ;

void
pmap_growkernel(vm_offset_t addr)
{
 pmap_t kpm = kernel_pmap;

 if (addr <= pmap_curmaxkvaddr)
  return;






 for (; pmap_curmaxkvaddr < addr; pmap_curmaxkvaddr += L1_S_SIZE)
  pmap_grow_l2_bucket(kpm, pmap_curmaxkvaddr);





 cpu_dcache_wbinv_all();
 cpu_l2cache_wbinv_all();
 cpu_tlb_flushD();
 cpu_cpwait();
 kernel_vm_end = pmap_curmaxkvaddr;
}
