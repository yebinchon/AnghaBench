
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;
typedef int * device_t ;
typedef int * devclass_t ;


 void* EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;
 int IOMMU_CLEANUP () ;
 int * IOMMU_CREATE_DOMAIN (int ) ;
 int IOMMU_ENABLE () ;
 int IOMMU_INIT () ;
 int PCI_BUSMAX ;
 int PCI_FUNCMAX ;
 int PCI_SLOTMAX ;
 void* add_tag ;
 void* delete_tag ;
 int * devclass_find (char*) ;
 int * device_get_devclass (int *) ;
 int * host_domain ;
 int iommu_add_device (int *,int ) ;
 int iommu_avail ;
 int iommu_create_mapping (int *,int ,int ,int ) ;
 int iommu_enable ;
 int iommu_ops_amd ;
 int iommu_ops_intel ;
 int iommu_pci_add ;
 int iommu_pci_delete ;
 int * ops ;
 int pci_add_device ;
 int pci_delete_device ;
 int * pci_find_dbsf (int ,int,int,int) ;
 int pci_get_rid (int *) ;
 int printf (char*) ;
 scalar_t__ vmm_is_amd () ;
 scalar_t__ vmm_is_intel () ;
 int vmm_mem_maxaddr () ;

__attribute__((used)) static void
iommu_init(void)
{
 int error, bus, slot, func;
 vm_paddr_t maxaddr;
 devclass_t dc;
 device_t dev;

 if (!iommu_enable)
  return;

 if (vmm_is_intel())
  ops = &iommu_ops_intel;
 else if (vmm_is_amd())
  ops = &iommu_ops_amd;
 else
  ops = ((void*)0);

 error = IOMMU_INIT();
 if (error)
  return;

 iommu_avail = 1;




 maxaddr = vmm_mem_maxaddr();
 host_domain = IOMMU_CREATE_DOMAIN(maxaddr);
 if (host_domain == ((void*)0)) {
  printf("iommu_init: unable to create a host domain");
  IOMMU_CLEANUP();
  ops = ((void*)0);
  iommu_avail = 0;
  return;
 }





 iommu_create_mapping(host_domain, 0, 0, maxaddr);

 add_tag = EVENTHANDLER_REGISTER(pci_add_device, iommu_pci_add, ((void*)0), 0);
 delete_tag = EVENTHANDLER_REGISTER(pci_delete_device, iommu_pci_delete,
     ((void*)0), 0);
 dc = devclass_find("ppt");
 for (bus = 0; bus <= PCI_BUSMAX; bus++) {
  for (slot = 0; slot <= PCI_SLOTMAX; slot++) {
   for (func = 0; func <= PCI_FUNCMAX; func++) {
    dev = pci_find_dbsf(0, bus, slot, func);
    if (dev == ((void*)0))
     continue;


    if (dc != ((void*)0) &&
        device_get_devclass(dev) == dc)
     continue;





    iommu_add_device(host_domain,
        pci_get_rid(dev));
   }
  }
 }
 IOMMU_ENABLE();

}
