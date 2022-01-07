
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct rt1310_gpio_pinmap {scalar_t__ lp_flags; } ;
typedef int device_t ;


 int ENODEV ;
 scalar_t__ RT_GPIO_NPINS ;
 struct rt1310_gpio_pinmap* rt1310_gpio_get_pinmap (scalar_t__) ;

__attribute__((used)) static int
rt1310_gpio_pin_getcaps(device_t dev, uint32_t pin, uint32_t *caps)
{
 const struct rt1310_gpio_pinmap *map;

 if (pin > RT_GPIO_NPINS)
  return (ENODEV);

 map = rt1310_gpio_get_pinmap(pin);

 *caps = map->lp_flags;
 return (0);
}
