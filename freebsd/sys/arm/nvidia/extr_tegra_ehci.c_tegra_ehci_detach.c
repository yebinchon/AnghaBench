
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * bdev; } ;
struct TYPE_4__ {int sc_flags; TYPE_2__ sc_bus; int * sc_intr_hdl; int sc_irq_res; } ;
struct tegra_ehci_softc {scalar_t__ usb_alloc_called; int * ehci_mem_res; int * ehci_irq_res; int * clk; TYPE_1__ ehci_softc; } ;
typedef TYPE_1__ ehci_softc_t ;
typedef int device_t ;


 int EHCI_SCFLG_DONEINIT ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int ,int *) ;
 int clk_release (int *) ;
 int device_delete_child (int ,int *) ;
 int device_delete_children (int ) ;
 struct tegra_ehci_softc* device_get_softc (int ) ;
 int ehci_detach (TYPE_1__*) ;
 int ehci_iterate_hw_softc ;
 int usb_bus_mem_free_all (TYPE_2__*,int *) ;

__attribute__((used)) static int
tegra_ehci_detach(device_t dev)
{
 struct tegra_ehci_softc *sc;
 ehci_softc_t *esc;

 sc = device_get_softc(dev);

 esc = &sc->ehci_softc;
 if (sc->clk != ((void*)0))
  clk_release(sc->clk);
 if (esc->sc_bus.bdev != ((void*)0))
  device_delete_child(dev, esc->sc_bus.bdev);
 if (esc->sc_flags & EHCI_SCFLG_DONEINIT)
  ehci_detach(esc);
 if (esc->sc_intr_hdl != ((void*)0))
  bus_teardown_intr(dev, esc->sc_irq_res,
      esc->sc_intr_hdl);
 if (sc->ehci_irq_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_IRQ, 0,
      sc->ehci_irq_res);
 if (sc->ehci_mem_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY, 0,
      sc->ehci_mem_res);
 if (sc->usb_alloc_called)
  usb_bus_mem_free_all(&esc->sc_bus, &ehci_iterate_hw_softc);


 device_delete_children(dev);

 return (0);
}
