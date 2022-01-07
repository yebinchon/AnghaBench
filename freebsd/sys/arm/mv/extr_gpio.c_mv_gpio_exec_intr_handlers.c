
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct mv_gpio_softc {TYPE_1__* gpio_setup; } ;
typedef int device_t ;
struct TYPE_2__ {int gp_flags; } ;


 int GPIO_PINS_PER_REG ;
 int MV_GPIO_ASSERT_LOCKED () ;
 int MV_GPIO_IN_DEBOUNCE ;
 int MV_GPIO_IN_IRQ_DOUBLE_EDGE ;
 scalar_t__ device_get_softc (int ) ;
 int mv_gpio_debounce_start (int ,int) ;
 int mv_gpio_intr_handler (int ,int) ;
 int mv_gpio_polarity (int ,int,int ,int) ;

__attribute__((used)) static void
mv_gpio_exec_intr_handlers(device_t dev, uint32_t status, int high)
{
 int i, pin;
 struct mv_gpio_softc *sc;
 sc = (struct mv_gpio_softc *)device_get_softc(dev);

 MV_GPIO_ASSERT_LOCKED();

 i = 0;
 while (status != 0) {
  if (status & 1) {
   pin = (high ? (i + GPIO_PINS_PER_REG) : i);
   if (sc->gpio_setup[pin].gp_flags & MV_GPIO_IN_DEBOUNCE)
    mv_gpio_debounce_start(dev, pin);
   else if (sc->gpio_setup[pin].gp_flags & MV_GPIO_IN_IRQ_DOUBLE_EDGE) {
    mv_gpio_polarity(dev, pin, 0, 1);
    mv_gpio_intr_handler(dev, pin);
   } else
    mv_gpio_intr_handler(dev, pin);
  }
  status >>= 1;
  i++;
 }
}
