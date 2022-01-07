
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int SC_AUTODETECT_KBD ;
 int device_get_flags (int ) ;
 int device_get_unit (int ) ;
 int device_set_desc (int ,char*) ;
 int ofw_bus_is_compatible (int ,char*) ;
 int ofw_bus_status_okay (int ) ;
 int sc_probe_unit (int ,int) ;

__attribute__((used)) static int
ipu3_fb_probe(device_t dev)
{
 int error;

 if (!ofw_bus_status_okay(dev))
  return (ENXIO);

 if (!ofw_bus_is_compatible(dev, "fsl,ipu3"))
  return (ENXIO);

 device_set_desc(dev, "i.MX5x Image Processing Unit v3 (FB)");

 error = sc_probe_unit(device_get_unit(dev),
     device_get_flags(dev) | SC_AUTODETECT_KBD);

 if (error != 0)
  return (error);

 return (BUS_PROBE_DEFAULT);
}
