
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef size_t uint64_t ;


 size_t IOMMU_REMOVE_MAPPING (void*,int ,size_t) ;

void
iommu_remove_mapping(void *dom, vm_paddr_t gpa, size_t len)
{
 uint64_t unmapped, remaining;

 remaining = len;

 while (remaining > 0) {
  unmapped = IOMMU_REMOVE_MAPPING(dom, gpa, remaining);
  gpa += unmapped;
  remaining -= unmapped;
 }
}
