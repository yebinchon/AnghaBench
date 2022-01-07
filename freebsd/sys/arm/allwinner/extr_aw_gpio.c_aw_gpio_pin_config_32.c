
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
struct TYPE_3__ {size_t port; scalar_t__ pin; } ;


 int EINVAL ;
 size_t GPIO_PIN_INPUT ;
 size_t GPIO_PIN_OUTPUT ;
 int aw_gpio_pin_configure (struct aw_gpio_softc*,size_t,size_t) ;
 struct aw_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
aw_gpio_pin_config_32(device_t dev, uint32_t first_pin, uint32_t num_pins,
    uint32_t *pin_flags)
{
 struct aw_gpio_softc *sc;
 uint32_t bank, pin;
 int err;

 sc = device_get_softc(dev);
 if (first_pin > sc->padconf->npins)
  return (EINVAL);

 bank = sc->padconf->pins[first_pin].port;
 if (sc->padconf->pins[first_pin].pin != 0)
  return (EINVAL);
 for (err = 0, pin = first_pin; err == 0 && pin < num_pins; ++pin) {
  if (pin_flags[pin] & (GPIO_PIN_INPUT | GPIO_PIN_OUTPUT))
   err = aw_gpio_pin_configure(sc, pin, pin_flags[pin]);
 }

 return (err);
}
