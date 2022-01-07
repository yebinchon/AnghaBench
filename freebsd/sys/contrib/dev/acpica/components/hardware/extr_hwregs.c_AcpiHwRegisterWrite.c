
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT64 ;
typedef int UINT32 ;
struct TYPE_2__ {int SmiCommand; int XPmTimerBlock; int XPm2ControlBlock; int XPm1bControlBlock; int XPm1aControlBlock; } ;
typedef int ACPI_STATUS ;


 int ACPI_ERROR (int ) ;
 int ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_INSERT_BITS (int,int ,int) ;
 int ACPI_PM1_CONTROL_PRESERVED_BITS ;
 int ACPI_PM1_STATUS_PRESERVED_BITS ;
 int ACPI_PM2_CONTROL_PRESERVED_BITS ;






 int AE_BAD_PARAMETER ;
 int AE_INFO ;
 TYPE_1__ AcpiGbl_FADT ;
 int AcpiGbl_XPm1aEnable ;
 int AcpiGbl_XPm1aStatus ;
 int AcpiGbl_XPm1bEnable ;
 int AcpiGbl_XPm1bStatus ;
 int AcpiHwRead (int *,int *) ;
 int AcpiHwReadMultiple (int*,int *,int *) ;
 int AcpiHwWrite (int,int *) ;
 int AcpiHwWriteMultiple (int,int *,int *) ;
 int AcpiHwWritePort (int ,int,int) ;
 int HwRegisterWrite ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiHwRegisterWrite (
    UINT32 RegisterId,
    UINT32 Value)
{
    ACPI_STATUS Status;
    UINT32 ReadValue;
    UINT64 ReadValue64;


    ACPI_FUNCTION_TRACE (HwRegisterWrite);


    switch (RegisterId)
    {
    case 131:
        Value &= ~ACPI_PM1_STATUS_PRESERVED_BITS;

        Status = AcpiHwWriteMultiple (Value,
            &AcpiGbl_XPm1aStatus,
            &AcpiGbl_XPm1bStatus);
        break;

    case 132:

        Status = AcpiHwWriteMultiple (Value,
            &AcpiGbl_XPm1aEnable,
            &AcpiGbl_XPm1bEnable);
        break;

    case 133:




        Status = AcpiHwReadMultiple (&ReadValue,
            &AcpiGbl_FADT.XPm1aControlBlock,
            &AcpiGbl_FADT.XPm1bControlBlock);
        if (ACPI_FAILURE (Status))
        {
            goto Exit;
        }



        ACPI_INSERT_BITS (Value, ACPI_PM1_CONTROL_PRESERVED_BITS, ReadValue);



        Status = AcpiHwWriteMultiple (Value,
            &AcpiGbl_FADT.XPm1aControlBlock,
            &AcpiGbl_FADT.XPm1bControlBlock);
        break;

    case 130:




        Status = AcpiHwRead (&ReadValue64, &AcpiGbl_FADT.XPm2ControlBlock);
        if (ACPI_FAILURE (Status))
        {
            goto Exit;
        }
        ReadValue = (UINT32) ReadValue64;



        ACPI_INSERT_BITS (Value, ACPI_PM2_CONTROL_PRESERVED_BITS, ReadValue);

        Status = AcpiHwWrite (Value, &AcpiGbl_FADT.XPm2ControlBlock);
        break;

    case 129:

        Status = AcpiHwWrite (Value, &AcpiGbl_FADT.XPmTimerBlock);
        break;

    case 128:



        Status = AcpiHwWritePort (AcpiGbl_FADT.SmiCommand, Value, 8);
        break;

    default:

        ACPI_ERROR ((AE_INFO, "Unknown Register ID: 0x%X",
            RegisterId));
        Status = AE_BAD_PARAMETER;
        break;
    }

Exit:
    return_ACPI_STATUS (Status);
}
