
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccp_softc {int * pci_resource; int pci_bus_handle; int pci_bus_tag; void* pci_resource_id; int * pci_resource_msix; void* pci_resource_id_msix; } ;
typedef int device_t ;


 int ENODEV ;
 void* PCIR_BAR (int) ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,int ,void**,int ) ;
 int bus_release_resource (int ,int ,void*,int *) ;
 struct ccp_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;

__attribute__((used)) static int
ccp_map_pci_bar(device_t dev)
{
 struct ccp_softc *sc;

 sc = device_get_softc(dev);

 sc->pci_resource_id = PCIR_BAR(2);
 sc->pci_resource = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &sc->pci_resource_id, RF_ACTIVE);
 if (sc->pci_resource == ((void*)0)) {
  device_printf(dev, "unable to allocate pci resource\n");
  return (ENODEV);
 }

 sc->pci_resource_id_msix = PCIR_BAR(5);
 sc->pci_resource_msix = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &sc->pci_resource_id_msix, RF_ACTIVE);
 if (sc->pci_resource_msix == ((void*)0)) {
  device_printf(dev, "unable to allocate pci resource msix\n");
  bus_release_resource(dev, SYS_RES_MEMORY, sc->pci_resource_id,
      sc->pci_resource);
  return (ENODEV);
 }

 sc->pci_bus_tag = rman_get_bustag(sc->pci_resource);
 sc->pci_bus_handle = rman_get_bushandle(sc->pci_resource);
 return (0);
}
