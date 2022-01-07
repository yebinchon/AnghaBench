
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axp2xx_softc {int npins; } ;
typedef int device_t ;


 struct axp2xx_softc* device_get_softc (int ) ;

__attribute__((used)) static int
axp2xx_gpio_pin_max(device_t dev, int *maxpin)
{
 struct axp2xx_softc *sc;

 sc = device_get_softc(dev);

 *maxpin = sc->npins - 1;

 return (0);
}
