
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int host_domain ;
 int iommu_remove_device (int ,int ) ;
 int pci_get_rid (int ) ;

__attribute__((used)) static void
iommu_pci_delete(void *arg, device_t dev)
{

 iommu_remove_device(host_domain, pci_get_rid(dev));
}
