
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ device_t ;


 int ACPI_ID_PROBE (int ,scalar_t__,char**,int *) ;
 int ENXIO ;
 scalar_t__ acpi_disabled (char*) ;
 scalar_t__ devclass_get_device (int ,int ) ;
 int device_get_parent (scalar_t__) ;
 int device_set_desc (scalar_t__,char*) ;
 int isab_devclass ;

__attribute__((used)) static int
acpi_isab_probe(device_t dev)
{
 static char *isa_ids[] = { "PNP0A05", "PNP0A06", ((void*)0) };
 int rv;

 if (acpi_disabled("isab") ||
     devclass_get_device(isab_devclass, 0) != dev)
  return (ENXIO);
 rv = ACPI_ID_PROBE(device_get_parent(dev), dev, isa_ids, ((void*)0));
 if (rv <= 0)
  device_set_desc(dev, "ACPI Generic ISA bridge");
 return (rv);
}
