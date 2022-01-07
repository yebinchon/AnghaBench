
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct aw_gpio_softc {TYPE_1__* padconf; } ;
typedef int device_t ;
struct TYPE_4__ {size_t port; size_t pin; } ;
struct TYPE_3__ {size_t npins; TYPE_2__* pins; } ;


 int AW_GPIO_GP_DAT (size_t) ;
 int AW_GPIO_LOCK (struct aw_gpio_softc*) ;
 size_t AW_GPIO_READ (struct aw_gpio_softc*,int ) ;
 int AW_GPIO_UNLOCK (struct aw_gpio_softc*) ;
 int AW_GPIO_WRITE (struct aw_gpio_softc*,int ,size_t) ;
 int EINVAL ;
 struct aw_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
aw_gpio_pin_toggle(device_t dev, uint32_t pin)
{
 struct aw_gpio_softc *sc;
 uint32_t bank, data;

 sc = device_get_softc(dev);
 if (pin > sc->padconf->npins)
  return (EINVAL);

 bank = sc->padconf->pins[pin].port;
 pin = sc->padconf->pins[pin].pin;

 AW_GPIO_LOCK(sc);
 data = AW_GPIO_READ(sc, AW_GPIO_GP_DAT(bank));
 if (data & (1 << pin))
  data &= ~(1 << pin);
 else
  data |= (1 << pin);
 AW_GPIO_WRITE(sc, AW_GPIO_GP_DAT(bank), data);
 AW_GPIO_UNLOCK(sc);

 return (0);
}
