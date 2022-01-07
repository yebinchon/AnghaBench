
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int DescriptorType; } ;
struct TYPE_6__ {TYPE_1__ Common; } ;
typedef TYPE_2__ ACPI_GENERIC_STATE ;


 int ACPI_DESC_TYPE_STATE ;
 int ACPI_FUNCTION_ENTRY () ;
 int AcpiGbl_StateCache ;
 TYPE_2__* AcpiOsAcquireObject (int ) ;

ACPI_GENERIC_STATE *
AcpiUtCreateGenericState (
    void)
{
    ACPI_GENERIC_STATE *State;


    ACPI_FUNCTION_ENTRY ();


    State = AcpiOsAcquireObject (AcpiGbl_StateCache);
    if (State)
    {

        State->Common.DescriptorType = ACPI_DESC_TYPE_STATE;
    }

    return (State);
}
