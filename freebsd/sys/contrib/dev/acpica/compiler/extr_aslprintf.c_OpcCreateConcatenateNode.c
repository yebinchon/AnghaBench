
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int AcpiBtype; TYPE_2__* Parent; TYPE_2__* Child; TYPE_2__* Next; int LogicalLineNumber; int AmlOpcode; } ;
struct TYPE_6__ {TYPE_1__ Asl; } ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;


 int AML_CONCATENATE_OP ;
 int PARSEOP_CONCATENATE ;
 int PARSEOP_ZERO ;
 void* TrAllocateOp (int ) ;

__attribute__((used)) static void
OpcCreateConcatenateNode (
    ACPI_PARSE_OBJECT *Op,
    ACPI_PARSE_OBJECT *Node)
{
    ACPI_PARSE_OBJECT *NewConcatOp;


    if (!Op->Asl.Child)
    {
        Op->Asl.Child = Node;
        Node->Asl.Parent = Op;
        return;
    }

    NewConcatOp = TrAllocateOp (PARSEOP_CONCATENATE);
    NewConcatOp->Asl.AmlOpcode = AML_CONCATENATE_OP;
    NewConcatOp->Asl.AcpiBtype = 0x7;
    NewConcatOp->Asl.LogicalLineNumber = Op->Asl.LogicalLineNumber;



    NewConcatOp->Asl.Child = Op->Asl.Child;
    Op->Asl.Child->Asl.Parent = NewConcatOp;



    NewConcatOp->Asl.Child->Asl.Next = Node;
    Node->Asl.Parent = NewConcatOp;



    NewConcatOp->Asl.Child->Asl.Next->Asl.Next =
        TrAllocateOp (PARSEOP_ZERO);
    NewConcatOp->Asl.Child->Asl.Next->Asl.Next->Asl.Parent =
        NewConcatOp;

    Op->Asl.Child = NewConcatOp;
    NewConcatOp->Asl.Parent = Op;
}
