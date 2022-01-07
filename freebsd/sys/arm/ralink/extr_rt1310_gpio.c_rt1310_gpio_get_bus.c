
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt1310_gpio_softc {int lg_busdev; } ;
typedef int device_t ;


 struct rt1310_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static device_t
rt1310_gpio_get_bus(device_t dev)
{
 struct rt1310_gpio_softc *sc;

 sc = device_get_softc(dev);

 return (sc->lg_busdev);
}
