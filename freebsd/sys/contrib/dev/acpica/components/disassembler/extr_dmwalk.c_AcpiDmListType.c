
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_8__ {int Flags; } ;
struct TYPE_6__ {int AmlOpcode; } ;
struct TYPE_7__ {TYPE_1__ Common; } ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;
typedef TYPE_3__ ACPI_OPCODE_INFO ;







 int AML_HAS_ARGS ;
 TYPE_3__* AcpiPsGetOpcodeInfo (int) ;
 int BLOCK_COMMA_LIST ;
 int BLOCK_NONE ;

UINT32
AcpiDmListType (
    ACPI_PARSE_OBJECT *Op)
{
    const ACPI_OPCODE_INFO *OpInfo;


    if (!Op)
    {
        return (BLOCK_NONE);
    }

    switch (Op->Common.AmlOpcode)
    {

    case 139:
    case 135:
    case 140:
    case 131:
    case 133:
    case 132:
    case 130:
    case 137:
    case 128:
    case 138:
    case 136:
    case 142:

        return (BLOCK_NONE);

    case 141:
    case 134:
    case 129:

        return (BLOCK_COMMA_LIST);

    default:

        OpInfo = AcpiPsGetOpcodeInfo (Op->Common.AmlOpcode);
        if (OpInfo->Flags & AML_HAS_ARGS)
        {
            return (BLOCK_COMMA_LIST);
        }

        return (BLOCK_NONE);
    }
}
