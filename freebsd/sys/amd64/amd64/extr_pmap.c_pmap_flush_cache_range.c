
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;


 int CPUID_STDEXT_CLWB ;
 int atomic_thread_fence_seq_cst () ;
 int clwb (scalar_t__) ;
 scalar_t__ cpu_clflush_line_size ;
 int cpu_stdext_feature ;
 scalar_t__ lapic_paddr ;
 int pmap_force_invalidate_cache_range (scalar_t__,scalar_t__) ;
 int pmap_invalidate_cache_range_check_align (scalar_t__,scalar_t__) ;
 scalar_t__ pmap_kextract (scalar_t__) ;

void
pmap_flush_cache_range(vm_offset_t sva, vm_offset_t eva)
{

 pmap_invalidate_cache_range_check_align(sva, eva);

 if ((cpu_stdext_feature & CPUID_STDEXT_CLWB) == 0) {
  pmap_force_invalidate_cache_range(sva, eva);
  return;
 }


 if (pmap_kextract(sva) == lapic_paddr)
  return;

 atomic_thread_fence_seq_cst();
 for (; sva < eva; sva += cpu_clflush_line_size)
  clwb(sva);
 atomic_thread_fence_seq_cst();
}
