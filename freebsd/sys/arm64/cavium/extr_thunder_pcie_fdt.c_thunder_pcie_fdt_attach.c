
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int coherent; int ecam; } ;
struct generic_pcie_fdt_softc {TYPE_1__ base; } ;
typedef int device_t ;


 struct generic_pcie_fdt_softc* device_get_softc (int ) ;
 int pci_host_generic_attach (int ) ;
 int thunder_pcie_identify_ecam (int ,int *) ;

__attribute__((used)) static int
thunder_pcie_fdt_attach(device_t dev)
{
 struct generic_pcie_fdt_softc *sc;

 sc = device_get_softc(dev);
 thunder_pcie_identify_ecam(dev, &sc->base.ecam);
 sc->base.coherent = 1;

 return (pci_host_generic_attach(dev));
}
