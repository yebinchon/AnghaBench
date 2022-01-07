
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int axp8xx_pins ;
 int nitems (int ) ;

__attribute__((used)) static int
axp8xx_gpio_pin_max(device_t dev, int *maxpin)
{
 *maxpin = nitems(axp8xx_pins) - 1;

 return (0);
}
