
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int CPU_IMPL_CAVIUM ;
 int CPU_IMPL_MASK ;
 int CPU_MATCH (int,int ,int ,int ,int ) ;
 int CPU_PART_MASK ;
 int CPU_PART_THUNDERX ;
 int ENXIO ;
 int device_set_desc (int ,char*) ;
 scalar_t__ ofw_bus_is_compatible (int ,char*) ;
 int ofw_bus_status_okay (int ) ;

__attribute__((used)) static int
thunder_pcie_fdt_probe(device_t dev)
{


 if (!CPU_MATCH(CPU_IMPL_MASK | CPU_PART_MASK,
     CPU_IMPL_CAVIUM, CPU_PART_THUNDERX, 0, 0))
  return (ENXIO);

 if (!ofw_bus_status_okay(dev))
  return (ENXIO);

 if (ofw_bus_is_compatible(dev, "pci-host-ecam-generic") ||
     ofw_bus_is_compatible(dev, "cavium,thunder-pcie") ||
     ofw_bus_is_compatible(dev, "cavium,pci-host-thunder-ecam")) {
  device_set_desc(dev, "Cavium Integrated PCI/PCI-E Controller");
  return (BUS_PROBE_DEFAULT);
 }

 return (ENXIO);
}
