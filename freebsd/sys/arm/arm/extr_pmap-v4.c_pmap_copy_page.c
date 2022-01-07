
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;


 int IS_PHYSICAL ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ VM_PAGE_TO_PHYS (int ) ;
 scalar_t__ _arm_memcpy (void*,void*,scalar_t__,int ) ;
 scalar_t__ _min_memcpy_size ;
 int cpu_dcache_wbinv_all () ;
 int cpu_l2cache_wbinv_all () ;
 int pmap_copy_page_generic (scalar_t__,scalar_t__) ;

void
pmap_copy_page(vm_page_t src, vm_page_t dst)
{

 cpu_dcache_wbinv_all();
 cpu_l2cache_wbinv_all();
 if (_arm_memcpy && PAGE_SIZE >= _min_memcpy_size &&
     _arm_memcpy((void *)VM_PAGE_TO_PHYS(dst),
     (void *)VM_PAGE_TO_PHYS(src), PAGE_SIZE, IS_PHYSICAL) == 0)
  return;
 pmap_copy_page_generic(VM_PAGE_TO_PHYS(src), VM_PAGE_TO_PHYS(dst));
}
