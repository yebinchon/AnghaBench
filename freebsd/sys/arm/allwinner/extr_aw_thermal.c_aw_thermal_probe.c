
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int * THS_CONF (int ) ;
 int device_set_desc (int ,char*) ;
 int ofw_bus_status_okay (int ) ;

__attribute__((used)) static int
aw_thermal_probe(device_t dev)
{
 if (!ofw_bus_status_okay(dev))
  return (ENXIO);

 if (THS_CONF(dev) == ((void*)0))
  return (ENXIO);

 device_set_desc(dev, "Allwinner Thermal Sensor Controller");
 return (BUS_PROBE_DEFAULT);
}
