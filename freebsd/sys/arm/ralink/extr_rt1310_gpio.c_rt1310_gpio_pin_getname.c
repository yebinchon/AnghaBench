
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int device_t ;


 scalar_t__ GPIOMAXNAME ;
 int snprintf (char*,scalar_t__,char*,int) ;

__attribute__((used)) static int
rt1310_gpio_pin_getname(device_t dev, uint32_t pin, char *name)
{
 snprintf(name, GPIOMAXNAME - 1, "GPIO_%02d", pin);

 return (0);
}
