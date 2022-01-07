
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* invalidate_tlb ) (void*) ;} ;


 scalar_t__ iommu_avail ;
 TYPE_1__* ops ;
 int stub1 (void*) ;

__attribute__((used)) static __inline void
IOMMU_INVALIDATE_TLB(void *domain)
{

 if (ops != ((void*)0) && iommu_avail)
  (*ops->invalidate_tlb)(domain);
}
