
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_10__ {scalar_t__ Type; } ;
struct TYPE_9__ {TYPE_1__* LocalVariables; TYPE_3__* MethodNode; } ;
struct TYPE_8__ {int * Object; } ;
typedef scalar_t__ BOOLEAN ;
typedef TYPE_2__ ACPI_WALK_STATE ;
typedef int ACPI_OPERAND_OBJECT ;
typedef TYPE_3__ ACPI_NAMESPACE_NODE ;


 size_t ACPI_METHOD_NUM_LOCALS ;
 scalar_t__ ACPI_TYPE_METHOD ;
 int AcpiDbDisplayInternalObject (int *,TYPE_2__*) ;
 TYPE_3__* AcpiGbl_RootNode ;
 int AcpiOsPrintf (char*,...) ;
 size_t AcpiUtGetNodeName (TYPE_3__*) ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;

void
AcpiDbDecodeLocals (
    ACPI_WALK_STATE *WalkState)
{
    UINT32 i;
    ACPI_OPERAND_OBJECT *ObjDesc;
    ACPI_NAMESPACE_NODE *Node;
    BOOLEAN DisplayLocals = FALSE;


    Node = WalkState->MethodNode;



    if (Node == AcpiGbl_RootNode)
    {
        return;
    }

    if (!Node)
    {
        AcpiOsPrintf (
            "No method node (Executing subtree for buffer or opregion)\n");
        return;
    }

    if (Node->Type != ACPI_TYPE_METHOD)
    {
        AcpiOsPrintf ("Executing subtree for Buffer/Package/Region\n");
        return;
    }



    for (i = 0; i < ACPI_METHOD_NUM_LOCALS; i++)
    {
        ObjDesc = WalkState->LocalVariables[i].Object;
        if (ObjDesc)
        {
            DisplayLocals = TRUE;
            break;
        }
    }



    if (DisplayLocals)
    {
        AcpiOsPrintf ("\nInitialized Local Variables for Method [%4.4s]:\n",
            AcpiUtGetNodeName (Node));

        for (i = 0; i < ACPI_METHOD_NUM_LOCALS; i++)
        {
            ObjDesc = WalkState->LocalVariables[i].Object;
            if (ObjDesc)
            {
                AcpiOsPrintf ("    Local%X: ", i);
                AcpiDbDisplayInternalObject (ObjDesc, WalkState);
            }
        }
    }
    else
    {
        AcpiOsPrintf (
            "No Local Variables are initialized for Method [%4.4s]\n",
            AcpiUtGetNodeName (Node));
    }
}
