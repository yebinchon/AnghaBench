
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT8 ;
typedef scalar_t__ UINT32 ;
typedef int ACPI_STATUS ;


 int ACPI_FUNCTION_TRACE (int (*) (char*)) ;
 scalar_t__ ACPI_S_STATES_MAX ;
 int AE_OK ;
 int AcpiDbDoOneSleepState (scalar_t__) ;
 int AcpiOsPrintf (char*,scalar_t__) ;
 int return_ACPI_STATUS (int ) ;
 scalar_t__ strtoul (char*,int *,int ) ;

ACPI_STATUS
AcpiDbSleep (
    char *ObjectArg)
{
    UINT8 SleepState;
    UINT32 i;


    ACPI_FUNCTION_TRACE (AcpiDbSleep);




    if (!ObjectArg)
    {
        AcpiOsPrintf ("Invoking all possible sleep states, 0-%d\n",
            ACPI_S_STATES_MAX);

        for (i = 0; i <= ACPI_S_STATES_MAX; i++)
        {
            AcpiDbDoOneSleepState ((UINT8) i);
        }

        return_ACPI_STATUS (AE_OK);
    }



    SleepState = (UINT8) strtoul (ObjectArg, ((void*)0), 0);
    AcpiDbDoOneSleepState (SleepState);
    return_ACPI_STATUS (AE_OK);
}
