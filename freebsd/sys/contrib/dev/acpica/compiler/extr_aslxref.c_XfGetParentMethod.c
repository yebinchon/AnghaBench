
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ AmlOpcode; TYPE_2__* Parent; } ;
struct TYPE_6__ {TYPE_1__ Asl; } ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;


 scalar_t__ AML_METHOD_OP ;

__attribute__((used)) static ACPI_PARSE_OBJECT *
XfGetParentMethod (
    ACPI_PARSE_OBJECT *Op)
{
    ACPI_PARSE_OBJECT *NextOp;


    NextOp = Op->Asl.Parent;
    while (NextOp)
    {
        if (NextOp->Asl.AmlOpcode == AML_METHOD_OP)
        {
            return (NextOp);
        }

        NextOp = NextOp->Asl.Parent;
    }

    return (((void*)0));
}
