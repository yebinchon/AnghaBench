
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* init ) () ;} ;


 int ENXIO ;
 TYPE_1__* ops ;
 int stub1 () ;

__attribute__((used)) static __inline int
IOMMU_INIT(void)
{
 if (ops != ((void*)0))
  return ((*ops->init)());
 else
  return (ENXIO);
}
