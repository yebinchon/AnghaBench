
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_mbox_softc {scalar_t__ sc_mem_res; scalar_t__ sc_irq_res; scalar_t__ sc_intr; } ;
typedef int device_t ;


 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int bus_teardown_intr (int ,scalar_t__,scalar_t__) ;
 struct ti_mbox_softc* device_get_softc (int ) ;
 int rman_get_rid (scalar_t__) ;

__attribute__((used)) static int
ti_mbox_detach(device_t dev)
{
 struct ti_mbox_softc *sc;

 sc = device_get_softc(dev);
 if (sc->sc_intr)
  bus_teardown_intr(dev, sc->sc_irq_res, sc->sc_intr);
 if (sc->sc_irq_res)
  bus_release_resource(dev, SYS_RES_IRQ, rman_get_rid(sc->sc_irq_res),
      sc->sc_irq_res);
 if (sc->sc_mem_res)
  bus_release_resource(dev, SYS_RES_MEMORY, rman_get_rid(sc->sc_mem_res),
      sc->sc_mem_res);

 return (0);
}
