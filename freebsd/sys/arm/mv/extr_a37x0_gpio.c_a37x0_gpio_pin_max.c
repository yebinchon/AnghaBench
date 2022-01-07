
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct a37x0_gpio_softc {int sc_npins; } ;
typedef int device_t ;


 struct a37x0_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
a37x0_gpio_pin_max(device_t dev, int *maxpin)
{
 struct a37x0_gpio_softc *sc;

 sc = device_get_softc(dev);
 *maxpin = sc->sc_npins - 1;

 return (0);
}
