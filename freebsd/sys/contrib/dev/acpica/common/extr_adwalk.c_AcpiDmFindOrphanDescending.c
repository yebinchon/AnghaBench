
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_13__ {int ObjectType; int Class; } ;
struct TYPE_10__ {int String; TYPE_3__* Arg; } ;
struct TYPE_11__ {int AmlOpcode; int AmlOpName; TYPE_1__ Value; int Node; TYPE_3__* Parent; TYPE_3__* Next; } ;
struct TYPE_12__ {TYPE_2__ Common; } ;
typedef int ACPI_STATUS ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;
typedef TYPE_4__ ACPI_OPCODE_INFO ;


 int ACPI_FREE (int ) ;
 int ACPI_TYPE_INTEGER ;
 int ACPI_TYPE_LOCAL_ALIAS ;
 int ACPI_TYPE_METHOD ;
 int ACPI_UINT32_MAX ;
 int AE_OK ;

 int AML_CLASS_CREATE ;
 int AML_CLASS_EXECUTE ;
 int AML_IF_OP ;
 int AML_INT_METHODCALL_OP ;

 int AML_RETURN_OP ;

 int AML_WHILE_OP ;
 int AcpiDmAddOpToExternalList (TYPE_3__*,int ,int ,int,int ) ;
 int AcpiDmCountChildren (TYPE_3__*) ;
 int AcpiDmInspectPossibleArgs (int,int,TYPE_3__*) ;
 int AcpiNsExternalizeName (int ,int ,int *,int *) ;
 int AcpiOsPrintf (char*,int,int ) ;
 TYPE_4__* AcpiPsGetOpcodeInfo (int) ;
 int Path ;

__attribute__((used)) static ACPI_STATUS
AcpiDmFindOrphanDescending (
    ACPI_PARSE_OBJECT *Op,
    UINT32 Level,
    void *Context)
{
    const ACPI_OPCODE_INFO *OpInfo;
    ACPI_PARSE_OBJECT *ChildOp;
    ACPI_PARSE_OBJECT *NextOp;
    ACPI_PARSE_OBJECT *ParentOp;
    UINT32 ArgCount;


    if (!Op)
    {
        return (AE_OK);
    }





    switch (Op->Common.AmlOpcode)
    {
    case 128:

        ChildOp = Op->Common.Value.Arg;
        if ((ChildOp->Common.AmlOpcode == 129) &&
            !ChildOp->Common.Node)
        {
            NextOp = Op->Common.Next;
            if (!NextOp)
            {


                AcpiDmAddOpToExternalList (ChildOp,
                    ChildOp->Common.Value.String, ACPI_TYPE_INTEGER, 0, 0);
                return (AE_OK);
            }

            ArgCount = AcpiDmInspectPossibleArgs (2, 1, NextOp);
            if (ArgCount <= 1)
            {


                AcpiDmAddOpToExternalList (ChildOp,
                    ChildOp->Common.Value.String, ACPI_TYPE_INTEGER, ArgCount, 0);
                return (AE_OK);
            }

            AcpiDmAddOpToExternalList (ChildOp,
                ChildOp->Common.Value.String, ACPI_TYPE_METHOD, ArgCount, 0);
        }
        break;

    case 129:



        ParentOp = Op->Common.Parent;
        OpInfo = AcpiPsGetOpcodeInfo (ParentOp->Common.AmlOpcode);

        if ((OpInfo->Class != AML_CLASS_EXECUTE) &&
            (OpInfo->Class != AML_CLASS_CREATE) &&
            (OpInfo->ObjectType != ACPI_TYPE_LOCAL_ALIAS) &&
            (ParentOp->Common.AmlOpcode != AML_INT_METHODCALL_OP) &&
            !Op->Common.Node)
        {
            ArgCount = AcpiDmInspectPossibleArgs (0, 0, Op);





            if (ArgCount == 0)
            {
                if (((ParentOp->Common.AmlOpcode == AML_IF_OP) ||
                     (ParentOp->Common.AmlOpcode == AML_WHILE_OP) ||
                     (ParentOp->Common.AmlOpcode == AML_RETURN_OP)) &&


                     (ParentOp->Common.Value.Arg == Op))
                {
                    AcpiDmAddOpToExternalList (Op,
                        Op->Common.Value.String, ACPI_TYPE_INTEGER, 0, 0);
                    break;
                }
            }






            AcpiDmAddOpToExternalList (Op,
                Op->Common.Value.String, ACPI_TYPE_METHOD, ArgCount, 0);
        }
        break;

    default:

        break;
    }

    return (AE_OK);
}
