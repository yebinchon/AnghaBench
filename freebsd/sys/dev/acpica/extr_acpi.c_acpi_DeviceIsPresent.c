
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int UINT32 ;
typedef int BOOLEAN ;
typedef int ACPI_STATUS ;
typedef int * ACPI_HANDLE ;


 scalar_t__ ACPI_DEVICE_PRESENT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int FALSE ;
 int TRUE ;
 int acpi_GetInteger (int *,char*,int *) ;
 scalar_t__ acpi_MatchHid (int *,char*) ;
 int * acpi_get_handle (int ) ;

BOOLEAN
acpi_DeviceIsPresent(device_t dev)
{
 ACPI_HANDLE h;
 UINT32 s;
 ACPI_STATUS status;

 h = acpi_get_handle(dev);
 if (h == ((void*)0))
  return (FALSE);






 if (acpi_MatchHid(h, "AMDI0020") || acpi_MatchHid(h, "AMDI0010"))
  return (TRUE);

 status = acpi_GetInteger(h, "_STA", &s);





 if (ACPI_FAILURE(status))
  return (TRUE);

 return (ACPI_DEVICE_PRESENT(s) ? TRUE : FALSE);
}
