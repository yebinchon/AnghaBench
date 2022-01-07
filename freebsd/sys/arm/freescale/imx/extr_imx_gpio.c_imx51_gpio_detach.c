
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx51_gpio_softc {int sc_mtx; int * sc_res; scalar_t__* gpio_ih; } ;
typedef int device_t ;


 int FIRST_IRQRES ;
 int NUM_IRQRES ;
 int bus_release_resources (int ,int ,int *) ;
 int bus_teardown_intr (int ,int ,scalar_t__) ;
 struct imx51_gpio_softc* device_get_softc (int ) ;
 int gpiobus_detach_bus (int ) ;
 int imx_gpio_spec ;
 int mtx_destroy (int *) ;

__attribute__((used)) static int
imx51_gpio_detach(device_t dev)
{
 int irq;
 struct imx51_gpio_softc *sc;

 sc = device_get_softc(dev);

 gpiobus_detach_bus(dev);
 for (irq = 0; irq < NUM_IRQRES; irq++) {
  if (sc->gpio_ih[irq])
   bus_teardown_intr(dev, sc->sc_res[irq + FIRST_IRQRES],
       sc->gpio_ih[irq]);
 }
 bus_release_resources(dev, imx_gpio_spec, sc->sc_res);
 mtx_destroy(&sc->sc_mtx);

 return(0);
}
