
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int EINVAL ;
 scalar_t__ GIC_BUS_ACPI ;
 int device_set_desc (int ,char*) ;
 scalar_t__ gic_get_bus (int ) ;
 int gic_get_hw_rev (int ) ;

__attribute__((used)) static int
arm_gicv2m_acpi_probe(device_t dev)
{

 if (gic_get_bus(dev) != GIC_BUS_ACPI)
  return (EINVAL);

 if (gic_get_hw_rev(dev) > 2)
  return (EINVAL);

 device_set_desc(dev, "ARM Generic Interrupt Controller MSI/MSIX");
 return (BUS_PROBE_DEFAULT);
}
