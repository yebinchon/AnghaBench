
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int phandle_t ;
typedef scalar_t__ pcell_t ;
typedef int device_t ;


 int EINVAL ;
 int axp8xx_pins ;
 scalar_t__ nitems (int ) ;

__attribute__((used)) static int
axp8xx_gpio_map_gpios(device_t bus, phandle_t dev, phandle_t gparent,
    int gcells, pcell_t *gpios, uint32_t *pin, uint32_t *flags)
{
 if (gpios[0] >= nitems(axp8xx_pins))
  return (EINVAL);

 *pin = gpios[0];
 *flags = gpios[1];

 return (0);
}
