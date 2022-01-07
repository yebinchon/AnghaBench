
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_pin {unsigned int gp_flags; int gp_pin; } ;
struct bcm_gpio_softc {int dummy; } ;


 int BCM2835_FSEL_GPIO_IN ;
 int BCM2835_FSEL_GPIO_OUT ;
 int BCM_GPIO_LOCK (struct bcm_gpio_softc*) ;
 int BCM_GPIO_NONE ;
 int BCM_GPIO_PULLDOWN ;
 int BCM_GPIO_PULLUP ;
 int BCM_GPIO_UNLOCK (struct bcm_gpio_softc*) ;
 unsigned int GPIO_PIN_INPUT ;
 unsigned int GPIO_PIN_OUTPUT ;
 unsigned int GPIO_PIN_PULLDOWN ;
 unsigned int GPIO_PIN_PULLUP ;
 int bcm_gpio_set_function (struct bcm_gpio_softc*,int ,int ) ;
 int bcm_gpio_set_pud (struct bcm_gpio_softc*,int ,int ) ;

__attribute__((used)) static void
bcm_gpio_pin_configure(struct bcm_gpio_softc *sc, struct gpio_pin *pin,
    unsigned int flags)
{

 BCM_GPIO_LOCK(sc);




 if (flags & (GPIO_PIN_INPUT|GPIO_PIN_OUTPUT)) {
  pin->gp_flags &= ~(GPIO_PIN_INPUT|GPIO_PIN_OUTPUT);
  if (flags & GPIO_PIN_OUTPUT) {
   pin->gp_flags |= GPIO_PIN_OUTPUT;
   bcm_gpio_set_function(sc, pin->gp_pin,
       BCM2835_FSEL_GPIO_OUT);
  } else {
   pin->gp_flags |= GPIO_PIN_INPUT;
   bcm_gpio_set_function(sc, pin->gp_pin,
       BCM2835_FSEL_GPIO_IN);
  }
 }


 pin->gp_flags &= ~(GPIO_PIN_PULLUP|GPIO_PIN_PULLDOWN);
 if (flags & (GPIO_PIN_PULLUP|GPIO_PIN_PULLDOWN)) {
  if (flags & GPIO_PIN_PULLUP) {
   pin->gp_flags |= GPIO_PIN_PULLUP;
   bcm_gpio_set_pud(sc, pin->gp_pin, BCM_GPIO_PULLUP);
  } else {
   pin->gp_flags |= GPIO_PIN_PULLDOWN;
   bcm_gpio_set_pud(sc, pin->gp_pin, BCM_GPIO_PULLDOWN);
  }
 } else
  bcm_gpio_set_pud(sc, pin->gp_pin, BCM_GPIO_NONE);

 BCM_GPIO_UNLOCK(sc);
}
