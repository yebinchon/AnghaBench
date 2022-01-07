
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int device_t ;


 int ENXIO ;

 int device_printf (int ,char*,int) ;
 int device_set_desc (int ,char*) ;
 int ofw_bus_is_compatible (int ,char*) ;
 int ofw_bus_status_okay (int ) ;
 int soc_id (int*,int*) ;

__attribute__((used)) static int
ts_probe(device_t dev)
{
 uint32_t d, r;

 if (!ofw_bus_status_okay(dev))
  return (ENXIO);

 if (!ofw_bus_is_compatible(dev, "mrvl,ts"))
  return (ENXIO);
 soc_id(&d, &r);
 switch (d) {
 case 128:
  break;
 default:
  device_printf(dev, "unsupported SoC (ID: 0x%08X)!\n", d);
  return (ENXIO);
 }
 device_set_desc(dev, "Marvell Thermal Sensor");

 return (0);
}
