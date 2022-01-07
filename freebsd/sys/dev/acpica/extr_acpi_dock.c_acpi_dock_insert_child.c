
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * device_t ;
typedef int UINT32 ;
typedef int ACPI_STATUS ;
typedef int ACPI_INIT_WALK_INFO ;
typedef int ACPI_HANDLE ;


 int ACPI_TYPE_ANY ;
 int ACPI_VPRINT (int *,int ,char*,int ) ;
 int AE_OK ;
 int AcpiNsInitOneDevice ;
 int AcpiNsWalkNamespace (int ,int ,int,int ,int ,int *,int *,int *) ;
 int AcpiOsExecute (int ,int ,int *) ;
 int OSL_NOTIFY_HANDLER ;
 int TRUE ;
 int acpi_device_get_parent_softc (int *) ;
 int acpi_dock_attach_later ;
 int acpi_dock_is_ejd_device (int ,int ) ;
 int * acpi_get_device (int ) ;
 int acpi_get_handle (int *) ;
 int acpi_name (int ) ;
 int device_printf (int *,char*,int ) ;

__attribute__((used)) static ACPI_STATUS
acpi_dock_insert_child(ACPI_HANDLE handle, UINT32 level, void *context,
    void **status)
{
 device_t dock_dev, dev;
 ACPI_HANDLE dock_handle;

 dock_dev = (device_t)context;
 dock_handle = acpi_get_handle(dock_dev);

 if (!acpi_dock_is_ejd_device(dock_handle, handle))
  goto out;

 ACPI_VPRINT(dock_dev, acpi_device_get_parent_softc(dock_dev),
      "inserting device for %s\n", acpi_name(handle));
 dev = acpi_get_device(handle);
 if (dev == ((void*)0)) {
  device_printf(dock_dev, "error: %s has no associated device\n",
      acpi_name(handle));
  goto out;
 }

 AcpiOsExecute(OSL_NOTIFY_HANDLER, acpi_dock_attach_later, dev);

out:
 return (AE_OK);
}
