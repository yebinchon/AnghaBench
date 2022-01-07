
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* Next; int * MethodNode; } ;
typedef TYPE_1__ ACPI_WALK_STATE ;
typedef int ACPI_NAMESPACE_NODE ;


 TYPE_1__* AcpiDsGetCurrentWalkState (int ) ;
 int AcpiGbl_CurrentWalkList ;
 int AcpiOsPrintf (char*,...) ;
 int AcpiUtGetNodeName (int *) ;

void
AcpiDbDisplayCallingTree (
    void)
{
    ACPI_WALK_STATE *WalkState;
    ACPI_NAMESPACE_NODE *Node;


    WalkState = AcpiDsGetCurrentWalkState (AcpiGbl_CurrentWalkList);
    if (!WalkState)
    {
        AcpiOsPrintf ("There is no method currently executing\n");
        return;
    }

    AcpiOsPrintf ("Current Control Method Call Tree\n");

    while (WalkState)
    {
        Node = WalkState->MethodNode;
        AcpiOsPrintf ("    [%4.4s]\n", AcpiUtGetNodeName (Node));

        WalkState = WalkState->Next;
    }
}
