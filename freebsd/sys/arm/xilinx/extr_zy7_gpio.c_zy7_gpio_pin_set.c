
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct zy7_gpio_softc {int dummy; } ;
typedef int device_t ;


 int EINVAL ;
 int VALID_PIN (int) ;
 int WR4 (struct zy7_gpio_softc*,int ,int) ;
 int ZY7_GPIO_MASK_DATA_LSW (int) ;
 int ZY7_GPIO_MASK_DATA_MSW (int) ;
 struct zy7_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
zy7_gpio_pin_set(device_t dev, uint32_t pin, unsigned int value)
{
 struct zy7_gpio_softc *sc = device_get_softc(dev);

 if (!VALID_PIN(pin) || value > 1)
  return (EINVAL);


 if ((pin & 16) != 0)
  WR4(sc, ZY7_GPIO_MASK_DATA_MSW(pin >> 5),
      (0xffff0000 ^ (0x10000 << (pin & 15))) |
      (value << (pin & 15)));
 else
  WR4(sc, ZY7_GPIO_MASK_DATA_LSW(pin >> 5),
      (0xffff0000 ^ (0x10000 << (pin & 15))) |
      (value << (pin & 15)));

 return (0);
}
