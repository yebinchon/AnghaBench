
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct vf_gpio_softc {int gpio_npins; TYPE_1__* gpio_pins; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ gp_pin; } ;


 int EINVAL ;
 int GPIO_LOCK (struct vf_gpio_softc*) ;
 int GPIO_PDIR (int) ;
 int GPIO_UNLOCK (struct vf_gpio_softc*) ;
 int READ4 (struct vf_gpio_softc*,int ) ;
 struct vf_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
vf_gpio_pin_get(device_t dev, uint32_t pin, unsigned int *val)
{
 struct vf_gpio_softc *sc;
 int i;

 sc = device_get_softc(dev);
 for (i = 0; i < sc->gpio_npins; i++) {
  if (sc->gpio_pins[i].gp_pin == pin)
   break;
 }

 if (i >= sc->gpio_npins)
  return (EINVAL);

 GPIO_LOCK(sc);
 *val = (READ4(sc, GPIO_PDIR(i)) & (1 << (i % 32))) ? 1 : 0;
 GPIO_UNLOCK(sc);

 return (0);
}
