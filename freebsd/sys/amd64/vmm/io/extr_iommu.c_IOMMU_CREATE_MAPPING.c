
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_paddr_t ;
typedef int uint64_t ;
struct TYPE_2__ {int (* create_mapping ) (void*,int ,int ,int ) ;} ;


 scalar_t__ iommu_avail ;
 TYPE_1__* ops ;
 int stub1 (void*,int ,int ,int ) ;

__attribute__((used)) static __inline uint64_t
IOMMU_CREATE_MAPPING(void *domain, vm_paddr_t gpa, vm_paddr_t hpa, uint64_t len)
{

 if (ops != ((void*)0) && iommu_avail)
  return ((*ops->create_mapping)(domain, gpa, hpa, len));
 else
  return (len);
}
