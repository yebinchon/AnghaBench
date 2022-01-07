
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sc_irq_res; int sc_bus; int * sc_intr_hdl; } ;
struct musbotg_super_softc {TYPE_1__ sc_otg; int sc_irq_rid; scalar_t__* sc_mem_res; } ;
typedef int device_t ;


 int SYS_RES_IRQ ;
 int am335x_musbotg_mem_spec ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int bus_release_resources (int ,int ,scalar_t__*) ;
 int bus_teardown_intr (int ,scalar_t__,int *) ;
 int device_delete_children (int ) ;
 struct musbotg_super_softc* device_get_softc (int ) ;
 int musbotg_uninit (TYPE_1__*) ;
 int usb_bus_mem_free_all (int *,int *) ;

__attribute__((used)) static int
musbotg_detach(device_t dev)
{
 struct musbotg_super_softc *sc = device_get_softc(dev);
 int err;


 device_delete_children(dev);

 if (sc->sc_otg.sc_irq_res && sc->sc_otg.sc_intr_hdl) {



  musbotg_uninit(&sc->sc_otg);

  err = bus_teardown_intr(dev, sc->sc_otg.sc_irq_res,
      sc->sc_otg.sc_intr_hdl);
  sc->sc_otg.sc_intr_hdl = ((void*)0);
 }

 usb_bus_mem_free_all(&sc->sc_otg.sc_bus, ((void*)0));


 if (sc->sc_mem_res[0])
  bus_release_resources(dev, am335x_musbotg_mem_spec,
      sc->sc_mem_res);

 if (sc->sc_otg.sc_irq_res)
  bus_release_resource(dev, SYS_RES_IRQ, sc->sc_irq_rid,
      sc->sc_otg.sc_irq_res);

 return (0);
}
