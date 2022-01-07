
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,char*) ;
 int fdt_depth_search_compatible (int ,char*,int ) ;
 int ofw_bus_get_node (int ) ;
 int ofw_bus_status_okay (int ) ;

__attribute__((used)) static int
firmware_probe(device_t dev)
{
 phandle_t node;

 node = ofw_bus_get_node(dev);





 if (!fdt_depth_search_compatible(node, "intel,stratix10-svc", 0))
  return (ENXIO);

 if (!ofw_bus_status_okay(dev))
  return (ENXIO);

 device_set_desc(dev, "Firmware node");

 return (BUS_PROBE_DEFAULT);
}
