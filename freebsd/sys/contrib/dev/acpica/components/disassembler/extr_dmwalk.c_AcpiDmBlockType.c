
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_12__ {int Flags; } ;
struct TYPE_10__ {int AmlOpcode; TYPE_2__* Parent; int DisasmOpcode; } ;
struct TYPE_11__ {TYPE_3__ Common; } ;
struct TYPE_8__ {int const AmlOpcode; } ;
struct TYPE_9__ {TYPE_1__ Common; } ;
typedef TYPE_4__ ACPI_PARSE_OBJECT ;
typedef TYPE_5__ ACPI_OPCODE_INFO ;


 int ACPI_DASM_PLD_METHOD ;
 int ACPI_DASM_UNICODE ;
 int ACPI_DASM_UUID ;






 int AML_HAS_ARGS ;
 TYPE_5__* AcpiPsGetOpcodeInfo (int) ;
 int BLOCK_BRACE ;
 int BLOCK_NONE ;
 int BLOCK_PAREN ;

UINT32
AcpiDmBlockType (
    ACPI_PARSE_OBJECT *Op)
{
    const ACPI_OPCODE_INFO *OpInfo;


    if (!Op)
    {
        return (BLOCK_NONE);
    }

    switch (Op->Common.AmlOpcode)
    {
    case 141:

        return (BLOCK_BRACE);

    case 135:
    case 142:
    case 131:
    case 132:
    case 133:
    case 130:
    case 138:
    case 128:
    case 139:
    case 137:
    case 144:

        return (BLOCK_PAREN | BLOCK_BRACE);

    case 143:

        if ((Op->Common.DisasmOpcode == ACPI_DASM_UNICODE) ||
            (Op->Common.DisasmOpcode == ACPI_DASM_UUID) ||
            (Op->Common.DisasmOpcode == ACPI_DASM_PLD_METHOD))
        {
            return (BLOCK_NONE);
        }



    case 134:
    case 129:

        return (BLOCK_PAREN | BLOCK_BRACE);

    case 140:

        return (BLOCK_PAREN);

    case 136:

        if (Op->Common.Parent &&
            ((Op->Common.Parent->Common.AmlOpcode == 134) ||
             (Op->Common.Parent->Common.AmlOpcode == 129)))
        {


            return (BLOCK_NONE);
        }



    default:

        OpInfo = AcpiPsGetOpcodeInfo (Op->Common.AmlOpcode);
        if (OpInfo->Flags & AML_HAS_ARGS)
        {
            return (BLOCK_PAREN);
        }

        return (BLOCK_NONE);
    }
}
