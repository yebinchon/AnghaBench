
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct aw_gpio_softc {TYPE_2__* padconf; } ;
typedef int device_t ;
struct TYPE_4__ {size_t npins; TYPE_1__* pins; } ;
struct TYPE_3__ {char* name; } ;


 int EINVAL ;
 int GPIOMAXNAME ;
 struct aw_gpio_softc* device_get_softc (int ) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static int
aw_gpio_pin_getname(device_t dev, uint32_t pin, char *name)
{
 struct aw_gpio_softc *sc;

 sc = device_get_softc(dev);
 if (pin >= sc->padconf->npins)
  return (EINVAL);

 snprintf(name, GPIOMAXNAME - 1, "%s",
     sc->padconf->pins[pin].name);
 name[GPIOMAXNAME - 1] = '\0';

 return (0);
}
