
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_paddr_t ;
typedef int uint64_t ;
struct TYPE_2__ {int (* remove_mapping ) (void*,int ,int ) ;} ;


 scalar_t__ iommu_avail ;
 TYPE_1__* ops ;
 int stub1 (void*,int ,int ) ;

__attribute__((used)) static __inline uint64_t
IOMMU_REMOVE_MAPPING(void *domain, vm_paddr_t gpa, uint64_t len)
{

 if (ops != ((void*)0) && iommu_avail)
  return ((*ops->remove_mapping)(domain, gpa, len));
 else
  return (len);
}
