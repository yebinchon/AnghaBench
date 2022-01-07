
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct zy7_gpio_softc {int dummy; } ;
typedef int device_t ;


 int EINVAL ;
 int RD4 (struct zy7_gpio_softc*,int ) ;
 int VALID_PIN (int) ;
 int WR4 (struct zy7_gpio_softc*,int ,int) ;
 int ZGPIO_LOCK (struct zy7_gpio_softc*) ;
 int ZGPIO_UNLOCK (struct zy7_gpio_softc*) ;
 int ZY7_GPIO_DATA (int) ;
 struct zy7_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
zy7_gpio_pin_toggle(device_t dev, uint32_t pin)
{
 struct zy7_gpio_softc *sc = device_get_softc(dev);

 if (!VALID_PIN(pin))
  return (EINVAL);

 ZGPIO_LOCK(sc);

 WR4(sc, ZY7_GPIO_DATA(pin >> 5),
     RD4(sc, ZY7_GPIO_DATA(pin >> 5)) ^ (1 << (pin & 31)));

 ZGPIO_UNLOCK(sc);

 return (0);
}
