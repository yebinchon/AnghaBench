
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int OF_parent (int ) ;
 int device_set_desc (int ,char*) ;
 int mv_fdt_is_type (int ,char*) ;
 int ofw_bus_get_node (int ) ;
 scalar_t__ ofw_bus_is_compatible (int ,char*) ;
 scalar_t__ ofw_bus_node_is_compatible (int ,char*) ;
 int ofw_bus_status_okay (int ) ;

__attribute__((used)) static int
mv_pcib_probe(device_t self)
{
 phandle_t node;

 node = ofw_bus_get_node(self);
 if (!mv_fdt_is_type(node, "pci"))
  return (ENXIO);

 if (!(ofw_bus_is_compatible(self, "mrvl,pcie") ||
     ofw_bus_is_compatible(self, "mrvl,pci") ||
     ofw_bus_node_is_compatible(
     OF_parent(node), "marvell,armada-370-pcie")))
  return (ENXIO);

 if (!ofw_bus_status_okay(self))
  return (ENXIO);

 device_set_desc(self, "Marvell Integrated PCI/PCI-E Controller");
 return (BUS_PROBE_DEFAULT);
}
