
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ Scope; } ;
struct TYPE_9__ {TYPE_3__* Next; } ;
struct TYPE_11__ {TYPE_1__ Common; } ;
struct TYPE_10__ {scalar_t__ DescriptorType; TYPE_3__* Results; TYPE_3__* ScopeInfo; TYPE_3__* ControlState; TYPE_5__ ParserState; } ;
typedef TYPE_2__ ACPI_WALK_STATE ;
typedef TYPE_3__ ACPI_GENERIC_STATE ;


 scalar_t__ ACPI_DESC_TYPE_WALK ;
 int ACPI_ERROR (int ) ;
 int ACPI_FREE (TYPE_2__*) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,TYPE_2__*) ;
 int AE_INFO ;
 int AcpiPsCleanupScope (TYPE_5__*) ;
 int AcpiUtDeleteGenericState (TYPE_3__*) ;
 int DsDeleteWalkState ;
 int return_VOID ;

void
AcpiDsDeleteWalkState (
    ACPI_WALK_STATE *WalkState)
{
    ACPI_GENERIC_STATE *State;


    ACPI_FUNCTION_TRACE_PTR (DsDeleteWalkState, WalkState);


    if (!WalkState)
    {
        return_VOID;
    }

    if (WalkState->DescriptorType != ACPI_DESC_TYPE_WALK)
    {
        ACPI_ERROR ((AE_INFO, "%p is not a valid walk state",
            WalkState));
        return_VOID;
    }



    if (WalkState->ParserState.Scope)
    {
        ACPI_ERROR ((AE_INFO, "%p walk still has a scope list",
            WalkState));
        AcpiPsCleanupScope (&WalkState->ParserState);
    }



    while (WalkState->ControlState)
    {
        State = WalkState->ControlState;
        WalkState->ControlState = State->Common.Next;

        AcpiUtDeleteGenericState (State);
    }



    while (WalkState->ScopeInfo)
    {
        State = WalkState->ScopeInfo;
        WalkState->ScopeInfo = State->Common.Next;

        AcpiUtDeleteGenericState (State);
    }



    while (WalkState->Results)
    {
        State = WalkState->Results;
        WalkState->Results = State->Common.Next;

        AcpiUtDeleteGenericState (State);
    }

    ACPI_FREE (WalkState);
    return_VOID;
}
