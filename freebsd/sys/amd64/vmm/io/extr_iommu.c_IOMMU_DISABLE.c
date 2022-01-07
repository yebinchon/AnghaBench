
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* disable ) () ;} ;


 scalar_t__ iommu_avail ;
 TYPE_1__* ops ;
 int stub1 () ;

__attribute__((used)) static __inline void
IOMMU_DISABLE(void)
{

 if (ops != ((void*)0) && iommu_avail)
  (*ops->disable)();
}
