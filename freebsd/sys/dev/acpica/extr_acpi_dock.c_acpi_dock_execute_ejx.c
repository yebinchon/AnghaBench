
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ejx ;
typedef int device_t ;
typedef int ACPI_STATUS ;
typedef int ACPI_HANDLE ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int acpi_SetInteger (int ,char*,int) ;
 int acpi_get_handle (int ) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int
acpi_dock_execute_ejx(device_t dev, int eject, int state)
{
 ACPI_HANDLE h;
 ACPI_STATUS status;
 char ejx[5];

 h = acpi_get_handle(dev);
 snprintf(ejx, sizeof(ejx), "_EJ%d", state);
 status = acpi_SetInteger(h, ejx, eject);
 if (ACPI_SUCCESS(status))
  return (0);

 return (-1);
}
