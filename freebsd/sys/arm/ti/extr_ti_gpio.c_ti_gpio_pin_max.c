
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int PINS_PER_BANK ;

__attribute__((used)) static int
ti_gpio_pin_max(device_t dev, int *maxpin)
{

 *maxpin = PINS_PER_BANK - 1;

 return (0);
}
