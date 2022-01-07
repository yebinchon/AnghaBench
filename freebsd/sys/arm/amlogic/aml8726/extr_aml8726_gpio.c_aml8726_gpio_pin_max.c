
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aml8726_gpio_softc {scalar_t__ npins; } ;
typedef int device_t ;


 struct aml8726_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
aml8726_gpio_pin_max(device_t dev, int *maxpin)
{
 struct aml8726_gpio_softc *sc = device_get_softc(dev);

 *maxpin = (int)sc->npins;

 return (0);
}
