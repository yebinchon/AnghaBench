
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int ACPI_HANDLE ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AcpiGetHandle (int ,char*,int *) ;
 int ENXIO ;
 scalar_t__ acpi_disabled (char*) ;
 int acpi_get_handle (int ) ;
 int device_set_desc (int ,char*) ;

__attribute__((used)) static int
acpi_dock_probe(device_t dev)
{
 ACPI_HANDLE h, tmp;

 h = acpi_get_handle(dev);
 if (acpi_disabled("dock") ||
     ACPI_FAILURE(AcpiGetHandle(h, "_DCK", &tmp)))
  return (ENXIO);

 device_set_desc(dev, "ACPI Docking Station");





 return (0);
}
