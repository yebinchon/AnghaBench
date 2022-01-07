
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,char*) ;
 scalar_t__ ofw_bus_is_compatible (int ,char*) ;

__attribute__((used)) static int
a10_sramc_probe(device_t dev)
{

 if (ofw_bus_is_compatible(dev, "allwinner,sun4i-a10-sram-controller")) {
  device_set_desc(dev, "Allwinner sramc module");
  return (BUS_PROBE_DEFAULT);
 }

 return (ENXIO);
}
