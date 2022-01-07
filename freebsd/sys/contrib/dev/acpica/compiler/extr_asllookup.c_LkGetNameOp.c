
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int Flags; } ;
struct TYPE_7__ {scalar_t__ AmlOpcode; int CompileFlags; TYPE_2__* Next; TYPE_2__* Child; } ;
struct TYPE_8__ {TYPE_1__ Asl; } ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;
typedef TYPE_3__ ACPI_OPCODE_INFO ;


 scalar_t__ AML_ALIAS_OP ;
 int AML_CREATE ;
 int AML_NAMED ;
 TYPE_3__* AcpiPsGetOpcodeInfo (scalar_t__) ;
 int OP_IS_NAME_DECLARATION ;

__attribute__((used)) static ACPI_PARSE_OBJECT *
LkGetNameOp (
    ACPI_PARSE_OBJECT *Op)
{
    const ACPI_OPCODE_INFO *OpInfo;
    ACPI_PARSE_OBJECT *NameOp = Op;


    OpInfo = AcpiPsGetOpcodeInfo (Op->Asl.AmlOpcode);




    if (OpInfo->Flags & AML_NAMED)
    {


        NameOp = Op->Asl.Child;
        if (Op->Asl.AmlOpcode == AML_ALIAS_OP)
        {




            NameOp = Op->Asl.Child->Asl.Next;
        }
    }
    else if (OpInfo->Flags & AML_CREATE)
    {


        NameOp = Op->Asl.Child;
        while (!(NameOp->Asl.CompileFlags & OP_IS_NAME_DECLARATION))
        {
            NameOp = NameOp->Asl.Next;
        }
    }

    return (NameOp);
}
