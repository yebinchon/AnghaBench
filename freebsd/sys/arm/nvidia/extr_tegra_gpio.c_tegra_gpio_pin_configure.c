
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_gpio_softc {int dummy; } ;
struct gpio_pin {unsigned int gp_flags; } ;


 int GPIO_MSK_OE ;
 unsigned int GPIO_PIN_INPUT ;
 unsigned int GPIO_PIN_OUTPUT ;
 int gpio_write_masked (struct tegra_gpio_softc*,int ,struct gpio_pin*,int) ;

__attribute__((used)) static void
tegra_gpio_pin_configure(struct tegra_gpio_softc *sc, struct gpio_pin *pin,
    unsigned int flags)
{

 if ((flags & (GPIO_PIN_INPUT|GPIO_PIN_OUTPUT)) == 0)
  return;


 pin->gp_flags &= ~(GPIO_PIN_INPUT | GPIO_PIN_OUTPUT);
 if (flags & GPIO_PIN_OUTPUT) {
  pin->gp_flags |= GPIO_PIN_OUTPUT;
  gpio_write_masked(sc, GPIO_MSK_OE, pin, 1);
 } else {
  pin->gp_flags |= GPIO_PIN_INPUT;
  gpio_write_masked(sc, GPIO_MSK_OE, pin, 0);
 }
}
