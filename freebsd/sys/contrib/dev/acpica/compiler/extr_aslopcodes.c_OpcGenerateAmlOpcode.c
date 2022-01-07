
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_14__ ;


typedef size_t UINT16 ;
struct TYPE_17__ {int Integer; } ;
struct TYPE_18__ {int ParseOpcode; int AmlOpcodeLength; TYPE_1__ Value; int CompileFlags; int AcpiBtype; int AmlOpcode; } ;
struct TYPE_19__ {TYPE_2__ Asl; } ;
struct TYPE_16__ {int Value; int Flags; int AcpiBtype; int AmlOpcode; } ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;


 int ASL_MSG_TRUNCATION ;
 scalar_t__ ASL_PARSE_OPCODE_BASE ;
 int ASL_REMARK ;
 int AcpiGbl_IntegerBitWidth ;
 int AslError (int ,int ,TYPE_3__*,int *) ;
 int AslGbl_HasIncludeFiles ;
 TYPE_14__* AslKeywordMapping ;
 int OpcDoAccessAs (TYPE_3__*) ;
 int OpcDoConnection (TYPE_3__*) ;
 int OpcDoEisaId (TYPE_3__*) ;
 int OpcDoFprintf (TYPE_3__*) ;
 int OpcDoPld (TYPE_3__*) ;
 int OpcDoPrintf (TYPE_3__*) ;
 int OpcDoUnicode (TYPE_3__*) ;
 int OpcDoUuId (TYPE_3__*) ;
 int OpcSetOptimalIntegerSize (TYPE_3__*) ;
 int TRUE ;

void
OpcGenerateAmlOpcode (
    ACPI_PARSE_OBJECT *Op)
{
    UINT16 Index;


    Index = (UINT16) (Op->Asl.ParseOpcode - ASL_PARSE_OPCODE_BASE);

    Op->Asl.AmlOpcode = AslKeywordMapping[Index].AmlOpcode;
    Op->Asl.AcpiBtype = AslKeywordMapping[Index].AcpiBtype;
    Op->Asl.CompileFlags |= AslKeywordMapping[Index].Flags;

    if (!Op->Asl.Value.Integer)
    {
        Op->Asl.Value.Integer = AslKeywordMapping[Index].Value;
    }



    switch (Op->Asl.ParseOpcode)
    {
    case 134:



        (void) OpcSetOptimalIntegerSize (Op);
        break;

    case 133:

        Op->Asl.AmlOpcodeLength = 1;
        break;

    case 139:

        OpcDoAccessAs (Op);
        break;

    case 138:

        OpcDoConnection (Op);
        break;

    case 137:

        OpcDoEisaId (Op);
        break;

    case 132:

        OpcDoPrintf (Op);
        break;

    case 136:

        OpcDoFprintf (Op);
        break;

    case 130:

        OpcDoPld (Op);
        break;

    case 129:

        OpcDoUuId (Op);
        break;

    case 128:

        OpcDoUnicode (Op);
        break;

    case 135:

        AslGbl_HasIncludeFiles = TRUE;
        break;

    case 131:

        if (AcpiGbl_IntegerBitWidth == 32)
        {
            AslError (ASL_REMARK, ASL_MSG_TRUNCATION, Op, ((void*)0));
        }
        break;

    default:



        break;
    }

    return;
}
