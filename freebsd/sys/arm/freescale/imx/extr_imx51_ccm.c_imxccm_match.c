
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,char*) ;
 int ofw_bus_is_compatible (int ,char*) ;
 int ofw_bus_status_okay (int ) ;

__attribute__((used)) static int
imxccm_match(device_t dev)
{

 if (!ofw_bus_status_okay(dev))
  return (ENXIO);

 if (!ofw_bus_is_compatible(dev, "fsl,imx51-ccm") &&
     !ofw_bus_is_compatible(dev, "fsl,imx53-ccm"))
  return (ENXIO);

 device_set_desc(dev, "Freescale Clock Control Module");
 return (BUS_PROBE_DEFAULT);
}
