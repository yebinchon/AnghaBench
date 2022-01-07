
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_gpio_softc {int sc_busdev; } ;
typedef int device_t ;


 struct mv_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static device_t
mv_gpio_get_bus(device_t dev)
{
 struct mv_gpio_softc *sc = device_get_softc(dev);

 return (sc->sc_busdev);
}
