
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int LogicalLineNumber; TYPE_2__* Parent; int AmlOpcode; } ;
struct TYPE_8__ {TYPE_1__ Asl; } ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;


 int AML_DEBUG_OP ;
 int OpcParsePrintf (TYPE_2__*,TYPE_2__*) ;
 int PARSEOP_DEBUG ;
 TYPE_2__* TrAllocateOp (int ) ;

void
OpcDoPrintf (
    ACPI_PARSE_OBJECT *Op)
{
    ACPI_PARSE_OBJECT *DestOp;




    DestOp = TrAllocateOp (PARSEOP_DEBUG);
    DestOp->Asl.AmlOpcode = AML_DEBUG_OP;
    DestOp->Asl.Parent = Op;
    DestOp->Asl.LogicalLineNumber = Op->Asl.LogicalLineNumber;

    OpcParsePrintf (Op, DestOp);
}
