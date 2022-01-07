
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct aw_gpio_softc {TYPE_1__* padconf; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ npins; } ;



 int AW_GPIO_LOCK (struct aw_gpio_softc*) ;



 int AW_GPIO_UNLOCK (struct aw_gpio_softc*) ;
 int EINVAL ;
 scalar_t__ GPIO_PIN_INPUT ;
 scalar_t__ GPIO_PIN_OUTPUT ;
 scalar_t__ GPIO_PIN_PULLDOWN ;
 scalar_t__ GPIO_PIN_PULLUP ;
 scalar_t__ aw_gpio_get_function (struct aw_gpio_softc*,scalar_t__) ;
 scalar_t__ aw_gpio_get_pud (struct aw_gpio_softc*,scalar_t__) ;
 struct aw_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
aw_gpio_pin_getflags(device_t dev, uint32_t pin, uint32_t *flags)
{
 struct aw_gpio_softc *sc;
 uint32_t func;
 uint32_t pud;

 sc = device_get_softc(dev);
 if (pin >= sc->padconf->npins)
  return (EINVAL);

 AW_GPIO_LOCK(sc);
 func = aw_gpio_get_function(sc, pin);
 switch (func) {
 case 131:
  *flags = GPIO_PIN_INPUT;
  break;
 case 130:
  *flags = GPIO_PIN_OUTPUT;
  break;
 default:
  *flags = 0;
  break;
 }

 pud = aw_gpio_get_pud(sc, pin);
 switch (pud) {
 case 129:
  *flags |= GPIO_PIN_PULLDOWN;
  break;
 case 128:
  *flags |= GPIO_PIN_PULLUP;
  break;
 default:
  break;
 }

 AW_GPIO_UNLOCK(sc);

 return (0);
}
