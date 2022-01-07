
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* Arg; } ;
struct TYPE_6__ {TYPE_3__* Next; TYPE_3__* Parent; TYPE_1__ Value; } ;
struct TYPE_7__ {TYPE_2__ Common; } ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;



__attribute__((used)) static void
AcpiDmPromoteSubtree (
    ACPI_PARSE_OBJECT *StartOp)
{
    ACPI_PARSE_OBJECT *Op;
    ACPI_PARSE_OBJECT *ParentOp;




    ParentOp = StartOp->Common.Parent;



    Op = StartOp->Common.Value.Arg;



    while (Op)
    {
        Op->Common.Parent = ParentOp;
        if (!Op->Common.Next)
        {


            Op->Common.Next = StartOp->Common.Next;
            break;
        }
        Op = Op->Common.Next;
    }
}
