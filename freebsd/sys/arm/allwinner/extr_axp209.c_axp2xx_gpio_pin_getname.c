
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct axp2xx_softc {scalar_t__ npins; } ;
typedef int device_t ;
struct TYPE_2__ {char* name; } ;


 int EINVAL ;
 int GPIOMAXNAME ;
 TYPE_1__* axp209_pins ;
 struct axp2xx_softc* device_get_softc (int ) ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static int
axp2xx_gpio_pin_getname(device_t dev, uint32_t pin, char *name)
{
 struct axp2xx_softc *sc;

 sc = device_get_softc(dev);

 if (pin >= sc->npins)
  return (EINVAL);

 snprintf(name, GPIOMAXNAME, "%s", axp209_pins[pin].name);

 return (0);
}
