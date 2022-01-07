
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_GENERIC_STATE ;


 int ACPI_FUNCTION_ENTRY () ;
 int AcpiGbl_StateCache ;
 int AcpiOsReleaseObject (int ,int *) ;

void
AcpiUtDeleteGenericState (
    ACPI_GENERIC_STATE *State)
{
    ACPI_FUNCTION_ENTRY ();




    if (State)
    {
        (void) AcpiOsReleaseObject (AcpiGbl_StateCache, State);
    }

    return;
}
