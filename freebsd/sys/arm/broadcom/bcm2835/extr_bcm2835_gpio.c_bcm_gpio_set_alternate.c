
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct bcm_gpio_softc {int sc_gpio_npins; TYPE_1__* sc_gpio_pins; } ;
typedef int device_t ;
struct TYPE_2__ {int gp_flags; int gp_pin; } ;


 int BCM_GPIO_LOCK (struct bcm_gpio_softc*) ;
 int BCM_GPIO_UNLOCK (struct bcm_gpio_softc*) ;
 int bcm_gpio_func_flag (int ) ;
 int bcm_gpio_set_function (struct bcm_gpio_softc*,int ,int ) ;
 struct bcm_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static void
bcm_gpio_set_alternate(device_t dev, uint32_t pin, uint32_t nfunc)
{
 struct bcm_gpio_softc *sc;
 int i;

 sc = device_get_softc(dev);
 BCM_GPIO_LOCK(sc);


 bcm_gpio_set_function(sc, pin, nfunc);


 for (i = 0; i < sc->sc_gpio_npins; i++) {
  if (sc->sc_gpio_pins[i].gp_pin == pin)
   break;
 }
 if (i < sc->sc_gpio_npins)
  sc->sc_gpio_pins[i].gp_flags = bcm_gpio_func_flag(nfunc);

        BCM_GPIO_UNLOCK(sc);
}
