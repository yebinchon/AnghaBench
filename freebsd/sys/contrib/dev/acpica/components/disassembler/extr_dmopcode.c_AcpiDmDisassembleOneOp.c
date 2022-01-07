
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_42__ TYPE_9__ ;
typedef struct TYPE_41__ TYPE_8__ ;
typedef struct TYPE_40__ TYPE_7__ ;
typedef struct TYPE_39__ TYPE_6__ ;
typedef struct TYPE_38__ TYPE_5__ ;
typedef struct TYPE_37__ TYPE_4__ ;
typedef struct TYPE_36__ TYPE_3__ ;
typedef struct TYPE_35__ TYPE_2__ ;
typedef struct TYPE_34__ TYPE_1__ ;
typedef struct TYPE_33__ TYPE_10__ ;


typedef int UINT8 ;
typedef size_t UINT32 ;
struct TYPE_42__ {size_t BitOffset; int Level; TYPE_8__* MappingOp; } ;
struct TYPE_37__ {int Integer; int Name; TYPE_8__* Arg; int String; } ;
struct TYPE_38__ {int DisasmFlags; int DisasmOpcode; int AmlOpcode; TYPE_4__ Value; int Parent; } ;
struct TYPE_34__ {int * Data; int Name; } ;
struct TYPE_41__ {TYPE_5__ Common; TYPE_1__ Named; } ;
struct TYPE_40__ {int ResultCount; TYPE_3__* Results; } ;
struct TYPE_39__ {char* Description; } ;
struct TYPE_35__ {int * ObjDesc; } ;
struct TYPE_36__ {TYPE_2__ Results; } ;
struct TYPE_33__ {char* Name; } ;
typedef TYPE_6__ AH_DEVICE_ID ;
typedef TYPE_7__ ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef TYPE_8__ ACPI_PARSE_OBJECT ;
typedef TYPE_9__ ACPI_OP_WALK_INFO ;
typedef TYPE_10__ ACPI_OPCODE_INFO ;


 int ACPI_DASM_BUFFER ;
 int ACPI_DASM_CASE ;
 int ACPI_DASM_EISAID ;
 int ACPI_DASM_HID_STRING ;
 int ACPI_DASM_LNOT_PREFIX ;


 int ACPI_DASM_PLD_METHOD ;
 void* ACPI_DASM_RESOURCE ;
 int ACPI_DASM_STRING ;
 int ACPI_DASM_SWITCH ;
 int ACPI_DASM_UNICODE ;
 int ACPI_DASM_UUID ;
 char* ACPI_DIV_8 (int) ;
 char* ACPI_FORMAT_UINT64 (int) ;
 int ACPI_PARSEOP_ELSEIF ;
 int ACPI_PARSEOP_IGNORE ;
 size_t ACPI_RESULTS_FRAME_OBJ_NUM ;
 int ACPI_SUCCESS (int ) ;
 int ACPI_UINT16_MAX ;
 int AE_AML_NO_RESOURCE_END_TAG ;
 int AMLCOMMENT_INLINE ;


 int AML_COMMENT_END_NODE ;
 int AML_INT_RETURN_VALUE_OP ;




 int AML_NAMECOMMENT ;




 int ASL_CV_PRINT_ONE_COMMENT (TYPE_8__*,int ,int *,int ) ;
 TYPE_6__* AcpiAhMatchHardwareId (int ) ;
 int AcpiDbDecodeInternalObject (int ) ;
 int AcpiDmByteList (TYPE_9__*,TYPE_8__*) ;
 int AcpiDmCommaIfFieldMember (TYPE_8__*) ;
 int AcpiDmConvertToElseIf (TYPE_8__*) ;
 int AcpiDmDecodeAttribute (int ) ;
 int AcpiDmDecompressEisaId (size_t) ;
 size_t AcpiDmDumpName (int ) ;
 int AcpiDmEmitExternal (TYPE_8__*,int ) ;
 int AcpiDmIndent (int) ;
 int AcpiDmIsPldBuffer (TYPE_8__*) ;
 int AcpiDmIsResourceTemplate (TYPE_7__*,TYPE_8__*) ;
 int AcpiDmIsStringBuffer (TYPE_8__*) ;
 int AcpiDmIsUnicodeBuffer (TYPE_8__*) ;
 int AcpiDmIsUuidBuffer (TYPE_8__*) ;
 int AcpiDmMatchKeyword (TYPE_8__*) ;
 int AcpiDmNamestring (int ) ;
 int AcpiDmResourceTemplate (TYPE_9__*,int ,int *,size_t) ;
 char** AcpiGbl_AccessTypes ;
 int AcpiGbl_CstyleDisassembly ;
 int AcpiGbl_DmEmitExternalOpcodes ;
 int AcpiGbl_NoResourceDisassembly ;
 int AcpiOsPrintf (char*,...) ;
 int AcpiPsGetArg (TYPE_8__*,int ) ;
 TYPE_8__* AcpiPsGetDepthNext (int *,TYPE_8__*) ;
 TYPE_10__* AcpiPsGetOpcodeInfo (int) ;
 int AcpiUtPrintString (int ,int ) ;

void
AcpiDmDisassembleOneOp (
    ACPI_WALK_STATE *WalkState,
    ACPI_OP_WALK_INFO *Info,
    ACPI_PARSE_OBJECT *Op)
{
    const ACPI_OPCODE_INFO *OpInfo = ((void*)0);
    UINT32 Offset;
    UINT32 Length;
    ACPI_PARSE_OBJECT *Child;
    ACPI_STATUS Status;
    UINT8 *Aml;
    const AH_DEVICE_ID *IdInfo;


    if (!Op)
    {
        AcpiOsPrintf ("<NULL OP PTR>");
        return;
    }

    if (Op->Common.DisasmFlags & ACPI_PARSEOP_ELSEIF)
    {
        return;
    }

    switch (Op->Common.DisasmOpcode)
    {
    case 150:

        AcpiDmMatchKeyword (Op);
        return;

    case 151:

        if (!AcpiGbl_CstyleDisassembly)
        {
            switch (Op->Common.AmlOpcode)
            {
            case 135:
                AcpiOsPrintf ("LNotEqual");
                break;

            case 134:
                AcpiOsPrintf ("LLessEqual");
                break;

            case 133:
                AcpiOsPrintf ("LGreaterEqual");
                break;

            default:
                break;
            }
        }

        Op->Common.DisasmOpcode = 0;
        Op->Common.DisasmFlags |= ACPI_PARSEOP_IGNORE;
        return;

    default:
        break;
    }

    OpInfo = AcpiPsGetOpcodeInfo (Op->Common.AmlOpcode);



    switch (Op->Common.AmlOpcode)
    {
    case 132:

        Child = Op->Common.Value.Arg;
        if ((Child->Common.AmlOpcode == 135) ||
            (Child->Common.AmlOpcode == 134) ||
            (Child->Common.AmlOpcode == 133))
        {
            Child->Common.DisasmOpcode = 151;
            Op->Common.DisasmOpcode = ACPI_DASM_LNOT_PREFIX;
        }
        else
        {
            AcpiOsPrintf ("%s", OpInfo->Name);
        }
        break;

    case 148:

        AcpiOsPrintf ("0x%2.2X", (UINT32) Op->Common.Value.Integer);
        break;

    case 128:

        if (Op->Common.DisasmOpcode == ACPI_DASM_EISAID)
        {
            AcpiDmDecompressEisaId ((UINT32) Op->Common.Value.Integer);
        }
        else
        {
            AcpiOsPrintf ("0x%4.4X", (UINT32) Op->Common.Value.Integer);
        }
        break;

    case 147:

        if (Op->Common.DisasmOpcode == ACPI_DASM_EISAID)
        {
            AcpiDmDecompressEisaId ((UINT32) Op->Common.Value.Integer);
        }
        else
        {
            AcpiOsPrintf ("0x%8.8X", (UINT32) Op->Common.Value.Integer);
        }
        break;

    case 131:

        AcpiOsPrintf ("0x%8.8X%8.8X",
            ACPI_FORMAT_UINT64 (Op->Common.Value.Integer));
        break;

    case 130:

        AcpiUtPrintString (Op->Common.Value.String, ACPI_UINT16_MAX);



        if (Op->Common.DisasmOpcode == ACPI_DASM_HID_STRING)
        {


            IdInfo = AcpiAhMatchHardwareId (Op->Common.Value.String);
            if (IdInfo)
            {
                AcpiOsPrintf (" /* %s */", IdInfo->Description);
            }
        }
        break;

    case 149:
        if (!AcpiGbl_NoResourceDisassembly)
        {
            Status = AcpiDmIsResourceTemplate (WalkState, Op);
            if (ACPI_SUCCESS (Status))
            {
                Op->Common.DisasmOpcode = ACPI_DASM_RESOURCE;
                AcpiOsPrintf ("ResourceTemplate");
                break;
            }
            else if (Status == AE_AML_NO_RESOURCE_END_TAG)
            {
                AcpiOsPrintf (
                    "/**** Is ResourceTemplate, "
                    "but EndTag not at buffer end ****/ ");
            }
        }

        if (AcpiDmIsUuidBuffer (Op))
        {
            Op->Common.DisasmOpcode = ACPI_DASM_UUID;
            AcpiOsPrintf ("ToUUID (");
        }
        else if (AcpiDmIsUnicodeBuffer (Op))
        {
            Op->Common.DisasmOpcode = ACPI_DASM_UNICODE;
            AcpiOsPrintf ("Unicode (");
        }
        else if (AcpiDmIsStringBuffer (Op))
        {
            Op->Common.DisasmOpcode = ACPI_DASM_STRING;
            AcpiOsPrintf ("Buffer");
        }
        else if (AcpiDmIsPldBuffer (Op))
        {
            Op->Common.DisasmOpcode = ACPI_DASM_PLD_METHOD;
            AcpiOsPrintf ("ToPLD (");
        }
        else
        {
            Op->Common.DisasmOpcode = ACPI_DASM_BUFFER;
            AcpiOsPrintf ("Buffer");
        }
        break;

    case 137:

        AcpiDmNamestring (Op->Common.Value.Name);
        break;

    case 138:

        Length = AcpiDmDumpName (Op->Named.Name);

        AcpiOsPrintf (",");
        ASL_CV_PRINT_ONE_COMMENT (Op, AML_NAMECOMMENT, ((void*)0), 0);
        AcpiOsPrintf ("%*.s  %u", (unsigned) (5 - Length), " ",
            (UINT32) Op->Common.Value.Integer);

        AcpiDmCommaIfFieldMember (Op);

        Info->BitOffset += (UINT32) Op->Common.Value.Integer;
        break;

    case 136:



        Offset = (UINT32) Op->Common.Value.Integer;
        Info->BitOffset += Offset;

        if (Info->BitOffset % 8 == 0)
        {
            AcpiOsPrintf ("Offset (0x%.2X)", ACPI_DIV_8 (Info->BitOffset));
        }
        else
        {
            AcpiOsPrintf ("    ,   %u", Offset);
        }

        AcpiDmCommaIfFieldMember (Op);
        break;

    case 143:
    case 140:

        AcpiOsPrintf ("AccessAs (%s, ",
            AcpiGbl_AccessTypes [(UINT32) (Op->Common.Value.Integer & 0x7)]);

        AcpiDmDecodeAttribute ((UINT8) (Op->Common.Value.Integer >> 8));

        if (Op->Common.AmlOpcode == 140)
        {
            AcpiOsPrintf (" (0x%2.2X)", (unsigned)
                ((Op->Common.Value.Integer >> 16) & 0xFF));
        }

        AcpiOsPrintf (")");
        AcpiDmCommaIfFieldMember (Op);
        ASL_CV_PRINT_ONE_COMMENT (Op, AML_COMMENT_END_NODE, ((void*)0), 0);
        break;

    case 141:




        AcpiOsPrintf ("Connection (");
        Child = Op->Common.Value.Arg;

        if (Child->Common.AmlOpcode == 142)
        {
            AcpiOsPrintf ("\n");

            Aml = Child->Named.Data;
            Length = (UINT32) Child->Common.Value.Integer;

            Info->Level += 1;
            Info->MappingOp = Op;
            Op->Common.DisasmOpcode = ACPI_DASM_RESOURCE;

            AcpiDmResourceTemplate (Info, Op->Common.Parent, Aml, Length);

            Info->Level -= 1;
            AcpiDmIndent (Info->Level);
        }
        else
        {
            AcpiDmNamestring (Child->Common.Value.Name);
        }

        AcpiOsPrintf (")");
        AcpiDmCommaIfFieldMember (Op);
        ASL_CV_PRINT_ONE_COMMENT (Op, AML_COMMENT_END_NODE, ((void*)0), 0);
        ASL_CV_PRINT_ONE_COMMENT (Op, AMLCOMMENT_INLINE, ((void*)0), 0);
        AcpiOsPrintf ("\n");

        Op->Common.DisasmFlags |= ACPI_PARSEOP_IGNORE;
        Child->Common.DisasmFlags |= ACPI_PARSEOP_IGNORE;
        break;

    case 142:

        AcpiDmByteList (Info, Op);
        break;

    case 139:

        Op = AcpiPsGetDepthNext (((void*)0), Op);
        Op->Common.DisasmFlags |= ACPI_PARSEOP_IGNORE;

        AcpiDmNamestring (Op->Common.Value.Name);
        break;

    case 129:

        if (Op->Common.DisasmOpcode == ACPI_DASM_SWITCH)
        {
            AcpiOsPrintf ("%s", "Switch");
            break;
        }

        AcpiOsPrintf ("%s", OpInfo->Name);
        break;

    case 144:

        if (Op->Common.DisasmOpcode == ACPI_DASM_CASE)
        {
            AcpiOsPrintf ("%s", "Case");
            break;
        }

        AcpiOsPrintf ("%s", OpInfo->Name);
        break;

    case 146:

        AcpiDmConvertToElseIf (Op);
        break;

    case 145:

        if (AcpiGbl_DmEmitExternalOpcodes)
        {
            AcpiDmEmitExternal (Op, AcpiPsGetArg(Op, 0));
        }

        break;

    default:



        AcpiOsPrintf ("%s", OpInfo->Name);
        break;
    }
}
