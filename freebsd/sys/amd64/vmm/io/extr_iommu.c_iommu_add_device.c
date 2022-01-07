
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int IOMMU_ADD_DEVICE (void*,int ) ;

void
iommu_add_device(void *dom, uint16_t rid)
{

 IOMMU_ADD_DEVICE(dom, rid);
}
