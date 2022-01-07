
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int (* add_device ) (void*,int ) ;} ;


 scalar_t__ iommu_avail ;
 TYPE_1__* ops ;
 int stub1 (void*,int ) ;

__attribute__((used)) static __inline void
IOMMU_ADD_DEVICE(void *domain, uint16_t rid)
{

 if (ops != ((void*)0) && iommu_avail)
  (*ops->add_device)(domain, rid);
}
