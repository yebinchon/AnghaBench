
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int strbuf ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ ocd_data; } ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int ET_TMR_NUM ;
 int TC_TMR_NUM ;
 int compat_data ;
 int device_set_desc_copy (int ,char*) ;
 TYPE_1__* ofw_bus_search_compatible (int ,int ) ;
 int ofw_bus_status_okay (int ) ;
 int snprintf (char*,int,char*,int) ;
 int ti_hwmods_get_unit (int ,char*) ;

__attribute__((used)) static int
am335x_dmtimer_probe(device_t dev)
{
 char strbuf[32];
 int tmr_num;

 if (!ofw_bus_status_okay(dev))
  return (ENXIO);

 if (ofw_bus_search_compatible(dev, compat_data)->ocd_data == 0)
  return (ENXIO);






 tmr_num = ti_hwmods_get_unit(dev, "timer");
 if (tmr_num != ET_TMR_NUM && tmr_num != TC_TMR_NUM)
  return (ENXIO);

 snprintf(strbuf, sizeof(strbuf), "AM335x DMTimer%d", tmr_num);
 device_set_desc_copy(dev, strbuf);

 return(BUS_PROBE_DEFAULT);
}
