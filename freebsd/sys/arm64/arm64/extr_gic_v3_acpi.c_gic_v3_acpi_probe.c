
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;



 int BUS_PROBE_NOWILDCARD ;
 int ENXIO ;
 int GIC_V3_DEVSTR ;
 int acpi_get_private (int ) ;
 int device_set_desc (int ,int ) ;

__attribute__((used)) static int
gic_v3_acpi_probe(device_t dev)
{

 switch((uintptr_t)acpi_get_private(dev)) {
 case 128:
  break;
 default:
  return (ENXIO);
 }

 device_set_desc(dev, GIC_V3_DEVSTR);
 return (BUS_PROBE_NOWILDCARD);
}
