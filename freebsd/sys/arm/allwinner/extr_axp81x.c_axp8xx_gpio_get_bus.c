
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axp8xx_softc {int gpiodev; } ;
typedef int device_t ;


 struct axp8xx_softc* device_get_softc (int ) ;

__attribute__((used)) static device_t
axp8xx_gpio_get_bus(device_t dev)
{
 struct axp8xx_softc *sc;

 sc = device_get_softc(dev);

 return (sc->gpiodev);
}
