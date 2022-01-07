
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;




 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int aml8726_soc_hw_rev ;
 int device_set_desc (int ,char*) ;
 int ofw_bus_is_compatible (int ,char*) ;
 int ofw_bus_status_okay (int ) ;

__attribute__((used)) static int
aml8726_usb_phy_probe(device_t dev)
{

 if (!ofw_bus_status_okay(dev))
  return (ENXIO);

 if (!ofw_bus_is_compatible(dev, "amlogic,aml8726-m6-usb-phy") &&
     !ofw_bus_is_compatible(dev, "amlogic,aml8726-m8-usb-phy"))
  return (ENXIO);

 switch (aml8726_soc_hw_rev) {
 case 129:
 case 128:
  device_set_desc(dev, "Amlogic aml8726-m8 USB PHY");
  break;
 default:
  device_set_desc(dev, "Amlogic aml8726-m6 USB PHY");
  break;
 }

 return (BUS_PROBE_DEFAULT);
}
