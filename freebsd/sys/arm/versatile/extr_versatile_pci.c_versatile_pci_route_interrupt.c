
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct versatile_pci_softc {int pci_iinfo; } ;
struct ofw_pci_register {int phys_hi; } ;
typedef int reg ;
typedef int pintr ;
typedef int phandle_t ;
typedef int mintr ;
typedef int device_t ;


 int OFW_PCI_PHYS_HI_BUSSHIFT ;
 int OFW_PCI_PHYS_HI_DEVICESHIFT ;
 int OFW_PCI_PHYS_HI_FUNCTIONSHIFT ;
 int PCI_INVALID_IRQ ;
 int bzero (struct ofw_pci_register*,int) ;
 struct versatile_pci_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int,int,int) ;
 int ofw_bus_get_node (int ) ;
 int ofw_bus_lookup_imap (int ,int *,struct ofw_pci_register*,int,int*,int,int*,int,int *) ;
 int ofw_bus_map_intr (int ,int ,int,int*) ;
 int pci_get_bus (int ) ;
 int pci_get_function (int ) ;
 int pci_get_slot (int ) ;

__attribute__((used)) static int
versatile_pci_route_interrupt(device_t bus, device_t dev, int pin)
{
 struct versatile_pci_softc *sc;
 struct ofw_pci_register reg;
 uint32_t pintr, mintr[4];
 phandle_t iparent;
 int intrcells;

 sc = device_get_softc(bus);
 pintr = pin;

 bzero(&reg, sizeof(reg));
 reg.phys_hi = (pci_get_bus(dev) << OFW_PCI_PHYS_HI_BUSSHIFT) |
     (pci_get_slot(dev) << OFW_PCI_PHYS_HI_DEVICESHIFT) |
     (pci_get_function(dev) << OFW_PCI_PHYS_HI_FUNCTIONSHIFT);

 intrcells = ofw_bus_lookup_imap(ofw_bus_get_node(dev),
     &sc->pci_iinfo, &reg, sizeof(reg), &pintr, sizeof(pintr),
     mintr, sizeof(mintr), &iparent);
 if (intrcells) {
  pintr = ofw_bus_map_intr(dev, iparent, intrcells, mintr);
  return (pintr);
 }

 device_printf(bus, "could not route pin %d for device %d.%d\n",
     pin, pci_get_slot(dev), pci_get_function(dev));
 return (PCI_INVALID_IRQ);
}
