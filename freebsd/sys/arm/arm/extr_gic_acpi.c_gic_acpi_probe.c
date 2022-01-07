
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;





 int BUS_PROBE_NOWILDCARD ;
 int ENXIO ;
 int acpi_get_private (int ) ;
 int device_set_desc (int ,char*) ;

__attribute__((used)) static int
gic_acpi_probe(device_t dev)
{

 switch((uintptr_t)acpi_get_private(dev)) {
 case 130:
 case 129:
 case 128:
  break;
 default:
  return (ENXIO);
 }

 device_set_desc(dev, "ARM Generic Interrupt Controller");
 return (BUS_PROBE_NOWILDCARD);
}
