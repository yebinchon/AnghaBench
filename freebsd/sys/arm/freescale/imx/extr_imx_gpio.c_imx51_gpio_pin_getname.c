
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct imx51_gpio_softc {size_t gpio_npins; int sc_mtx; TYPE_1__* gpio_pins; } ;
typedef int device_t ;
struct TYPE_2__ {int gp_name; } ;


 int EINVAL ;
 int GPIOMAXNAME ;
 struct imx51_gpio_softc* device_get_softc (int ) ;
 int memcpy (char*,int ,int ) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;

__attribute__((used)) static int
imx51_gpio_pin_getname(device_t dev, uint32_t pin, char *name)
{
 struct imx51_gpio_softc *sc;

 sc = device_get_softc(dev);
 if (pin >= sc->gpio_npins)
  return (EINVAL);

 mtx_lock_spin(&sc->sc_mtx);
 memcpy(name, sc->gpio_pins[pin].gp_name, GPIOMAXNAME);
 mtx_unlock_spin(&sc->sc_mtx);

 return (0);
}
