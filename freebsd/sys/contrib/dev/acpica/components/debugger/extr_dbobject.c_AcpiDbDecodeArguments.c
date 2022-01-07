
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_14__ {scalar_t__ Type; TYPE_2__* Object; } ;
struct TYPE_13__ {TYPE_3__* Arguments; TYPE_5__* MethodNode; } ;
struct TYPE_12__ {int * Object; } ;
struct TYPE_10__ {int ParamCount; } ;
struct TYPE_11__ {TYPE_1__ Method; } ;
typedef scalar_t__ BOOLEAN ;
typedef TYPE_4__ ACPI_WALK_STATE ;
typedef int ACPI_OPERAND_OBJECT ;
typedef TYPE_5__ ACPI_NAMESPACE_NODE ;


 size_t ACPI_METHOD_NUM_ARGS ;
 scalar_t__ ACPI_TYPE_METHOD ;
 int AcpiDbDisplayInternalObject (int *,TYPE_4__*) ;
 TYPE_5__* AcpiGbl_RootNode ;
 int AcpiOsPrintf (char*,...) ;
 size_t AcpiUtGetNodeName (TYPE_5__*) ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;

void
AcpiDbDecodeArguments (
    ACPI_WALK_STATE *WalkState)
{
    UINT32 i;
    ACPI_OPERAND_OBJECT *ObjDesc;
    ACPI_NAMESPACE_NODE *Node;
    BOOLEAN DisplayArgs = FALSE;


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



    for (i = 0; i < ACPI_METHOD_NUM_ARGS; i++)
    {
        ObjDesc = WalkState->Arguments[i].Object;
        if (ObjDesc)
        {
            DisplayArgs = TRUE;
            break;
        }
    }



    if (DisplayArgs)
    {
        AcpiOsPrintf (
            "Initialized Arguments for Method [%4.4s]:  "
            "(%X arguments defined for method invocation)\n",
            AcpiUtGetNodeName (Node), Node->Object->Method.ParamCount);

        for (i = 0; i < ACPI_METHOD_NUM_ARGS; i++)
        {
            ObjDesc = WalkState->Arguments[i].Object;
            if (ObjDesc)
            {
                AcpiOsPrintf ("    Arg%u:   ", i);
                AcpiDbDisplayInternalObject (ObjDesc, WalkState);
            }
        }
    }
    else
    {
        AcpiOsPrintf (
            "No Arguments are initialized for method [%4.4s]\n",
            AcpiUtGetNodeName (Node));
    }
}
