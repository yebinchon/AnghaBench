
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_6__ {TYPE_3__* Next; int ** ObjDesc; } ;
struct TYPE_8__ {TYPE_1__ Results; } ;
struct TYPE_7__ {int ResultCount; TYPE_3__* Results; int * MethodNode; } ;
typedef TYPE_2__ ACPI_WALK_STATE ;
typedef int ACPI_OPERAND_OBJECT ;
typedef int ACPI_NAMESPACE_NODE ;
typedef TYPE_3__ ACPI_GENERIC_STATE ;


 int ACPI_RESULTS_FRAME_OBJ_NUM ;
 int AcpiDbDisplayInternalObject (int *,TYPE_2__*) ;
 TYPE_2__* AcpiDsGetCurrentWalkState (int ) ;
 int AcpiGbl_CurrentWalkList ;
 int AcpiOsPrintf (char*,...) ;
 int AcpiUtGetNodeName (int *) ;

void
AcpiDbDisplayResults (
    void)
{
    UINT32 i;
    ACPI_WALK_STATE *WalkState;
    ACPI_OPERAND_OBJECT *ObjDesc;
    UINT32 ResultCount = 0;
    ACPI_NAMESPACE_NODE *Node;
    ACPI_GENERIC_STATE *Frame;
    UINT32 Index;


    WalkState = AcpiDsGetCurrentWalkState (AcpiGbl_CurrentWalkList);
    if (!WalkState)
    {
        AcpiOsPrintf ("There is no method currently executing\n");
        return;
    }

    Node = WalkState->MethodNode;

    if (WalkState->Results)
    {
        ResultCount = WalkState->ResultCount;
    }

    AcpiOsPrintf ("Method [%4.4s] has %X stacked result objects\n",
        AcpiUtGetNodeName (Node), ResultCount);



    Frame = WalkState->Results;
    Index = (ResultCount - 1) % ACPI_RESULTS_FRAME_OBJ_NUM;

    for (i = 0; i < ResultCount; i++)
    {
        ObjDesc = Frame->Results.ObjDesc[Index];
        AcpiOsPrintf ("Result%u: ", i);
        AcpiDbDisplayInternalObject (ObjDesc, WalkState);

        if (Index == 0)
        {
            Frame = Frame->Results.Next;
            Index = ACPI_RESULTS_FRAME_OBJ_NUM;
        }

        Index--;
    }
}
