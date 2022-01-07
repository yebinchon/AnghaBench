
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * device_t ;
typedef int UINT32 ;
typedef int ACPI_STATUS ;
typedef int ACPI_HANDLE ;


 int ACPI_VPRINT (int *,int ,char*,int ) ;
 int AE_OK ;
 int Giant ;
 int acpi_SetInteger (int ,char*,int ) ;
 int acpi_device_get_parent_softc (int *) ;
 int acpi_dock_is_ejd_device (int ,int ) ;
 int * acpi_get_device (int ) ;
 int acpi_get_handle (int *) ;
 int acpi_name (int ) ;
 int device_detach (int *) ;
 scalar_t__ device_is_attached (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static ACPI_STATUS
acpi_dock_eject_child(ACPI_HANDLE handle, UINT32 level, void *context,
    void **status)
{
 device_t dock_dev, dev;
 ACPI_HANDLE dock_handle;

 dock_dev = *(device_t *)context;
 dock_handle = acpi_get_handle(dock_dev);

 if (!acpi_dock_is_ejd_device(dock_handle, handle))
  goto out;

 ACPI_VPRINT(dock_dev, acpi_device_get_parent_softc(dock_dev),
     "ejecting device for %s\n", acpi_name(handle));

 dev = acpi_get_device(handle);
 if (dev != ((void*)0) && device_is_attached(dev)) {
  mtx_lock(&Giant);
  device_detach(dev);
  mtx_unlock(&Giant);
 }

 acpi_SetInteger(handle, "_EJ0", 0);
out:
 return (AE_OK);
}
