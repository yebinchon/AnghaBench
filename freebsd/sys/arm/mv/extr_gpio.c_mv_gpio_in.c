
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
struct mv_gpio_softc {TYPE_1__* gpio_setup; } ;
typedef int device_t ;
struct TYPE_2__ {int gp_flags; } ;


 int MV_GPIO_ASSERT_LOCKED () ;
 int MV_GPIO_IN_DEBOUNCE ;
 int MV_GPIO_IN_IRQ_DOUBLE_EDGE ;
 int MV_GPIO_IN_POL_LOW ;
 scalar_t__ device_get_softc (int ) ;
 scalar_t__ mv_gpio_debounced_state_get (int ,size_t) ;
 scalar_t__ mv_gpio_value_get (int ,size_t,int) ;

uint8_t
mv_gpio_in(device_t dev, uint32_t pin)
{
 uint8_t state;
 struct mv_gpio_softc *sc;
 sc = (struct mv_gpio_softc *)device_get_softc(dev);

 MV_GPIO_ASSERT_LOCKED();

 if (sc->gpio_setup[pin].gp_flags & MV_GPIO_IN_DEBOUNCE) {
  if (sc->gpio_setup[pin].gp_flags & MV_GPIO_IN_POL_LOW)
   state = (mv_gpio_debounced_state_get(dev, pin) ? 0 : 1);
  else
   state = (mv_gpio_debounced_state_get(dev, pin) ? 1 : 0);
 } else if (sc->gpio_setup[pin].gp_flags & MV_GPIO_IN_IRQ_DOUBLE_EDGE) {
  if (sc->gpio_setup[pin].gp_flags & MV_GPIO_IN_POL_LOW)
   state = (mv_gpio_value_get(dev, pin, 1) ? 0 : 1);
  else
   state = (mv_gpio_value_get(dev, pin, 1) ? 1 : 0);
 } else
  state = (mv_gpio_value_get(dev, pin, 0) ? 1 : 0);

 return (state);
}
