
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ACPI_ID_PROBE (int ,int ,int ,char**) ;
 int ENXIO ;
 scalar_t__ acpi_disabled (char*) ;
 int device_get_parent (int ) ;
 int device_get_unit (int ) ;
 int device_set_desc_copy (int ,char*) ;
 int fujitsu_ids ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static int
acpi_fujitsu_probe(device_t dev)
{
 char *name;
 char buffer[64];
 int rv;

 rv = ACPI_ID_PROBE(device_get_parent(dev), dev, fujitsu_ids, &name);
 if (acpi_disabled("fujitsu") || rv > 0 || device_get_unit(dev) > 1)
  return (ENXIO);
 sprintf(buffer, "Fujitsu Function Hotkeys %s", name);
 device_set_desc_copy(dev, buffer);

 return (rv);
}
