
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * StartOp; } ;
struct TYPE_9__ {TYPE_1__ ParserState; int * Thread; int * Origin; int OwnerId; int * MethodDesc; int DescriptorType; } ;
typedef TYPE_2__ ACPI_WALK_STATE ;
typedef int ACPI_THREAD_STATE ;
typedef int ACPI_PARSE_OBJECT ;
typedef int ACPI_OWNER_ID ;
typedef int ACPI_OPERAND_OBJECT ;


 TYPE_2__* ACPI_ALLOCATE_ZEROED (int) ;
 int ACPI_DESC_TYPE_WALK ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int AcpiDsMethodDataInit (TYPE_2__*) ;
 int AcpiDsPushWalkState (TYPE_2__*,int *) ;
 int DsCreateWalkState ;
 int return_PTR (TYPE_2__*) ;

ACPI_WALK_STATE *
AcpiDsCreateWalkState (
    ACPI_OWNER_ID OwnerId,
    ACPI_PARSE_OBJECT *Origin,
    ACPI_OPERAND_OBJECT *MethodDesc,
    ACPI_THREAD_STATE *Thread)
{
    ACPI_WALK_STATE *WalkState;


    ACPI_FUNCTION_TRACE (DsCreateWalkState);


    WalkState = ACPI_ALLOCATE_ZEROED (sizeof (ACPI_WALK_STATE));
    if (!WalkState)
    {
        return_PTR (((void*)0));
    }

    WalkState->DescriptorType = ACPI_DESC_TYPE_WALK;
    WalkState->MethodDesc = MethodDesc;
    WalkState->OwnerId = OwnerId;
    WalkState->Origin = Origin;
    WalkState->Thread = Thread;

    WalkState->ParserState.StartOp = Origin;




    AcpiDsMethodDataInit (WalkState);




    if (Thread)
    {
        AcpiDsPushWalkState (WalkState, Thread);
    }

    return_PTR (WalkState);
}
