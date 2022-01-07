
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVENTHANDLER_DEREGISTER (int ,int *) ;
 int IOMMU_CLEANUP () ;
 int IOMMU_DESTROY_DOMAIN (int ) ;
 int IOMMU_DISABLE () ;
 int * add_tag ;
 int * delete_tag ;
 int host_domain ;
 int pci_add_device ;
 int pci_delete_device ;

void
iommu_cleanup(void)
{

 if (add_tag != ((void*)0)) {
  EVENTHANDLER_DEREGISTER(pci_add_device, add_tag);
  add_tag = ((void*)0);
 }
 if (delete_tag != ((void*)0)) {
  EVENTHANDLER_DEREGISTER(pci_delete_device, delete_tag);
  delete_tag = ((void*)0);
 }
 IOMMU_DISABLE();
 IOMMU_DESTROY_DOMAIN(host_domain);
 IOMMU_CLEANUP();
}
