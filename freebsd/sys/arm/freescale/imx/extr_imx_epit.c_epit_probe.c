
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
typedef scalar_t__ rman_res_t ;
typedef int device_t ;
struct TYPE_2__ {int ocd_data; } ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;


 int RF_UNMAPPED ;
 int SYS_RES_MEMORY ;
 struct resource* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_free_resource (int ,int ,struct resource*) ;
 int compat_data ;
 int device_get_unit (int ) ;
 int device_set_desc (int ,char*) ;
 scalar_t__* imx51_epit_ioaddr ;
 scalar_t__* imx53_epit_ioaddr ;
 scalar_t__* imx6_epit_ioaddr ;
 int imx_soc_family () ;
 int imx_soc_type () ;
 int ofw_bus_get_name (int ) ;
 TYPE_1__* ofw_bus_search_compatible (int ,int ) ;
 int ofw_bus_status_okay (int ) ;
 scalar_t__ rman_get_start (struct resource*) ;
 int * strstr (int ,char*) ;

__attribute__((used)) static int
epit_probe(device_t dev)
{
 struct resource *memres;
 rman_res_t ioaddr;
 int num_units, rid, unit;

 if (!ofw_bus_status_okay(dev))
  return (ENXIO);







 unit = device_get_unit(dev);
 num_units = ofw_bus_search_compatible(dev, compat_data)->ocd_data;
 if (unit < num_units) {
  device_set_desc(dev, "i.MX EPIT timer");
  return (BUS_PROBE_DEFAULT);
 }






 if (strstr(ofw_bus_get_name(dev), "epit") == ((void*)0))
  return (ENXIO);

 rid = 0;
 memres = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid, RF_UNMAPPED);
 if (memres == ((void*)0))
  return (ENXIO);
 ioaddr = rman_get_start(memres);
 bus_free_resource(dev, SYS_RES_MEMORY, memres);

 if (imx_soc_family() == 6) {
  if (unit > 0)
   return (ENXIO);
  if (ioaddr != imx6_epit_ioaddr[unit])
   return (ENXIO);
 } else {
  if (unit > 1)
   return (ENXIO);
  switch (imx_soc_type()) {
  case 129:
   if (ioaddr != imx51_epit_ioaddr[unit])
    return (ENXIO);
   break;
  case 128:
   if (ioaddr != imx53_epit_ioaddr[unit])
    return (ENXIO);
   break;
  default:
   return (ENXIO);
  }




  return (ENXIO);
 }

 device_set_desc(dev, "i.MX EPIT timer");
 return (BUS_PROBE_DEFAULT);
}
