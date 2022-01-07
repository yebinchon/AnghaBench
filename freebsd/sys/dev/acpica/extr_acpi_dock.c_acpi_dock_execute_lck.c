
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int ACPI_HANDLE ;


 int acpi_SetInteger (int ,char*,int) ;
 int acpi_get_handle (int ) ;

__attribute__((used)) static void
acpi_dock_execute_lck(device_t dev, int lock)
{
 ACPI_HANDLE h;

 h = acpi_get_handle(dev);
 acpi_SetInteger(h, "_LCK", lock);
}
