
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct a10_timer_softc {int dummy; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ ocd_data; } ;


 scalar_t__ ALLWINNERSOC_SUN4I ;
 scalar_t__ ALLWINNERSOC_SUN5I ;
 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 scalar_t__ allwinner_soc_family () ;
 int compat_data ;
 struct a10_timer_softc* device_get_softc (int ) ;
 int device_set_desc (int ,char*) ;
 TYPE_1__* ofw_bus_search_compatible (int ,int ) ;

__attribute__((used)) static int
a10_timer_probe(device_t dev)
{
 struct a10_timer_softc *sc;




 sc = device_get_softc(dev);

 if (ofw_bus_search_compatible(dev, compat_data)->ocd_data == 0)
  return (ENXIO);
 device_set_desc(dev, "Allwinner timer");
 return (BUS_PROBE_DEFAULT);
}
