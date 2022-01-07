
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int EEXIST ;
 int ENXIO ;
 int device_set_desc (int ,char*) ;
 int ofw_bus_is_compatible (int ,char*) ;
 int ofw_bus_status_okay (int ) ;
 scalar_t__ ti_scm_sc ;
 int ti_soc_is_supported () ;

__attribute__((used)) static int
ti_scm_probe(device_t dev)
{

 if (!ti_soc_is_supported())
  return (ENXIO);

 if (!ofw_bus_status_okay(dev))
  return (ENXIO);

 if (!ofw_bus_is_compatible(dev, "syscon"))
  return (ENXIO);

 if (ti_scm_sc) {
  return (EEXIST);
 }

 device_set_desc(dev, "TI Control Module");
 return (BUS_PROBE_DEFAULT);
}
