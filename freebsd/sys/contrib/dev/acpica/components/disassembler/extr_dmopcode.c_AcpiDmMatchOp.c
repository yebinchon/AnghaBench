
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void* DisasmOpcode; TYPE_2__* Next; } ;
struct TYPE_7__ {TYPE_1__ Common; } ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;


 void* ACPI_DASM_MATCHOP ;
 TYPE_2__* AcpiPsGetDepthNext (int *,TYPE_2__*) ;

void
AcpiDmMatchOp (
    ACPI_PARSE_OBJECT *Op)
{
    ACPI_PARSE_OBJECT *NextOp;


    NextOp = AcpiPsGetDepthNext (((void*)0), Op);
    NextOp = NextOp->Common.Next;

    if (!NextOp)
    {


        return;
    }



    NextOp->Common.DisasmOpcode = ACPI_DASM_MATCHOP;

    NextOp = NextOp->Common.Next;
    NextOp = NextOp->Common.Next;
    NextOp->Common.DisasmOpcode = ACPI_DASM_MATCHOP;
}
