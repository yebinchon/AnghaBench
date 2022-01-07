
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct tegra_gpio_softc {size_t gpio_npins; int * gpio_pins; } ;
typedef int device_t ;


 int EINVAL ;
 int GPIO_LOCK (struct tegra_gpio_softc*) ;
 int GPIO_MSK_OUT ;
 int GPIO_UNLOCK (struct tegra_gpio_softc*) ;
 struct tegra_gpio_softc* device_get_softc (int ) ;
 int gpio_write_masked (struct tegra_gpio_softc*,int ,int *,unsigned int) ;

__attribute__((used)) static int
tegra_gpio_pin_set(device_t dev, uint32_t pin, unsigned int value)
{
 struct tegra_gpio_softc *sc;

 sc = device_get_softc(dev);
 if (pin >= sc->gpio_npins)
  return (EINVAL);
 GPIO_LOCK(sc);
 gpio_write_masked(sc, GPIO_MSK_OUT, &sc->gpio_pins[pin], value);
 GPIO_UNLOCK(sc);

 return (0);
}
