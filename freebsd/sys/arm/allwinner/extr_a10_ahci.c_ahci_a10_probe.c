
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,char*) ;
 int ofw_bus_is_compatible (int ,char*) ;

__attribute__((used)) static int
ahci_a10_probe(device_t dev)
{

 if (!ofw_bus_is_compatible(dev, "allwinner,sun4i-a10-ahci"))
  return (ENXIO);
 device_set_desc(dev, "Allwinner Integrated AHCI controller");

 return (BUS_PROBE_DEFAULT);
}
