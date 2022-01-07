
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ACPI_ID_PROBE (int ,int ,char**,int *) ;
 int ENXIO ;
 scalar_t__ acpi_disabled (char*) ;
 int device_get_parent (int ) ;
 scalar_t__ device_get_unit (int ) ;
 int device_set_desc (int ,char*) ;

__attribute__((used)) static int
acpi_panasonic_probe(device_t dev)
{
 static char *mat_ids[] = { "MAT0019", ((void*)0) };
 int rv;

 if (acpi_disabled("panasonic") ||
     device_get_unit(dev) != 0)
  return (ENXIO);
 rv = ACPI_ID_PROBE(device_get_parent(dev), dev, mat_ids, ((void*)0));

 if (rv <= 0)
  device_set_desc(dev, "Panasonic Notebook Hotkeys");
 return (rv);
}
