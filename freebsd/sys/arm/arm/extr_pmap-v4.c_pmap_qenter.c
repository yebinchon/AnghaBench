
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
typedef int vm_offset_t ;


 int KENTER_CACHE ;
 scalar_t__ PAGE_SIZE ;
 int VM_PAGE_TO_PHYS (int ) ;
 int pmap_kenter_internal (int ,int ,int ) ;
 int pmap_wb_page (int ) ;

void
pmap_qenter(vm_offset_t va, vm_page_t *m, int count)
{
 int i;

 for (i = 0; i < count; i++) {
  pmap_wb_page(m[i]);
  pmap_kenter_internal(va, VM_PAGE_TO_PHYS(m[i]),
      KENTER_CACHE);
  va += PAGE_SIZE;
 }
}
