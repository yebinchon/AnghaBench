
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int OF_hasprop (int ,char*) ;
 int device_set_desc (int ,char*) ;
 int ofw_bus_get_node (int ) ;
 int ofw_bus_is_compatible (int ,char*) ;
 int ofw_bus_status_okay (int ) ;

__attribute__((used)) static int
rt1310_gpio_probe(device_t dev)
{
 phandle_t node;

 if (!ofw_bus_status_okay(dev))
  return (ENXIO);

 if (!ofw_bus_is_compatible(dev, "ralink,rt1310-gpio"))
  return (ENXIO);

 node = ofw_bus_get_node(dev);
 if (!OF_hasprop(node, "gpio-controller"))
  return (ENXIO);

 device_set_desc(dev, "RT1310 GPIO");
 return (BUS_PROBE_DEFAULT);
}
