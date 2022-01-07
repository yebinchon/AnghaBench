
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT8 ;
typedef scalar_t__ UINT64 ;
struct TYPE_4__ {int Address; } ;
struct TYPE_5__ {TYPE_1__ SleepStatus; TYPE_1__ SleepControl; } ;
typedef scalar_t__ ACPI_STATUS ;


 int ACPI_DB_INIT ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_FLUSH_CPU_CACHE () ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_X_SLEEP_ENABLE ;
 int ACPI_X_SLEEP_TYPE_MASK ;
 int ACPI_X_SLEEP_TYPE_POSITION ;
 int ACPI_X_WAKE_STATUS ;
 scalar_t__ AE_CTRL_TERMINATE ;
 scalar_t__ AE_NOT_EXIST ;
 scalar_t__ AE_OK ;
 TYPE_3__ AcpiGbl_FADT ;
 int AcpiGbl_SleepTypeA ;
 int AcpiGbl_SystemAwakeAndRunning ;
 scalar_t__ AcpiOsEnterSleep (int,int,int ) ;
 scalar_t__ AcpiRead (scalar_t__*,TYPE_1__*) ;
 scalar_t__ AcpiWrite (scalar_t__,TYPE_1__*) ;
 int FALSE ;
 int HwExtendedSleep ;
 int return_ACPI_STATUS (scalar_t__) ;

ACPI_STATUS
AcpiHwExtendedSleep (
    UINT8 SleepState)
{
    ACPI_STATUS Status;
    UINT8 SleepControl;
    UINT64 SleepStatus;


    ACPI_FUNCTION_TRACE (HwExtendedSleep);




    if (!AcpiGbl_FADT.SleepControl.Address ||
        !AcpiGbl_FADT.SleepStatus.Address)
    {
        return_ACPI_STATUS (AE_NOT_EXIST);
    }



    Status = AcpiWrite ((UINT64) ACPI_X_WAKE_STATUS,
        &AcpiGbl_FADT.SleepStatus);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }

    AcpiGbl_SystemAwakeAndRunning = FALSE;







    ACPI_DEBUG_PRINT ((ACPI_DB_INIT,
        "Entering sleep state [S%u]\n", SleepState));

    SleepControl = ((AcpiGbl_SleepTypeA << ACPI_X_SLEEP_TYPE_POSITION) &
        ACPI_X_SLEEP_TYPE_MASK) | ACPI_X_SLEEP_ENABLE;



    ACPI_FLUSH_CPU_CACHE ();

    Status = AcpiOsEnterSleep (SleepState, SleepControl, 0);
    if (Status == AE_CTRL_TERMINATE)
    {
        return_ACPI_STATUS (AE_OK);
    }
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }

    Status = AcpiWrite ((UINT64) SleepControl, &AcpiGbl_FADT.SleepControl);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }



    do
    {
        Status = AcpiRead (&SleepStatus, &AcpiGbl_FADT.SleepStatus);
        if (ACPI_FAILURE (Status))
        {
            return_ACPI_STATUS (Status);
        }

    } while (!(((UINT8) SleepStatus) & ACPI_X_WAKE_STATUS));

    return_ACPI_STATUS (AE_OK);
}
