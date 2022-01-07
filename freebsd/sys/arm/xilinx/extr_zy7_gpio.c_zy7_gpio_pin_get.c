
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
 int ZY7_GPIO_DATA_RO (int) ;
 struct zy7_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
zy7_gpio_pin_get(device_t dev, uint32_t pin, unsigned int *value)
{
 struct zy7_gpio_softc *sc = device_get_softc(dev);

 if (!VALID_PIN(pin))
  return (EINVAL);

 *value = (RD4(sc, ZY7_GPIO_DATA_RO(pin >> 5)) >> (pin & 31)) & 1;

 return (0);
}
