
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_paddr_t ;
struct TYPE_2__ {void* (* create_domain ) (int ) ;} ;


 scalar_t__ iommu_avail ;
 TYPE_1__* ops ;
 void* stub1 (int ) ;

__attribute__((used)) static __inline void *
IOMMU_CREATE_DOMAIN(vm_paddr_t maxaddr)
{

 if (ops != ((void*)0) && iommu_avail)
  return ((*ops->create_domain)(maxaddr));
 else
  return (((void*)0));
}
