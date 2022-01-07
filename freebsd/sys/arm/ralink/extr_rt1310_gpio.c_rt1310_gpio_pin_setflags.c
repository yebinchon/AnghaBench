
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rt1310_gpio_softc {int dummy; } ;
struct rt1310_gpio_pinmap {int lp_flags; int lp_port; } ;
typedef int device_t ;


 int ENODEV ;
 int ENOTSUP ;
 int GPIO_PIN_INPUT ;
 int GPIO_PIN_OUTPUT ;
 int RT_GPIO_NPINS ;
 int RT_GPIO_OFF_PADIR ;
 int RT_GPIO_OFF_PBDIR ;
 int RT_GPIO_PIN_IDX (struct rt1310_gpio_pinmap const*,int) ;


 struct rt1310_gpio_softc* device_get_softc (int ) ;
 struct rt1310_gpio_pinmap* rt1310_gpio_get_pinmap (int) ;
 int rt1310_gpio_read_4 (struct rt1310_gpio_softc*,int) ;
 int rt1310_gpio_write_4 (struct rt1310_gpio_softc*,int,int) ;

__attribute__((used)) static int
rt1310_gpio_pin_setflags(device_t dev, uint32_t pin, uint32_t flags)
{
 struct rt1310_gpio_softc *sc = device_get_softc(dev);
 const struct rt1310_gpio_pinmap *map;
 uint32_t dir, state;
 uint32_t port;

 if (pin > RT_GPIO_NPINS)
  return (ENODEV);

 map = rt1310_gpio_get_pinmap(pin);


 if ((map->lp_flags & (GPIO_PIN_INPUT | GPIO_PIN_OUTPUT)) !=
     (GPIO_PIN_INPUT | GPIO_PIN_OUTPUT))
  return (ENOTSUP);

 if (flags & GPIO_PIN_INPUT)
  dir = 0;

 if (flags & GPIO_PIN_OUTPUT)
  dir = 1;

 switch (map->lp_port) {
 case 129:
  port = RT_GPIO_OFF_PADIR;
  break;
 case 128:
  port = RT_GPIO_OFF_PBDIR;
  break;
 }

 state = rt1310_gpio_read_4(sc, port);
 if (flags & GPIO_PIN_INPUT) {
  state &= ~(1 << RT_GPIO_PIN_IDX(map, pin));
 } else {
  state |= (1 << RT_GPIO_PIN_IDX(map, pin));
 }
 rt1310_gpio_write_4(sc, port, state);

 return (0);
}
