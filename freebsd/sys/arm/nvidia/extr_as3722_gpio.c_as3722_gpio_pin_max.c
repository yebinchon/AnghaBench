
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int NGPIO ;

int
as3722_gpio_pin_max(device_t dev, int *maxpin)
{

 *maxpin = NGPIO - 1;
 return (0);
}
