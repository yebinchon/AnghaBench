
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * bdev; } ;
struct TYPE_5__ {int sc_flags; TYPE_1__ sc_bus; int * sc_intr_hdl; scalar_t__ sc_io_hdl; scalar_t__ sc_io_tag; } ;
struct exynos_ehci_softc {scalar_t__* res; TYPE_2__ base; } ;
typedef TYPE_2__ ehci_softc_t ;
typedef int device_t ;


 int EHCI_SCFLG_DONEINIT ;
 int EHCI_USBINTR ;
 int bus_release_resources (int ,int ,scalar_t__*) ;
 int bus_space_write_4 (scalar_t__,scalar_t__,int ,int ) ;
 int bus_teardown_intr (int ,scalar_t__,int *) ;
 int device_delete_child (int ,int *) ;
 int device_delete_children (int ) ;
 struct exynos_ehci_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;
 int ehci_detach (TYPE_2__*) ;
 int exynos_ehci_spec ;

__attribute__((used)) static int
exynos_ehci_detach(device_t dev)
{
 struct exynos_ehci_softc *esc;
 ehci_softc_t *sc;
 int err;

 esc = device_get_softc(dev);
 sc = &esc->base;

 if (sc->sc_flags & EHCI_SCFLG_DONEINIT)
  return (0);




 if (sc->sc_flags & EHCI_SCFLG_DONEINIT) {
  ehci_detach(sc);
  sc->sc_flags &= ~EHCI_SCFLG_DONEINIT;
 }





 if (sc->sc_io_tag && sc->sc_io_hdl)
  bus_space_write_4(sc->sc_io_tag, sc->sc_io_hdl,
      EHCI_USBINTR, 0);

 if (esc->res[3] && sc->sc_intr_hdl) {
  err = bus_teardown_intr(dev, esc->res[3],
      sc->sc_intr_hdl);
  if (err) {
   device_printf(dev, "Could not tear down irq,"
       " %d\n", err);
   return (err);
  }
  sc->sc_intr_hdl = ((void*)0);
 }

 if (sc->sc_bus.bdev) {
  device_delete_child(dev, sc->sc_bus.bdev);
  sc->sc_bus.bdev = ((void*)0);
 }


 device_delete_children(dev);

 bus_release_resources(dev, exynos_ehci_spec, esc->res);

 return (0);
}
