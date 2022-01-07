
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* Next; } ;
struct TYPE_6__ {TYPE_1__ Common; } ;
typedef TYPE_2__ ACPI_GENERIC_STATE ;


 int ACPI_FUNCTION_ENTRY () ;

void
AcpiUtPushGenericState (
    ACPI_GENERIC_STATE **ListHead,
    ACPI_GENERIC_STATE *State)
{
    ACPI_FUNCTION_ENTRY ();




    State->Common.Next = *ListHead;
    *ListHead = State;
    return;
}
