
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_2__ {int ocd_data; } ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,char*) ;
 int gicv2m_compat_data ;
 TYPE_1__* ofw_bus_search_compatible (int ,int ) ;
 int ofw_bus_status_okay (int ) ;

__attribute__((used)) static int
arm_gicv2m_fdt_probe(device_t dev)
{

 if (!ofw_bus_status_okay(dev))
  return (ENXIO);

 if (!ofw_bus_search_compatible(dev, gicv2m_compat_data)->ocd_data)
  return (ENXIO);

 device_set_desc(dev, "ARM Generic Interrupt Controller MSI/MSIX");
 return (BUS_PROBE_DEFAULT);
}
