
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aml8726_gpio_softc {int busdev; } ;
typedef int device_t ;


 struct aml8726_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static device_t
aml8726_gpio_get_bus(device_t dev)
{
 struct aml8726_gpio_softc *sc = device_get_softc(dev);

 return (sc->busdev);
}
