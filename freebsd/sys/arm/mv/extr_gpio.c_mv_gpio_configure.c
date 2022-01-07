
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct mv_gpio_softc {int pin_num; scalar_t__ irq_num; TYPE_1__* gpio_setup; } ;
typedef int device_t ;
struct TYPE_2__ {int gp_flags; } ;


 int EINVAL ;
 int GPIO_PIN_INPUT ;
 int GPIO_PIN_OPENDRAIN ;
 int GPIO_PIN_OUTPUT ;
 int MV_GPIO_IN_DEBOUNCE ;
 int MV_GPIO_IN_POL_LOW ;
 int MV_GPIO_LOCK () ;
 int MV_GPIO_OUT_BLINK ;
 int MV_GPIO_UNLOCK () ;
 scalar_t__ device_get_softc (int ) ;
 int mv_gpio_blink (int ,int,int) ;
 int mv_gpio_debounce_prepare (int ,int) ;
 int mv_gpio_debounce_setup (int ,int) ;
 int mv_gpio_out_en (int ,int,int) ;
 int mv_gpio_polarity (int ,int,int,int ) ;
 int mv_gpio_value_set (int ,int,int) ;

int
mv_gpio_configure(device_t dev, uint32_t pin, uint32_t flags, uint32_t mask)
{
 int error;
 struct mv_gpio_softc *sc;
 sc = (struct mv_gpio_softc *)device_get_softc(dev);
 error = 0;

 if (pin >= sc->pin_num)
  return (EINVAL);


 if (((flags & mask) & (GPIO_PIN_INPUT | GPIO_PIN_OUTPUT)) ==
     (GPIO_PIN_INPUT | GPIO_PIN_OUTPUT))
  return (EINVAL);

 if (mask & MV_GPIO_IN_DEBOUNCE) {
  if (sc->irq_num == 0)
   return (EINVAL);
  error = mv_gpio_debounce_prepare(dev, pin);
  if (error != 0)
   return (error);
 }

 MV_GPIO_LOCK();

 if ((mask & flags) & GPIO_PIN_INPUT)
  mv_gpio_out_en(dev, pin, 0);
 if ((mask & flags) & GPIO_PIN_OUTPUT) {
  if ((flags & mask) & GPIO_PIN_OPENDRAIN)
   mv_gpio_value_set(dev, pin, 0);
  else
   mv_gpio_value_set(dev, pin, 1);
  mv_gpio_out_en(dev, pin, 1);
 }

 if (mask & MV_GPIO_OUT_BLINK)
  mv_gpio_blink(dev, pin, flags & MV_GPIO_OUT_BLINK);
 if (mask & MV_GPIO_IN_POL_LOW)
  mv_gpio_polarity(dev, pin, flags & MV_GPIO_IN_POL_LOW, 0);
 if (mask & MV_GPIO_IN_DEBOUNCE) {
  error = mv_gpio_debounce_setup(dev, pin);
  if (error) {
   MV_GPIO_UNLOCK();
   return (error);
  }
 }

 sc->gpio_setup[pin].gp_flags &= ~(mask);
 sc->gpio_setup[pin].gp_flags |= (flags & mask);

 MV_GPIO_UNLOCK();

 return (0);
}
