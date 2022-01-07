
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int phandle_t ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ ocd_data; } ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 scalar_t__ OF_child (int ) ;
 int compat_data ;
 int device_set_desc (int ,char*) ;
 int ofw_bus_get_node (int ) ;
 TYPE_1__* ofw_bus_search_compatible (int ,int ) ;
 int ofw_bus_status_okay (int ) ;

__attribute__((used)) static int
aw_dwc3_probe(device_t dev)
{
 phandle_t node;

 if (!ofw_bus_status_okay(dev))
  return (ENXIO);

 if (ofw_bus_search_compatible(dev, compat_data)->ocd_data == 0)
  return (ENXIO);


 node = ofw_bus_get_node(dev);
 if (OF_child(node) <= 0)
  return (ENXIO);

 device_set_desc(dev, "Allwinner H6 DWC3");
 return (BUS_PROBE_DEFAULT);
}
