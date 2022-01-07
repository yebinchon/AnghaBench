
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef size_t uint64_t ;


 size_t IOMMU_CREATE_MAPPING (void*,int ,int ,size_t) ;

void
iommu_create_mapping(void *dom, vm_paddr_t gpa, vm_paddr_t hpa, size_t len)
{
 uint64_t mapped, remaining;

 remaining = len;

 while (remaining > 0) {
  mapped = IOMMU_CREATE_MAPPING(dom, gpa, hpa, remaining);
  gpa += mapped;
  hpa += mapped;
  remaining -= mapped;
 }
}
