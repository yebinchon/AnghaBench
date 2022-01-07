
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct rt1310_gpio_softc {int dummy; } ;
struct rt1310_gpio_pinmap {scalar_t__ lp_flags; int lp_port; } ;
typedef int device_t ;


 int ENODEV ;
 scalar_t__ GPIO_PIN_INPUT ;
 scalar_t__ GPIO_PIN_OUTPUT ;
 scalar_t__ RT_GPIO_NPINS ;
 int RT_GPIO_OFF_PADIR ;
 int RT_GPIO_OFF_PBDIR ;
 int RT_GPIO_PIN_BIT (struct rt1310_gpio_pinmap const*,scalar_t__) ;


 struct rt1310_gpio_softc* device_get_softc (int ) ;
 int panic (char*) ;
 struct rt1310_gpio_pinmap* rt1310_gpio_get_pinmap (scalar_t__) ;
 scalar_t__ rt1310_gpio_read_4 (struct rt1310_gpio_softc*,int ) ;

__attribute__((used)) static int
rt1310_gpio_pin_getflags(device_t dev, uint32_t pin, uint32_t *flags)
{
 struct rt1310_gpio_softc *sc = device_get_softc(dev);
 const struct rt1310_gpio_pinmap *map;
 uint32_t state;
 int dir;

 if (pin > RT_GPIO_NPINS)
  return (ENODEV);

 map = rt1310_gpio_get_pinmap(pin);


 if ((map->lp_flags & (GPIO_PIN_INPUT | GPIO_PIN_OUTPUT)) !=
     (GPIO_PIN_INPUT | GPIO_PIN_OUTPUT)) {
  *flags = map->lp_flags;
  return (0);
 }

 switch (map->lp_port) {
 case 129:
  state = rt1310_gpio_read_4(sc, RT_GPIO_OFF_PADIR);
  dir = (state & (1 << RT_GPIO_PIN_BIT(map, pin)));
  break;
 case 128:
  state = rt1310_gpio_read_4(sc, RT_GPIO_OFF_PBDIR);
  dir = (state & (1 << RT_GPIO_PIN_BIT(map, pin)));
  break;
 default:
  panic("unknown GPIO port");
 }

 *flags = dir ? GPIO_PIN_OUTPUT : GPIO_PIN_INPUT;

 return (0);
}
