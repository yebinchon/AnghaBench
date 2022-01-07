
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,char*) ;
 scalar_t__ kmi_attached ;
 scalar_t__ ofw_bus_is_compatible (int ,char*) ;
 int ofw_bus_status_okay (int ) ;

__attribute__((used)) static int
pl050_kmi_probe(device_t dev)
{

 if (!ofw_bus_status_okay(dev))
  return (ENXIO);
 if (kmi_attached)
  return (ENXIO);

 if (ofw_bus_is_compatible(dev, "arm,pl050")) {
  device_set_desc(dev, "PL050 Keyboard/Mouse Interface");
  return (BUS_PROBE_DEFAULT);
 }

 return (ENXIO);
}
