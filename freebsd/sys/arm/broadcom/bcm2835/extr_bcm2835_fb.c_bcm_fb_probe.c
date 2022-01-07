
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_2__ {scalar_t__ ocd_data; } ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int SC_AUTODETECT_KBD ;
 int compat_data ;
 int device_get_flags (int ) ;
 int device_get_unit (int ) ;
 int device_set_desc (int ,char*) ;
 TYPE_1__* ofw_bus_search_compatible (int ,int ) ;
 int sc_probe_unit (int ,int) ;

__attribute__((used)) static int
bcm_fb_probe(device_t dev)
{
 int error;

 if (ofw_bus_search_compatible(dev, compat_data)->ocd_data == 0)
  return (ENXIO);

 device_set_desc(dev, "BCM2835 framebuffer device");
 error = sc_probe_unit(device_get_unit(dev),
     device_get_flags(dev) | SC_AUTODETECT_KBD);
 if (error != 0)
  return (error);

 return (BUS_PROBE_DEFAULT);
}
