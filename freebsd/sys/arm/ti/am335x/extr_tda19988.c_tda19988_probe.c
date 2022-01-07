
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int ofw_bus_is_compatible (int ,char*) ;

__attribute__((used)) static int
tda19988_probe(device_t dev)
{

 if (!ofw_bus_is_compatible(dev, "nxp,tda998x"))
  return (ENXIO);

 return (BUS_PROBE_DEFAULT);
}
