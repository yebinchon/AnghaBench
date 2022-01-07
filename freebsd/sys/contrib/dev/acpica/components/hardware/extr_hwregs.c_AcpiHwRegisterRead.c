
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
typedef int UINT32 ;
struct TYPE_2__ {int SmiCommand; int XPmTimerBlock; int XPm2ControlBlock; int XPm1bControlBlock; int XPm1aControlBlock; } ;
typedef int ACPI_STATUS ;


 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_PM1_CONTROL_WRITEONLY_BITS ;






 scalar_t__ ACPI_SUCCESS (int ) ;
 int AE_BAD_PARAMETER ;
 int AE_INFO ;
 TYPE_1__ AcpiGbl_FADT ;
 int AcpiGbl_XPm1aEnable ;
 int AcpiGbl_XPm1aStatus ;
 int AcpiGbl_XPm1bEnable ;
 int AcpiGbl_XPm1bStatus ;
 int AcpiHwRead (scalar_t__*,int *) ;
 int AcpiHwReadMultiple (int*,int *,int *) ;
 int AcpiHwReadPort (int ,int*,int) ;
 int HwRegisterRead ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiHwRegisterRead (
    UINT32 RegisterId,
    UINT32 *ReturnValue)
{
    UINT32 Value = 0;
    UINT64 Value64;
    ACPI_STATUS Status;


    ACPI_FUNCTION_TRACE (HwRegisterRead);


    switch (RegisterId)
    {
    case 131:

        Status = AcpiHwReadMultiple (&Value,
            &AcpiGbl_XPm1aStatus,
            &AcpiGbl_XPm1bStatus);
        break;

    case 132:

        Status = AcpiHwReadMultiple (&Value,
            &AcpiGbl_XPm1aEnable,
            &AcpiGbl_XPm1bEnable);
        break;

    case 133:

        Status = AcpiHwReadMultiple (&Value,
            &AcpiGbl_FADT.XPm1aControlBlock,
            &AcpiGbl_FADT.XPm1bControlBlock);






        Value &= ~ACPI_PM1_CONTROL_WRITEONLY_BITS;
        break;

    case 130:

        Status = AcpiHwRead (&Value64, &AcpiGbl_FADT.XPm2ControlBlock);
        if (ACPI_SUCCESS (Status))
        {
            Value = (UINT32) Value64;
        }
        break;

    case 129:

        Status = AcpiHwRead (&Value64, &AcpiGbl_FADT.XPmTimerBlock);
        if (ACPI_SUCCESS (Status))
        {
            Value = (UINT32) Value64;
        }

        break;

    case 128:

        Status = AcpiHwReadPort (AcpiGbl_FADT.SmiCommand, &Value, 8);
        break;

    default:

        ACPI_ERROR ((AE_INFO, "Unknown Register ID: 0x%X",
            RegisterId));
        Status = AE_BAD_PARAMETER;
        break;
    }

    if (ACPI_SUCCESS (Status))
    {
        *ReturnValue = (UINT32) Value;
    }

    return_ACPI_STATUS (Status);
}
