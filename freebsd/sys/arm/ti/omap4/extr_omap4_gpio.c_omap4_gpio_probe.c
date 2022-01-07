
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_2__ {scalar_t__ ocd_data; } ;


 scalar_t__ CHIP_OMAP_4 ;
 int ENXIO ;
 int compat_data ;
 int device_set_desc (int ,char*) ;
 TYPE_1__* ofw_bus_search_compatible (int ,int ) ;
 int ofw_bus_status_okay (int ) ;
 scalar_t__ ti_chip () ;

__attribute__((used)) static int
omap4_gpio_probe(device_t dev)
{

 if (!ofw_bus_status_okay(dev))
  return (ENXIO);

 if (ofw_bus_search_compatible(dev, compat_data)->ocd_data == 0)
  return (ENXIO);
 if (ti_chip() != CHIP_OMAP_4)
  return (ENXIO);

 device_set_desc(dev, "TI OMAP4 General Purpose I/O (GPIO)");

 return (0);
}
