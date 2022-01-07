
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_STATUS ;


 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_MTX_INTERPRETER ;
 int ACPI_MTX_NAMESPACE ;
 int AE_INFO ;
 int AcpiUtReleaseMutex (int ) ;
 int ExExitInterpreter ;
 int return_VOID ;

void
AcpiExExitInterpreter (
    void)
{
    ACPI_STATUS Status;


    ACPI_FUNCTION_TRACE (ExExitInterpreter);


    Status = AcpiUtReleaseMutex (ACPI_MTX_NAMESPACE);
    if (ACPI_FAILURE (Status))
    {
        ACPI_ERROR ((AE_INFO, "Could not release AML Namespace mutex"));
    }
    Status = AcpiUtReleaseMutex (ACPI_MTX_INTERPRETER);
    if (ACPI_FAILURE (Status))
    {
        ACPI_ERROR ((AE_INFO, "Could not release AML Interpreter mutex"));
    }

    return_VOID;
}
