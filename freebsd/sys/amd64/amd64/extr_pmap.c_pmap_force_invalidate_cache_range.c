
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;


 int CPUID_STDEXT_CLFLUSHOPT ;
 scalar_t__ CPU_VENDOR_INTEL ;
 int atomic_thread_fence_seq_cst () ;
 int clflush (scalar_t__) ;
 int clflushopt (scalar_t__) ;
 int cpu_clflush_line_size ;
 int cpu_stdext_feature ;
 scalar_t__ cpu_vendor_id ;
 scalar_t__ lapic_paddr ;
 int mfence () ;
 scalar_t__ pmap_kextract (scalar_t__) ;

void
pmap_force_invalidate_cache_range(vm_offset_t sva, vm_offset_t eva)
{

 sva &= ~(vm_offset_t)(cpu_clflush_line_size - 1);







 if (pmap_kextract(sva) == lapic_paddr)
  return;

 if ((cpu_stdext_feature & CPUID_STDEXT_CLFLUSHOPT) != 0) {







  atomic_thread_fence_seq_cst();
  for (; sva < eva; sva += cpu_clflush_line_size)
   clflushopt(sva);
  atomic_thread_fence_seq_cst();
 } else {



  if (cpu_vendor_id != CPU_VENDOR_INTEL)
   mfence();
  for (; sva < eva; sva += cpu_clflush_line_size)
   clflush(sva);
  if (cpu_vendor_id != CPU_VENDOR_INTEL)
   mfence();
 }
}
