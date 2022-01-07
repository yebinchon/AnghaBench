
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int RuntimeCount; } ;
typedef scalar_t__ BOOLEAN ;
typedef int ACPI_STATUS ;
typedef TYPE_1__ ACPI_GPE_EVENT_INFO ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int ACPI_UINT8_MAX ;
 int AE_LIMIT ;
 int AE_OK ;
 int AcpiEvEnableGpe (TYPE_1__*) ;
 int AcpiEvUpdateGpeEnableMask (TYPE_1__*) ;
 int AcpiHwClearGpe (TYPE_1__*) ;
 int EvAddGpeReference ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiEvAddGpeReference (
    ACPI_GPE_EVENT_INFO *GpeEventInfo,
    BOOLEAN ClearOnEnable)
{
    ACPI_STATUS Status = AE_OK;


    ACPI_FUNCTION_TRACE (EvAddGpeReference);


    if (GpeEventInfo->RuntimeCount == ACPI_UINT8_MAX)
    {
        return_ACPI_STATUS (AE_LIMIT);
    }

    GpeEventInfo->RuntimeCount++;
    if (GpeEventInfo->RuntimeCount == 1)
    {


        if (ClearOnEnable)
        {
            (void) AcpiHwClearGpe (GpeEventInfo);
        }

        Status = AcpiEvUpdateGpeEnableMask (GpeEventInfo);
        if (ACPI_SUCCESS (Status))
        {
            Status = AcpiEvEnableGpe (GpeEventInfo);
        }

        if (ACPI_FAILURE (Status))
        {
            GpeEventInfo->RuntimeCount--;
        }
    }

    return_ACPI_STATUS (Status);
}
