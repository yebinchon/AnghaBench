
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_gpio_softc {int dummy; } ;
typedef int device_t ;


 int EINVAL ;
 int GPIOMAXNAME ;
 struct ti_gpio_softc* device_get_softc (int ) ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ ti_gpio_valid_pin (struct ti_gpio_softc*,int) ;

__attribute__((used)) static int
ti_gpio_pin_getname(device_t dev, uint32_t pin, char *name)
{
 struct ti_gpio_softc *sc;

 sc = device_get_softc(dev);
 if (ti_gpio_valid_pin(sc, pin) != 0)
  return (EINVAL);


 snprintf(name, GPIOMAXNAME, "gpio_%u", pin);
 name[GPIOMAXNAME - 1] = '\0';

 return (0);
}
