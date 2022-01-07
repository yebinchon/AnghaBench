
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_gpio_softc {int ** sc_intrhand; int * sc_res; } ;
typedef int device_t ;


 int bcm_gpio_pic_detach (struct bcm_gpio_softc*) ;
 int bus_teardown_intr (int ,int ,int *) ;
 struct bcm_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static void
bcm_gpio_intr_detach(device_t dev)
{
 struct bcm_gpio_softc *sc;

 sc = device_get_softc(dev);
 if (sc->sc_intrhand[0] != ((void*)0))
  bus_teardown_intr(dev, sc->sc_res[1], sc->sc_intrhand[0]);
 if (sc->sc_intrhand[1] != ((void*)0))
  bus_teardown_intr(dev, sc->sc_res[2], sc->sc_intrhand[1]);

 bcm_gpio_pic_detach(sc);
}
