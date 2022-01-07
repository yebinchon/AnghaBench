
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int SYS_RES_DRQ ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 scalar_t__ acpi_match_resource_hint (int ,int ,long) ;
 scalar_t__ resource_find_dev (int*,char const*,int*,char*,int *) ;
 scalar_t__ resource_long_value (char const*,int,char*,long*) ;
 int resource_string_value (char const*,int,char*,char const**) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static void
acpi_hint_device_unit(device_t acdev, device_t child, const char *name,
    int *unitp)
{
    const char *s;
    long value;
    int line, matches, unit;





    line = 0;
    while (resource_find_dev(&line, name, &unit, "at", ((void*)0)) == 0) {

 resource_string_value(name, unit, "at", &s);
 if (!(strcmp(s, "acpi0") == 0 || strcmp(s, "acpi") == 0 ||
     strcmp(s, "isa0") == 0 || strcmp(s, "isa") == 0))
     continue;
 matches = 0;
 if (resource_long_value(name, unit, "port", &value) == 0) {
     if (strcmp(name, "fdc") == 0)
  value += 2;
     if (acpi_match_resource_hint(child, SYS_RES_IOPORT, value))
  matches++;
     else
  continue;
 }
 if (resource_long_value(name, unit, "maddr", &value) == 0) {
     if (acpi_match_resource_hint(child, SYS_RES_MEMORY, value))
  matches++;
     else
  continue;
 }
 if (matches > 0)
     goto matched;
 if (resource_long_value(name, unit, "irq", &value) == 0) {
     if (acpi_match_resource_hint(child, SYS_RES_IRQ, value))
  matches++;
     else
  continue;
 }
 if (resource_long_value(name, unit, "drq", &value) == 0) {
     if (acpi_match_resource_hint(child, SYS_RES_DRQ, value))
  matches++;
     else
  continue;
 }

    matched:
 if (matches > 0) {

     *unitp = unit;
     break;
 }
    }
}
