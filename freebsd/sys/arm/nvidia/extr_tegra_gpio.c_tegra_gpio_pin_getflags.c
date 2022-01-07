
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct tegra_gpio_softc {size_t gpio_npins; TYPE_1__* gpio_pins; } ;
typedef int device_t ;
struct TYPE_2__ {size_t gp_flags; } ;


 int EINVAL ;
 int ENXIO ;
 int GPIO_CNF ;
 int GPIO_LOCK (struct tegra_gpio_softc*) ;
 int GPIO_UNLOCK (struct tegra_gpio_softc*) ;
 struct tegra_gpio_softc* device_get_softc (int ) ;
 int gpio_read (struct tegra_gpio_softc*,int ,TYPE_1__*) ;

__attribute__((used)) static int
tegra_gpio_pin_getflags(device_t dev, uint32_t pin, uint32_t *flags)
{
 struct tegra_gpio_softc *sc;
 int cnf;

 sc = device_get_softc(dev);
 if (pin >= sc->gpio_npins)
  return (EINVAL);

 GPIO_LOCK(sc);
 cnf = gpio_read(sc, GPIO_CNF, &sc->gpio_pins[pin]);
 if (cnf == 0) {
  GPIO_UNLOCK(sc);
  return (ENXIO);
 }
 *flags = sc->gpio_pins[pin].gp_flags;
 GPIO_UNLOCK(sc);

 return (0);
}
