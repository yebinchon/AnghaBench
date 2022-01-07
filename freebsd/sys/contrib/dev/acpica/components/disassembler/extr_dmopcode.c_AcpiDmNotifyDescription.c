
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_11__ {int Type; } ;
struct TYPE_8__ {int Integer; TYPE_4__* Arg; } ;
struct TYPE_9__ {TYPE_5__* Node; TYPE_2__ Value; TYPE_4__* Next; } ;
struct TYPE_7__ {int AmlOpcode; } ;
struct TYPE_10__ {TYPE_3__ Asl; TYPE_1__ Common; } ;
typedef TYPE_4__ ACPI_PARSE_OBJECT ;
typedef TYPE_5__ ACPI_NAMESPACE_NODE ;


 int ACPI_TYPE_ANY ;



 int AcpiOsPrintf (char*,int ) ;
 int AcpiUtGetNotifyName (int ,int ) ;

void
AcpiDmNotifyDescription (
    ACPI_PARSE_OBJECT *Op)
{
    ACPI_PARSE_OBJECT *NextOp;
    ACPI_NAMESPACE_NODE *Node;
    UINT8 NotifyValue;
    UINT8 Type = ACPI_TYPE_ANY;




    NextOp = Op->Asl.Value.Arg;
    NextOp = NextOp->Asl.Next;

    switch (NextOp->Common.AmlOpcode)
    {
    case 128:
    case 129:

        NotifyValue = (UINT8) NextOp->Common.AmlOpcode;
        break;

    case 130:

        NotifyValue = (UINT8) NextOp->Asl.Value.Integer;
        break;

    default:
        return;
    }






    Node = Op->Asl.Node;
    if (Node)
    {
        Type = Node->Type;
    }

    AcpiOsPrintf (" // %s", AcpiUtGetNotifyName (NotifyValue, Type));
}
