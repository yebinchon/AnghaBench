
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sc_flags; int sc_bus; scalar_t__ sc_io_res; scalar_t__ sc_irq_res; int * sc_intr_hdl; } ;
typedef TYPE_1__ ehci_softc_t ;
typedef int device_t ;


 int EHCI_SCFLG_DONEINIT ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int bus_teardown_intr (int ,scalar_t__,int *) ;
 int device_delete_children (int ) ;
 TYPE_1__* device_get_softc (int ) ;
 int ehci_detach (TYPE_1__*) ;
 int ehci_iterate_hw_softc ;
 int rman_get_rid (scalar_t__) ;
 int usb_bus_mem_free_all (int *,int *) ;

__attribute__((used)) static int
zy7_ehci_detach(device_t dev)
{
 ehci_softc_t *sc = device_get_softc(dev);


 device_delete_children(dev);

 if ((sc->sc_flags & EHCI_SCFLG_DONEINIT) != 0) {
  ehci_detach(sc);
  sc->sc_flags &= ~EHCI_SCFLG_DONEINIT;
 }

 if (sc->sc_irq_res) {
  if (sc->sc_intr_hdl != ((void*)0))
   bus_teardown_intr(dev, sc->sc_irq_res,
       sc->sc_intr_hdl);
  bus_release_resource(dev, SYS_RES_IRQ,
        rman_get_rid(sc->sc_irq_res), sc->sc_irq_res);
 }

 if (sc->sc_io_res)
  bus_release_resource(dev, SYS_RES_MEMORY,
        rman_get_rid(sc->sc_io_res), sc->sc_io_res);
 usb_bus_mem_free_all(&sc->sc_bus, &ehci_iterate_hw_softc);

 return (0);
}
