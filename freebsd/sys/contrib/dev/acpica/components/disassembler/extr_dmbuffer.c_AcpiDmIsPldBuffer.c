
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
struct TYPE_8__ {int Ascii; } ;
struct TYPE_11__ {TYPE_2__ Name; } ;
struct TYPE_7__ {scalar_t__ Integer; TYPE_4__* Arg; } ;
struct TYPE_9__ {scalar_t__ AmlOpcode; int DisasmFlags; TYPE_5__* Node; TYPE_4__* Parent; TYPE_1__ Value; TYPE_4__* Next; } ;
struct TYPE_10__ {TYPE_3__ Common; } ;
typedef int BOOLEAN ;
typedef TYPE_4__ ACPI_PARSE_OBJECT ;
typedef TYPE_5__ ACPI_NAMESPACE_NODE ;


 scalar_t__ ACPI_COMPARE_NAMESEG (int ,int ) ;
 int ACPI_PARSEOP_IGNORE ;
 scalar_t__ ACPI_PLD_REV1_BUFFER_SIZE ;
 scalar_t__ ACPI_PLD_REV2_BUFFER_SIZE ;
 scalar_t__ AML_BYTE_OP ;
 scalar_t__ AML_NAME_OP ;
 scalar_t__ AML_PACKAGE_OP ;
 int FALSE ;
 int METHOD_NAME__PLD ;
 int TRUE ;

BOOLEAN
AcpiDmIsPldBuffer (
    ACPI_PARSE_OBJECT *Op)
{
    ACPI_NAMESPACE_NODE *Node;
    ACPI_PARSE_OBJECT *SizeOp;
    ACPI_PARSE_OBJECT *ByteListOp;
    ACPI_PARSE_OBJECT *ParentOp;
    UINT64 BufferSize;
    UINT64 InitializerSize;







    SizeOp = Op->Common.Value.Arg;
    if (SizeOp->Common.AmlOpcode != AML_BYTE_OP)
    {
        return (FALSE);
    }



    BufferSize = SizeOp->Common.Value.Integer;
    if ((BufferSize != ACPI_PLD_REV1_BUFFER_SIZE) &&
        (BufferSize != ACPI_PLD_REV2_BUFFER_SIZE))
    {
        return (FALSE);
    }
    ByteListOp = SizeOp->Common.Next;
    if (!ByteListOp)
    {
        return (FALSE);
    }

    InitializerSize = ByteListOp->Common.Value.Integer;
    if ((InitializerSize != ACPI_PLD_REV1_BUFFER_SIZE) &&
        (InitializerSize != ACPI_PLD_REV2_BUFFER_SIZE))
    {
        return (FALSE);
    }



    if (BufferSize != InitializerSize)
    {
        return (FALSE);
    }



    ParentOp = Op->Common.Parent;
    if (!ParentOp)
    {
        return (FALSE);
    }



    if (ParentOp->Common.AmlOpcode == AML_NAME_OP)
    {
        Node = ParentOp->Common.Node;

        if (ACPI_COMPARE_NAMESEG (Node->Name.Ascii, METHOD_NAME__PLD))
        {


            SizeOp->Common.DisasmFlags |= ACPI_PARSEOP_IGNORE;
            return (TRUE);
        }

        return (FALSE);
    }
    if (ParentOp->Common.AmlOpcode == AML_PACKAGE_OP)
    {
        ParentOp = ParentOp->Common.Parent;
        if (!ParentOp)
        {
            return (FALSE);
        }

        if (ParentOp->Common.AmlOpcode == AML_NAME_OP)
        {
            Node = ParentOp->Common.Node;

            if (ACPI_COMPARE_NAMESEG (Node->Name.Ascii, METHOD_NAME__PLD))
            {


                SizeOp->Common.DisasmFlags |= ACPI_PARSEOP_IGNORE;
                return (TRUE);
            }
        }
    }

    return (FALSE);
}
