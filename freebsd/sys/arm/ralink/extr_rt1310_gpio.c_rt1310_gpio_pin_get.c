
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rt1310_gpio_softc {int dummy; } ;
struct rt1310_gpio_pinmap {int lp_port; } ;
typedef int device_t ;


 int ENXIO ;
 int GPIO_PIN_INPUT ;
 int GPIO_PIN_OUTPUT ;
 int RT_GPIO_OFF_PADR ;
 int RT_GPIO_OFF_PBDR ;
 int RT_GPIO_PIN_BIT (struct rt1310_gpio_pinmap const*,int) ;


 struct rt1310_gpio_softc* device_get_softc (int ) ;
 struct rt1310_gpio_pinmap* rt1310_gpio_get_pinmap (int) ;
 scalar_t__ rt1310_gpio_pin_getflags (int ,int,int*) ;
 int rt1310_gpio_read_4 (struct rt1310_gpio_softc*,int ) ;

__attribute__((used)) static int
rt1310_gpio_pin_get(device_t dev, uint32_t pin, uint32_t *value)
{
 struct rt1310_gpio_softc *sc = device_get_softc(dev);
 const struct rt1310_gpio_pinmap *map;
 uint32_t state, flags;
 int dir;

 map = rt1310_gpio_get_pinmap(pin);

 if (rt1310_gpio_pin_getflags(dev, pin, &flags))
  return (ENXIO);

 if (flags & GPIO_PIN_OUTPUT)
  dir = 1;

 if (flags & GPIO_PIN_INPUT)
  dir = 0;

 switch (map->lp_port) {
 case 129:
  state = rt1310_gpio_read_4(sc, RT_GPIO_OFF_PADR);
  *value = !!(state & (1 << RT_GPIO_PIN_BIT(map, pin)));
  break;
 case 128:
  state = rt1310_gpio_read_4(sc, RT_GPIO_OFF_PBDR);
  *value = !!(state & (1 << RT_GPIO_PIN_BIT(map, pin)));
  break;
 }

 return (0);
}
