
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
 int compat_data ;
 int device_set_desc_copy (int ,char*) ;
 int dmtpps_find_tmr_num () ;
 int dmtpps_tmr_num ;
 TYPE_1__* ofw_bus_search_compatible (int ,int ) ;
 int ofw_bus_status_okay (int ) ;
 int snprintf (char*,int,char*,int) ;
 int ti_hwmods_get_unit (int ,char*) ;

__attribute__((used)) static int
dmtpps_probe(device_t dev)
{
 char strbuf[64];
 int tmr_num;

 if (!ofw_bus_status_okay(dev))
  return (ENXIO);

 if (ofw_bus_search_compatible(dev, compat_data)->ocd_data == 0)
  return (ENXIO);






 if (dmtpps_tmr_num == 0)
  dmtpps_tmr_num = dmtpps_find_tmr_num();





 tmr_num = ti_hwmods_get_unit(dev, "timer");
 if (dmtpps_tmr_num != tmr_num)
  return (ENXIO);

 snprintf(strbuf, sizeof(strbuf), "AM335x PPS-Capture DMTimer%d",
     tmr_num);
 device_set_desc_copy(dev, strbuf);

 return(BUS_PROBE_DEFAULT);
}
