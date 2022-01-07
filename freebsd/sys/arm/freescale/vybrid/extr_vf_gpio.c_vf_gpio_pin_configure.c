
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vf_gpio_softc {int dummy; } ;
struct gpio_pin {unsigned int gp_flags; int gp_pin; } ;


 int GPIO_LOCK (struct vf_gpio_softc*) ;
 int GPIO_PCOR (int) ;
 unsigned int GPIO_PIN_INPUT ;
 unsigned int GPIO_PIN_OUTPUT ;
 int GPIO_UNLOCK (struct vf_gpio_softc*) ;
 int WRITE4 (struct vf_gpio_softc*,int ,int) ;

__attribute__((used)) static void
vf_gpio_pin_configure(struct vf_gpio_softc *sc, struct gpio_pin *pin,
    unsigned int flags)
{

 GPIO_LOCK(sc);




 if (flags & (GPIO_PIN_INPUT|GPIO_PIN_OUTPUT)) {
  pin->gp_flags &= ~(GPIO_PIN_INPUT|GPIO_PIN_OUTPUT);
  if (flags & GPIO_PIN_OUTPUT) {
   pin->gp_flags |= GPIO_PIN_OUTPUT;

  } else {
   pin->gp_flags |= GPIO_PIN_INPUT;
   WRITE4(sc, GPIO_PCOR(pin->gp_pin),
       (1 << (pin->gp_pin % 32)));
  }
 }

 GPIO_UNLOCK(sc);
}
