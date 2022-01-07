
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct aml8726_gpio_softc {scalar_t__ npins; } ;
typedef int device_t ;


 int EINVAL ;
 int GPIOMAXNAME ;
 struct aml8726_gpio_softc* device_get_softc (int ) ;
 char* ofw_bus_get_name (int ) ;
 int snprintf (char*,int ,char*,char*,scalar_t__) ;

__attribute__((used)) static int
aml8726_gpio_pin_getname(device_t dev, uint32_t pin, char *name)
{
 struct aml8726_gpio_softc *sc = device_get_softc(dev);

 if (pin >= sc->npins)
  return (EINVAL);

 snprintf(name, GPIOMAXNAME, "%s.%u", ofw_bus_get_name(dev), pin);

 return (0);
}
