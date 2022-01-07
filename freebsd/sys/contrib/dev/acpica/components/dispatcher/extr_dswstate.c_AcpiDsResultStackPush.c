
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_7__ {int DescriptorType; } ;
struct TYPE_9__ {TYPE_1__ Common; } ;
struct TYPE_8__ {scalar_t__ ResultSize; int Results; } ;
typedef TYPE_2__ ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef TYPE_3__ ACPI_GENERIC_STATE ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_DESC_TYPE_STATE_RESULT ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 scalar_t__ ACPI_RESULTS_FRAME_OBJ_NUM ;
 scalar_t__ ACPI_RESULTS_OBJ_NUM_MAX ;
 int AE_INFO ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int AE_STACK_OVERFLOW ;
 TYPE_3__* AcpiUtCreateGenericState () ;
 int AcpiUtPushGenericState (int *,TYPE_3__*) ;
 int DsResultStackPush ;

__attribute__((used)) static ACPI_STATUS
AcpiDsResultStackPush (
    ACPI_WALK_STATE *WalkState)
{
    ACPI_GENERIC_STATE *State;


    ACPI_FUNCTION_NAME (DsResultStackPush);




    if (((UINT32) WalkState->ResultSize + ACPI_RESULTS_FRAME_OBJ_NUM) >
        ACPI_RESULTS_OBJ_NUM_MAX)
    {
        ACPI_ERROR ((AE_INFO, "Result stack overflow: State=%p Num=%u",
            WalkState, WalkState->ResultSize));
        return (AE_STACK_OVERFLOW);
    }

    State = AcpiUtCreateGenericState ();
    if (!State)
    {
        return (AE_NO_MEMORY);
    }

    State->Common.DescriptorType = ACPI_DESC_TYPE_STATE_RESULT;
    AcpiUtPushGenericState (&WalkState->Results, State);



    WalkState->ResultSize += ACPI_RESULTS_FRAME_OBJ_NUM;

    ACPI_DEBUG_PRINT ((ACPI_DB_EXEC, "Results=%p State=%p\n",
        State, WalkState));

    return (AE_OK);
}
