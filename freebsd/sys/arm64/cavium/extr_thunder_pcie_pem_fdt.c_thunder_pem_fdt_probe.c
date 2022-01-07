
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int THUNDER_PEM_DESC ;
 int device_set_desc (int ,int ) ;
 scalar_t__ ofw_bus_is_compatible (int ,char*) ;
 int ofw_bus_status_okay (int ) ;

__attribute__((used)) static int
thunder_pem_fdt_probe(device_t dev)
{

 if (!ofw_bus_status_okay(dev))
  return (ENXIO);

 if (ofw_bus_is_compatible(dev, "cavium,pci-host-thunder-pem")) {
  device_set_desc(dev, THUNDER_PEM_DESC);
  return (BUS_PROBE_DEFAULT);
 }

 return (ENXIO);
}
