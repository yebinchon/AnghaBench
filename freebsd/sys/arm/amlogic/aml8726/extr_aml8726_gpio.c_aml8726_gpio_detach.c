
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aml8726_gpio_softc {int res; } ;
typedef int device_t ;


 int AML_GPIO_LOCK_DESTROY (struct aml8726_gpio_softc*) ;
 int aml8726_gpio_spec ;
 int bus_release_resources (int ,int ,int ) ;
 struct aml8726_gpio_softc* device_get_softc (int ) ;
 int gpiobus_detach_bus (int ) ;

__attribute__((used)) static int
aml8726_gpio_detach(device_t dev)
{
 struct aml8726_gpio_softc *sc = device_get_softc(dev);

 gpiobus_detach_bus(dev);

 AML_GPIO_LOCK_DESTROY(sc);

 bus_release_resources(dev, aml8726_gpio_spec, sc->res);

 return (0);
}
