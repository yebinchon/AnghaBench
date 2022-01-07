
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mv_gpio_softc {int debounced_state_hi; int debounced_state_lo; } ;
typedef int device_t ;


 int GPIO_PINS_PER_REG ;
 int MV_GPIO_ASSERT_LOCKED () ;
 scalar_t__ device_get_softc (int ) ;

__attribute__((used)) static uint32_t
mv_gpio_debounced_state_get(device_t dev, int pin)
{
 uint32_t *state;
 struct mv_gpio_softc *sc;
 sc = (struct mv_gpio_softc *)device_get_softc(dev);

 MV_GPIO_ASSERT_LOCKED();

 if (pin >= GPIO_PINS_PER_REG) {
  state = &sc->debounced_state_hi;
  pin -= GPIO_PINS_PER_REG;
 } else
  state = &sc->debounced_state_lo;

 return (*state & (1 << pin));
}
