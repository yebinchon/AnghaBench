
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_2__ {scalar_t__ ocd_data; } ;


 int BUS_PROBE_SPECIFIC ;
 int ENXIO ;
 TYPE_1__* aw_ccu_search_compatible () ;
 int device_set_desc (int ,char*) ;
 char* ofw_bus_get_name (int ) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
aw_ccu_probe(device_t dev)
{
 const char *name;

 name = ofw_bus_get_name(dev);

 if (name == ((void*)0) || strcmp(name, "clocks") != 0)
  return (ENXIO);

 if (aw_ccu_search_compatible()->ocd_data == 0)
  return (ENXIO);

 device_set_desc(dev, "Allwinner Clock Control Unit");
 return (BUS_PROBE_SPECIFIC);
}
