
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_gpio_softc {int * sc_mem_res; int sc_mem_rid; int * sc_irq_res; int sc_irq_rid; scalar_t__ sc_irq_hdl; int * sc_isrcs; int * sc_busdev; int sc_mtx; } ;
typedef int device_t ;


 int KASSERT (int ,char*) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int TI_GPIO_LOCK_DESTROY (struct ti_gpio_softc*) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,scalar_t__) ;
 struct ti_gpio_softc* device_get_softc (int ) ;
 int gpiobus_detach_bus (int ) ;
 int mtx_initialized (int *) ;
 int ti_gpio_intr_clr (struct ti_gpio_softc*,int) ;
 int ti_gpio_pic_detach (struct ti_gpio_softc*) ;

__attribute__((used)) static int
ti_gpio_detach(device_t dev)
{
 struct ti_gpio_softc *sc = device_get_softc(dev);

 KASSERT(mtx_initialized(&sc->sc_mtx), ("gpio mutex not initialized"));


 if (sc->sc_mem_res != ((void*)0))
  ti_gpio_intr_clr(sc, 0xffffffff);
 if (sc->sc_busdev != ((void*)0))
  gpiobus_detach_bus(dev);
 if (sc->sc_isrcs != ((void*)0))
  ti_gpio_pic_detach(sc);

 if (sc->sc_irq_hdl) {
  bus_teardown_intr(dev, sc->sc_irq_res,
      sc->sc_irq_hdl);
 }
 if (sc->sc_irq_res)
  bus_release_resource(dev, SYS_RES_IRQ, sc->sc_irq_rid,
      sc->sc_irq_res);
 if (sc->sc_mem_res)
  bus_release_resource(dev, SYS_RES_MEMORY, sc->sc_mem_rid,
      sc->sc_mem_res);
 TI_GPIO_LOCK_DESTROY(sc);

 return (0);
}
