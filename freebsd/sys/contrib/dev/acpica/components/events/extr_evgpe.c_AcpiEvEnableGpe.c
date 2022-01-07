
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_STATUS ;
typedef int ACPI_GPE_EVENT_INFO ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_GPE_ENABLE ;
 int AcpiHwLowSetGpe (int *,int ) ;
 int EvEnableGpe ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiEvEnableGpe (
    ACPI_GPE_EVENT_INFO *GpeEventInfo)
{
    ACPI_STATUS Status;


    ACPI_FUNCTION_TRACE (EvEnableGpe);




    Status = AcpiHwLowSetGpe (GpeEventInfo, ACPI_GPE_ENABLE);
    return_ACPI_STATUS (Status);
}
