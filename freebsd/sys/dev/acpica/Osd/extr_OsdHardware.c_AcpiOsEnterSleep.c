
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int UINT32 ;
typedef int ACPI_STATUS ;


 int AE_CTRL_TERMINATE ;
 int AE_OK ;
 scalar_t__ acpi_susp_bounce ;

ACPI_STATUS
AcpiOsEnterSleep(UINT8 SleepState, UINT32 RegaValue, UINT32 RegbValue)
{


 if (acpi_susp_bounce)
  return (AE_CTRL_TERMINATE);

 return (AE_OK);
}
