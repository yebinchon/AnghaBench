
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int IOMMU_REMOVE_DEVICE (void*,int ) ;

void
iommu_remove_device(void *dom, uint16_t rid)
{

 IOMMU_REMOVE_DEVICE(dom, rid);
}
