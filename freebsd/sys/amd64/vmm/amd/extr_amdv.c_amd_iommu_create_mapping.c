
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int uint64_t ;


 int printf (char*) ;

__attribute__((used)) static uint64_t
amd_iommu_create_mapping(void *domain, vm_paddr_t gpa, vm_paddr_t hpa,
    uint64_t len)
{

 printf("amd_iommu_create_mapping: not implemented\n");
 return (0);
}
