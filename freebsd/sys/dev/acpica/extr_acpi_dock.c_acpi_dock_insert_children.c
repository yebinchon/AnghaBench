
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int ACPI_STATUS ;
typedef int ACPI_HANDLE ;


 int ACPI_ROOT_OBJECT ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int ACPI_TYPE_DEVICE ;
 int AcpiGetHandle (int ,char*,int *) ;
 int AcpiWalkNamespace (int ,int ,int,int ,int *,int ,int *) ;
 int acpi_dock_insert_child ;

__attribute__((used)) static void
acpi_dock_insert_children(device_t dev)
{
 ACPI_STATUS status;
 ACPI_HANDLE sb_handle;

 status = AcpiGetHandle(ACPI_ROOT_OBJECT, "\\_SB_", &sb_handle);
 if (ACPI_SUCCESS(status)) {
  AcpiWalkNamespace(ACPI_TYPE_DEVICE, sb_handle,
      100, acpi_dock_insert_child, ((void*)0), dev, ((void*)0));
 }
}
