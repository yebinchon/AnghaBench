
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef scalar_t__ vm_offset_t ;


 int CPUID_CLFSH ;
 int CPUID_STDEXT_CLFLUSHOPT ;
 scalar_t__ CPU_VENDOR_INTEL ;
 int PAGE_SIZE ;
 scalar_t__ PHYS_TO_DMAP (int ) ;
 int PMAP_CLFLUSH_THRESHOLD ;
 int VM_PAGE_TO_PHYS (int ) ;
 int atomic_thread_fence_seq_cst () ;
 int clflush (scalar_t__) ;
 int clflushopt (scalar_t__) ;
 scalar_t__ cpu_clflush_line_size ;
 int cpu_feature ;
 int cpu_stdext_feature ;
 scalar_t__ cpu_vendor_id ;
 int mfence () ;
 int pmap_invalidate_cache () ;

void
pmap_invalidate_cache_pages(vm_page_t *pages, int count)
{
 vm_offset_t daddr, eva;
 int i;
 bool useclflushopt;

 useclflushopt = (cpu_stdext_feature & CPUID_STDEXT_CLFLUSHOPT) != 0;
 if (count >= PMAP_CLFLUSH_THRESHOLD / PAGE_SIZE ||
     ((cpu_feature & CPUID_CLFSH) == 0 && !useclflushopt))
  pmap_invalidate_cache();
 else {
  if (useclflushopt)
   atomic_thread_fence_seq_cst();
  else if (cpu_vendor_id != CPU_VENDOR_INTEL)
   mfence();
  for (i = 0; i < count; i++) {
   daddr = PHYS_TO_DMAP(VM_PAGE_TO_PHYS(pages[i]));
   eva = daddr + PAGE_SIZE;
   for (; daddr < eva; daddr += cpu_clflush_line_size) {
    if (useclflushopt)
     clflushopt(daddr);
    else
     clflush(daddr);
   }
  }
  if (useclflushopt)
   atomic_thread_fence_seq_cst();
  else if (cpu_vendor_id != CPU_VENDOR_INTEL)
   mfence();
 }
}
