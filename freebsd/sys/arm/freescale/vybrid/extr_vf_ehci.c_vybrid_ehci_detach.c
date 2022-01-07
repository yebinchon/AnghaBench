
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sc_flags; int sc_bus; int * sc_intr_hdl; scalar_t__ sc_io_hdl; scalar_t__ sc_io_tag; } ;
struct vybrid_ehci_softc {scalar_t__* res; TYPE_1__ base; } ;
typedef TYPE_1__ ehci_softc_t ;
typedef int device_t ;


 int EHCI_SCFLG_DONEINIT ;
 int EHCI_USBINTR ;
 int bus_release_resources (int ,int ,scalar_t__*) ;
 int bus_space_write_4 (scalar_t__,scalar_t__,int ,int ) ;
 int bus_teardown_intr (int ,scalar_t__,int *) ;
 int device_delete_children (int ) ;
 struct vybrid_ehci_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;
 int ehci_detach (TYPE_1__*) ;
 int ehci_iterate_hw_softc ;
 int usb_bus_mem_free_all (int *,int *) ;
 int vybrid_ehci_spec ;

__attribute__((used)) static int
vybrid_ehci_detach(device_t dev)
{
 struct vybrid_ehci_softc *esc;
 ehci_softc_t *sc;
 int err;

 esc = device_get_softc(dev);
 sc = &esc->base;


 if ((err = device_delete_children(dev)) != 0)
  return (err);




 if (sc->sc_flags & EHCI_SCFLG_DONEINIT) {
  ehci_detach(sc);
  sc->sc_flags &= ~EHCI_SCFLG_DONEINIT;
 }





 if (sc->sc_io_tag && sc->sc_io_hdl)
  bus_space_write_4(sc->sc_io_tag, sc->sc_io_hdl,
      EHCI_USBINTR, 0);

 if (esc->res[5] && sc->sc_intr_hdl) {
  err = bus_teardown_intr(dev, esc->res[5],
      sc->sc_intr_hdl);
  if (err) {
   device_printf(dev, "Could not tear down irq,"
       " %d\n", err);
   return (err);
  }
  sc->sc_intr_hdl = ((void*)0);
 }

 usb_bus_mem_free_all(&sc->sc_bus, &ehci_iterate_hw_softc);

 bus_release_resources(dev, vybrid_ehci_spec, esc->res);

 return (0);
}
