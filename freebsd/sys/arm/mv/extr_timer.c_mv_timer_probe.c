
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_2__ {scalar_t__ ocd_data; } ;


 int ENXIO ;
 scalar_t__ MV_NONE ;
 int device_set_desc (int ,char*) ;
 int mv_timer_compat ;
 TYPE_1__* ofw_bus_search_compatible (int ,int ) ;
 int ofw_bus_status_okay (int ) ;

__attribute__((used)) static int
mv_timer_probe(device_t dev)
{

 if (!ofw_bus_status_okay(dev))
  return (ENXIO);

 if (ofw_bus_search_compatible(dev, mv_timer_compat)->ocd_data == MV_NONE)
  return (ENXIO);

 device_set_desc(dev, "Marvell CPU Timer");
 return (0);
}
