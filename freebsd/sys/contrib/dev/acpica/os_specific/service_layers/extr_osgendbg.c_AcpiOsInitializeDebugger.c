
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_STATUS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_WAIT_FOREVER ;
 int AcpiGbl_DbCommandComplete ;
 int AcpiGbl_DbCommandReady ;
 int AcpiGbl_DbCommandSignalsInitialized ;
 int AcpiOsAcquireMutex (int ,int ) ;
 int AcpiOsCreateMutex (int *) ;
 int AcpiOsDeleteMutex (int ) ;
 int TRUE ;

ACPI_STATUS
AcpiOsInitializeDebugger (
    void)
{
    ACPI_STATUS Status;




    Status = AcpiOsCreateMutex (&AcpiGbl_DbCommandReady);
    if (ACPI_FAILURE (Status))
    {
        return (Status);
    }
    Status = AcpiOsCreateMutex (&AcpiGbl_DbCommandComplete);
    if (ACPI_FAILURE (Status))
    {
        goto ErrorReady;
    }



    Status = AcpiOsAcquireMutex (AcpiGbl_DbCommandComplete,
        ACPI_WAIT_FOREVER);
    if (ACPI_FAILURE (Status))
    {
        goto ErrorComplete;
    }
    Status = AcpiOsAcquireMutex (AcpiGbl_DbCommandReady,
        ACPI_WAIT_FOREVER);
    if (ACPI_FAILURE (Status))
    {
        goto ErrorComplete;
    }

    AcpiGbl_DbCommandSignalsInitialized = TRUE;
    return (Status);

ErrorComplete:
    AcpiOsDeleteMutex (AcpiGbl_DbCommandComplete);
ErrorReady:
    AcpiOsDeleteMutex (AcpiGbl_DbCommandReady);
    return (Status);
}
