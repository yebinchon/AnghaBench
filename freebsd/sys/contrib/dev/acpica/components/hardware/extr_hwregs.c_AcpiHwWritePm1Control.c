
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_3__ {scalar_t__ Address; } ;
struct TYPE_4__ {TYPE_1__ XPm1bControlBlock; TYPE_1__ XPm1aControlBlock; } ;
typedef int ACPI_STATUS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 TYPE_2__ AcpiGbl_FADT ;
 int AcpiHwWrite (int ,TYPE_1__*) ;
 int HwWritePm1Control ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiHwWritePm1Control (
    UINT32 Pm1aControl,
    UINT32 Pm1bControl)
{
    ACPI_STATUS Status;


    ACPI_FUNCTION_TRACE (HwWritePm1Control);


    Status = AcpiHwWrite (Pm1aControl, &AcpiGbl_FADT.XPm1aControlBlock);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }

    if (AcpiGbl_FADT.XPm1bControlBlock.Address)
    {
        Status = AcpiHwWrite (Pm1bControl, &AcpiGbl_FADT.XPm1bControlBlock);
    }
    return_ACPI_STATUS (Status);
}
