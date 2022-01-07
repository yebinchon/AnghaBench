
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int device_t ;


 int EINVAL ;
 scalar_t__ GPIO_PIN_INPUT ;
 scalar_t__ GPIO_PIN_OUTPUT ;
 int axp8xx_pins ;
 scalar_t__ nitems (int ) ;

__attribute__((used)) static int
axp8xx_gpio_pin_getcaps(device_t dev, uint32_t pin, uint32_t *caps)
{
 if (pin >= nitems(axp8xx_pins))
  return (EINVAL);

 *caps = GPIO_PIN_INPUT | GPIO_PIN_OUTPUT;

 return (0);
}
