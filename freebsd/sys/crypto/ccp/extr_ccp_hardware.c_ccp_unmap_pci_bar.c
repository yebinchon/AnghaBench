
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccp_softc {int pci_resource; int pci_resource_id; int pci_resource_msix; int pci_resource_id_msix; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int ) ;
 struct ccp_softc* device_get_softc (int ) ;

__attribute__((used)) static void
ccp_unmap_pci_bar(device_t dev)
{
 struct ccp_softc *sc;

 sc = device_get_softc(dev);

 bus_release_resource(dev, SYS_RES_MEMORY, sc->pci_resource_id_msix,
     sc->pci_resource_msix);
 bus_release_resource(dev, SYS_RES_MEMORY, sc->pci_resource_id,
     sc->pci_resource);
}
