
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT8 ;
typedef int ACPI_STATUS ;


 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 size_t ACPI_S_STATES_MAX ;
 int AE_INFO ;
 int AcpiEnterSleepState (size_t) ;
 int AcpiEnterSleepStatePrep (size_t) ;
 int AcpiFormatException (int ) ;
 int * AcpiGbl_SleepStateNames ;
 int AcpiGetSleepTypeData (size_t,size_t*,size_t*) ;
 int AcpiLeaveSleepState (size_t) ;
 int AcpiLeaveSleepStatePrep (size_t) ;
 int AcpiOsPrintf (char*,size_t,...) ;

__attribute__((used)) static void
AcpiDbDoOneSleepState (
    UINT8 SleepState)
{
    ACPI_STATUS Status;
    UINT8 SleepTypeA;
    UINT8 SleepTypeB;




    if (SleepState > ACPI_S_STATES_MAX)
    {
        AcpiOsPrintf ("Sleep state %d out of range (%d max)\n",
            SleepState, ACPI_S_STATES_MAX);
        return;
    }

    AcpiOsPrintf ("\n---- Invoking sleep state S%d (%s):\n",
        SleepState, AcpiGbl_SleepStateNames[SleepState]);



    Status = AcpiGetSleepTypeData (SleepState, &SleepTypeA, &SleepTypeB);
    if (ACPI_FAILURE (Status))
    {
        AcpiOsPrintf ("Could not evaluate [%s] method, %s\n",
            AcpiGbl_SleepStateNames[SleepState],
            AcpiFormatException (Status));
        return;
    }

    AcpiOsPrintf (
        "Register values for sleep state S%d: Sleep-A: %.2X, Sleep-B: %.2X\n",
        SleepState, SleepTypeA, SleepTypeB);



    AcpiOsPrintf ("**** Sleep: Prepare to sleep (S%d) ****\n",
        SleepState);
    Status = AcpiEnterSleepStatePrep (SleepState);
    if (ACPI_FAILURE (Status))
    {
        goto ErrorExit;
    }

    AcpiOsPrintf ("**** Sleep: Going to sleep (S%d) ****\n",
        SleepState);
    Status = AcpiEnterSleepState (SleepState);
    if (ACPI_FAILURE (Status))
    {
        goto ErrorExit;
    }

    AcpiOsPrintf ("**** Wake: Prepare to return from sleep (S%d) ****\n",
        SleepState);
    Status = AcpiLeaveSleepStatePrep (SleepState);
    if (ACPI_FAILURE (Status))
    {
        goto ErrorExit;
    }

    AcpiOsPrintf ("**** Wake: Return from sleep (S%d) ****\n",
        SleepState);
    Status = AcpiLeaveSleepState (SleepState);
    if (ACPI_FAILURE (Status))
    {
        goto ErrorExit;
    }

    return;


ErrorExit:
    ACPI_EXCEPTION ((AE_INFO, Status, "During invocation of sleep state S%d",
        SleepState));
}
