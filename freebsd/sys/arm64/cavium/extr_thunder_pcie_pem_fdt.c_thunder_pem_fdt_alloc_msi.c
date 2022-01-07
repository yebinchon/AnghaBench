
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int device_t ;


 int intr_alloc_msi (int ,int ,int ,int,int,int*) ;
 int ofw_bus_get_node (int ) ;
 int ofw_bus_msimap (int ,int ,int *,int *) ;
 int pci_get_rid (int ) ;

__attribute__((used)) static int
thunder_pem_fdt_alloc_msi(device_t pci, device_t child, int count, int maxcount,
    int *irqs)
{
 phandle_t msi_parent;
 int err;

 err = ofw_bus_msimap(ofw_bus_get_node(pci), pci_get_rid(child),
     &msi_parent, ((void*)0));
 if (err != 0)
  return (err);
 return (intr_alloc_msi(pci, child, msi_parent, count, maxcount,
     irqs));
}
