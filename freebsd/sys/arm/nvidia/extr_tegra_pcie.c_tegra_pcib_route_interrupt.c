
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct tegra_pcib_softc {int irq_res; } ;
typedef int device_t ;


 struct tegra_pcib_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int,int ,int ,int) ;
 int intr_map_clone_irq (int ) ;
 int pci_get_function (int ) ;
 int pci_get_slot (int ) ;
 int rman_get_start (int ) ;

__attribute__((used)) static int
tegra_pcib_route_interrupt(device_t bus, device_t dev, int pin)
{
 struct tegra_pcib_softc *sc;
 u_int irq;

 sc = device_get_softc(bus);
 irq = intr_map_clone_irq(rman_get_start(sc->irq_res));
 device_printf(bus, "route pin %d for device %d.%d to %u\n",
        pin, pci_get_slot(dev), pci_get_function(dev),
        irq);

 return (irq);
}
