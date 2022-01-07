
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * sc_io_res; int * sc_irq_res; int * sc_intr_hdl; } ;
struct omap_ehci_softc {TYPE_1__ base; } ;
typedef TYPE_1__ ehci_softc_t ;
typedef int device_t ;


 int EHCI_USBINTR ;
 int EWRITE4 (TYPE_1__*,int ,int ) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int device_delete_children (int ) ;
 struct omap_ehci_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;
 int ehci_detach (TYPE_1__*) ;

__attribute__((used)) static int
omap_ehci_detach(device_t dev)
{
 struct omap_ehci_softc *isc = device_get_softc(dev);
 ehci_softc_t *sc = &isc->base;
 int err;


 device_delete_children(dev);




 if (sc->sc_io_res) {
  EWRITE4(sc, EHCI_USBINTR, 0);
 }

 if (sc->sc_irq_res && sc->sc_intr_hdl) {



  ehci_detach(sc);

  err = bus_teardown_intr(dev, sc->sc_irq_res, sc->sc_intr_hdl);
  if (err)
   device_printf(dev, "Error: could not tear down irq, %d\n", err);
  sc->sc_intr_hdl = ((void*)0);
 }


 if (sc->sc_irq_res) {
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->sc_irq_res);
  sc->sc_irq_res = ((void*)0);
 }
 if (sc->sc_io_res) {
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->sc_io_res);
  sc->sc_io_res = ((void*)0);
 }

 return (0);
}
