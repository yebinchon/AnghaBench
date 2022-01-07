
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rt1310_gpio_pinmap {int dummy; } ;
typedef int device_t ;


 int EINVAL ;
 int ENXIO ;
 int GPIO_PIN_OUTPUT ;
 int panic (char*) ;
 struct rt1310_gpio_pinmap* rt1310_gpio_get_pinmap (int) ;
 scalar_t__ rt1310_gpio_pin_getflags (int ,int,int*) ;

__attribute__((used)) static int
rt1310_gpio_pin_toggle(device_t dev, uint32_t pin)
{
 const struct rt1310_gpio_pinmap *map;
 uint32_t flags;

 map = rt1310_gpio_get_pinmap(pin);

 if (rt1310_gpio_pin_getflags(dev, pin, &flags))
  return (ENXIO);

 if ((flags & GPIO_PIN_OUTPUT) == 0)
  return (EINVAL);

 panic("not implemented yet");

 return (0);

}
