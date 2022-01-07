
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_2__ {scalar_t__ ocd_data; } ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int compat_data ;
 scalar_t__ device_get_unit (int ) ;
 int device_set_desc (int ,char*) ;
 TYPE_1__* ofw_bus_search_compatible (int ,int ) ;
 int ofw_bus_status_okay (int ) ;

__attribute__((used)) static int
imx_gpt_probe(device_t dev)
{

 if (!ofw_bus_status_okay(dev))
  return (ENXIO);







 if (device_get_unit(dev) > 0)
  return (ENXIO);

 if (ofw_bus_search_compatible(dev, compat_data)->ocd_data != 0) {
  device_set_desc(dev, "Freescale i.MX GPT timer");
  return (BUS_PROBE_DEFAULT);
 }

 return (ENXIO);
}
