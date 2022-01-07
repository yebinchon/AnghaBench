
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * Thread; scalar_t__ DeferredNode; int * MethodNode; } ;
typedef TYPE_1__ ACPI_WALK_STATE ;
typedef int ACPI_THREAD_STATE ;
typedef int ACPI_STATUS ;
typedef int ACPI_NAMESPACE_NODE ;


 int AE_CODE_CONTROL ;
 int AE_CODE_MASK ;
 int AcpiDbDecodeArguments (TYPE_1__*) ;
 int AcpiDbDecodeLocals (TYPE_1__*) ;
 int * AcpiGbl_RootNode ;
 int AcpiOsPrintf (char*) ;

void
AcpiDbDumpMethodInfo (
    ACPI_STATUS Status,
    ACPI_WALK_STATE *WalkState)
{
    ACPI_THREAD_STATE *Thread;
    ACPI_NAMESPACE_NODE *Node;


    Node = WalkState->MethodNode;



    if (Node == AcpiGbl_RootNode)
    {
        return;
    }



    if ((Status & AE_CODE_MASK) == AE_CODE_CONTROL)
    {
        return;
    }



    if (WalkState->DeferredNode)
    {
        AcpiOsPrintf ("Executing subtree for Buffer/Package/Region\n");
        return;
    }






    Thread = WalkState->Thread;
    if (!Thread)
    {
        return;
    }



    AcpiOsPrintf ("\n");
    AcpiDbDecodeLocals (WalkState);
    AcpiOsPrintf ("\n");
    AcpiDbDecodeArguments (WalkState);
    AcpiOsPrintf ("\n");
}
