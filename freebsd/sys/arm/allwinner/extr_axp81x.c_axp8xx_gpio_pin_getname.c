
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int device_t ;
struct TYPE_3__ {char* name; } ;


 int EINVAL ;
 int GPIOMAXNAME ;
 TYPE_1__* axp8xx_pins ;
 size_t nitems (TYPE_1__*) ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static int
axp8xx_gpio_pin_getname(device_t dev, uint32_t pin, char *name)
{
 if (pin >= nitems(axp8xx_pins))
  return (EINVAL);

 snprintf(name, GPIOMAXNAME, "%s", axp8xx_pins[pin].name);

 return (0);
}
