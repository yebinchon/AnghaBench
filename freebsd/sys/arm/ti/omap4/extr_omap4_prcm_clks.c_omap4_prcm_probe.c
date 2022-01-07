
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofw_compat_data {scalar_t__ ocd_data; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;


 int ENXIO ;

 int compat_data ;
 int device_printf (int ,char*,int) ;
 int device_set_desc (int ,char*) ;
 struct ofw_compat_data* ofw_bus_search_compatible (int ,int ) ;
 int ofw_bus_status_okay (int ) ;

__attribute__((used)) static int
omap4_prcm_probe(device_t dev)
{
 const struct ofw_compat_data *ocd;

 if (!ofw_bus_status_okay(dev))
  return (ENXIO);

 ocd = ofw_bus_search_compatible(dev, compat_data);
 if ((int)ocd->ocd_data == 0)
  return (ENXIO);

 switch ((int)ocd->ocd_data) {
  case 128:
   device_set_desc(dev, "TI OMAP Power, Reset and Clock Management (PRM)");
   break;
  case 130:
   device_set_desc(dev, "TI OMAP Power, Reset and Clock Management (C1)");
   break;
  case 129:
   device_set_desc(dev, "TI OMAP Power, Reset and Clock Management (C2)");
   break;
  default:
   device_printf(dev, "unknown instance type: %d\n", (int)ocd->ocd_data);
   return (ENXIO);
 }

 return (BUS_PROBE_DEFAULT);
}
