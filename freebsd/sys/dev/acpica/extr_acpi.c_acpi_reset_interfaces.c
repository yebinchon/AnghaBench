
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_interface {int num; int * data; } ;
typedef int device_t ;
typedef int ACPI_STATUS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AcpiFormatException (int ) ;
 int AcpiInstallInterface (int ) ;
 int AcpiRemoveInterface (int ) ;
 int acpi_free_interfaces (struct acpi_interface*) ;
 int acpi_install_interface ;
 scalar_t__ acpi_parse_interfaces (int ,struct acpi_interface*) ;
 int acpi_remove_interface ;
 scalar_t__ bootverbose ;
 int device_printf (int ,char*,int ,...) ;

__attribute__((used)) static void
acpi_reset_interfaces(device_t dev)
{
 struct acpi_interface list;
 ACPI_STATUS status;
 int i;

 if (acpi_parse_interfaces(acpi_install_interface, &list) > 0) {
  for (i = 0; i < list.num; i++) {
   status = AcpiInstallInterface(list.data[i]);
   if (ACPI_FAILURE(status))
    device_printf(dev,
        "failed to install _OSI(\"%s\"): %s\n",
        list.data[i], AcpiFormatException(status));
   else if (bootverbose)
    device_printf(dev, "installed _OSI(\"%s\")\n",
        list.data[i]);
  }
  acpi_free_interfaces(&list);
 }
 if (acpi_parse_interfaces(acpi_remove_interface, &list) > 0) {
  for (i = 0; i < list.num; i++) {
   status = AcpiRemoveInterface(list.data[i]);
   if (ACPI_FAILURE(status))
    device_printf(dev,
        "failed to remove _OSI(\"%s\"): %s\n",
        list.data[i], AcpiFormatException(status));
   else if (bootverbose)
    device_printf(dev, "removed _OSI(\"%s\")\n",
        list.data[i]);
  }
  acpi_free_interfaces(&list);
 }
}
