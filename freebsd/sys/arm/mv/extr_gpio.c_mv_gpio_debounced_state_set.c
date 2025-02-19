
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct mv_gpio_softc {int debounced_state_hi; int debounced_state_lo; } ;
typedef int device_t ;


 int GPIO_PINS_PER_REG ;
 int MV_GPIO_ASSERT_LOCKED () ;
 scalar_t__ device_get_softc (int ) ;

__attribute__((used)) static void
mv_gpio_debounced_state_set(device_t dev, int pin, uint8_t new_state)
{
 uint32_t *old_state;
 struct mv_gpio_softc *sc;
 sc = (struct mv_gpio_softc *)device_get_softc(dev);

 MV_GPIO_ASSERT_LOCKED();

 if (pin >= GPIO_PINS_PER_REG) {
  old_state = &sc->debounced_state_hi;
  pin -= GPIO_PINS_PER_REG;
 } else
  old_state = &sc->debounced_state_lo;

 if (new_state)
  *old_state |= (1 << pin);
 else
  *old_state &= ~(1 << pin);
}
