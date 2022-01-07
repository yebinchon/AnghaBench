
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_STATUS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_OK ;
 int AcpiGbl_OutputFile ;
 int AcpiGbl_PrintLock ;
 int AcpiOsCreateLock (int *) ;
 int OsEnterLineEditMode () ;
 int stdout ;

ACPI_STATUS
AcpiOsInitialize (
    void)
{
    ACPI_STATUS Status;


    AcpiGbl_OutputFile = stdout;

    OsEnterLineEditMode ();

    Status = AcpiOsCreateLock (&AcpiGbl_PrintLock);
    if (ACPI_FAILURE (Status))
    {
        return (Status);
    }

    return (AE_OK);
}
