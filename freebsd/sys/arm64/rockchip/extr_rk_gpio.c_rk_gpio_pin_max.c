
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;



__attribute__((used)) static int
rk_gpio_pin_max(device_t dev, int *maxpin)
{



 *maxpin = 32;
 return (0);
}
