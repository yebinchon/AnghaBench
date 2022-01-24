#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_42__   TYPE_9__ ;
typedef  struct TYPE_41__   TYPE_8__ ;
typedef  struct TYPE_40__   TYPE_7__ ;
typedef  struct TYPE_39__   TYPE_6__ ;
typedef  struct TYPE_38__   TYPE_5__ ;
typedef  struct TYPE_37__   TYPE_4__ ;
typedef  struct TYPE_36__   TYPE_3__ ;
typedef  struct TYPE_35__   TYPE_2__ ;
typedef  struct TYPE_34__   TYPE_1__ ;
typedef  struct TYPE_33__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT8 ;
typedef  size_t UINT32 ;
struct TYPE_42__ {size_t BitOffset; int Level; TYPE_8__* MappingOp; } ;
struct TYPE_37__ {int Integer; int /*<<< orphan*/  Name; TYPE_8__* Arg; int /*<<< orphan*/  String; } ;
struct TYPE_38__ {int DisasmFlags; int DisasmOpcode; int AmlOpcode; TYPE_4__ Value; int /*<<< orphan*/  Parent; } ;
struct TYPE_34__ {int /*<<< orphan*/ * Data; int /*<<< orphan*/  Name; } ;
struct TYPE_41__ {TYPE_5__ Common; TYPE_1__ Named; } ;
struct TYPE_40__ {int /*<<< orphan*/  ResultCount; TYPE_3__* Results; } ;
struct TYPE_39__ {char* Description; } ;
struct TYPE_35__ {int /*<<< orphan*/ * ObjDesc; } ;
struct TYPE_36__ {TYPE_2__ Results; } ;
struct TYPE_33__ {char* Name; } ;
typedef  TYPE_6__ AH_DEVICE_ID ;
typedef  TYPE_7__ ACPI_WALK_STATE ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_8__ ACPI_PARSE_OBJECT ;
typedef  TYPE_9__ ACPI_OP_WALK_INFO ;
typedef  TYPE_10__ ACPI_OPCODE_INFO ;

/* Variables and functions */
 int ACPI_DASM_BUFFER ; 
 int ACPI_DASM_CASE ; 
 int ACPI_DASM_EISAID ; 
 int ACPI_DASM_HID_STRING ; 
 int ACPI_DASM_LNOT_PREFIX ; 
#define  ACPI_DASM_LNOT_SUFFIX 151 
#define  ACPI_DASM_MATCHOP 150 
 int ACPI_DASM_PLD_METHOD ; 
 void* ACPI_DASM_RESOURCE ; 
 int ACPI_DASM_STRING ; 
 int ACPI_DASM_SWITCH ; 
 int ACPI_DASM_UNICODE ; 
 int ACPI_DASM_UUID ; 
 char* FUNC0 (int) ; 
 char* FUNC1 (int) ; 
 int ACPI_PARSEOP_ELSEIF ; 
 int ACPI_PARSEOP_IGNORE ; 
 size_t ACPI_RESULTS_FRAME_OBJ_NUM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_UINT16_MAX ; 
 int /*<<< orphan*/  AE_AML_NO_RESOURCE_END_TAG ; 
 int /*<<< orphan*/  AMLCOMMENT_INLINE ; 
#define  AML_BUFFER_OP 149 
#define  AML_BYTE_OP 148 
 int /*<<< orphan*/  AML_COMMENT_END_NODE ; 
#define  AML_DWORD_OP 147 
#define  AML_ELSE_OP 146 
#define  AML_EXTERNAL_OP 145 
#define  AML_IF_OP 144 
#define  AML_INT_ACCESSFIELD_OP 143 
#define  AML_INT_BYTELIST_OP 142 
#define  AML_INT_CONNECTION_OP 141 
#define  AML_INT_EXTACCESSFIELD_OP 140 
#define  AML_INT_METHODCALL_OP 139 
#define  AML_INT_NAMEDFIELD_OP 138 
#define  AML_INT_NAMEPATH_OP 137 
#define  AML_INT_RESERVEDFIELD_OP 136 
 int AML_INT_RETURN_VALUE_OP ; 
#define  AML_LOGICAL_EQUAL_OP 135 
#define  AML_LOGICAL_GREATER_OP 134 
#define  AML_LOGICAL_LESS_OP 133 
#define  AML_LOGICAL_NOT_OP 132 
 int /*<<< orphan*/  AML_NAMECOMMENT ; 
#define  AML_QWORD_OP 131 
#define  AML_STRING_OP 130 
#define  AML_WHILE_OP 129 
#define  AML_WORD_OP 128 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_9__*,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (size_t) ; 
 size_t FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_7__*,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_9__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 char** AcpiGbl_AccessTypes ; 
 int /*<<< orphan*/  AcpiGbl_CstyleDisassembly ; 
 int /*<<< orphan*/  AcpiGbl_DmEmitExternalOpcodes ; 
 int /*<<< orphan*/  AcpiGbl_NoResourceDisassembly ; 
 int /*<<< orphan*/  FUNC22 (char*,...) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC24 (int /*<<< orphan*/ *,TYPE_8__*) ; 
 TYPE_10__* FUNC25 (int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC27 (
    ACPI_WALK_STATE         *WalkState,
    ACPI_OP_WALK_INFO       *Info,
    ACPI_PARSE_OBJECT       *Op)
{
    const ACPI_OPCODE_INFO  *OpInfo = NULL;
    UINT32                  Offset;
    UINT32                  Length;
    ACPI_PARSE_OBJECT       *Child;
    ACPI_STATUS             Status;
    UINT8                   *Aml;
    const AH_DEVICE_ID      *IdInfo;


    if (!Op)
    {
        FUNC22 ("<NULL OP PTR>");
        return;
    }

    if (Op->Common.DisasmFlags & ACPI_PARSEOP_ELSEIF)
    {
        return; /* ElseIf macro was already emitted */
    }

    switch (Op->Common.DisasmOpcode)
    {
    case ACPI_DASM_MATCHOP:

        FUNC19 (Op);
        return;

    case ACPI_DASM_LNOT_SUFFIX:

        if (!AcpiGbl_CstyleDisassembly)
        {
            switch (Op->Common.AmlOpcode)
            {
            case AML_LOGICAL_EQUAL_OP:
                FUNC22 ("LNotEqual");
                break;

            case AML_LOGICAL_GREATER_OP:
                FUNC22 ("LLessEqual");
                break;

            case AML_LOGICAL_LESS_OP:
                FUNC22 ("LGreaterEqual");
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

    OpInfo = FUNC25 (Op->Common.AmlOpcode);

    /* The op and arguments */

    switch (Op->Common.AmlOpcode)
    {
    case AML_LOGICAL_NOT_OP:

        Child = Op->Common.Value.Arg;
        if ((Child->Common.AmlOpcode == AML_LOGICAL_EQUAL_OP) ||
            (Child->Common.AmlOpcode == AML_LOGICAL_GREATER_OP) ||
            (Child->Common.AmlOpcode == AML_LOGICAL_LESS_OP))
        {
            Child->Common.DisasmOpcode = ACPI_DASM_LNOT_SUFFIX;
            Op->Common.DisasmOpcode = ACPI_DASM_LNOT_PREFIX;
        }
        else
        {
            FUNC22 ("%s", OpInfo->Name);
        }
        break;

    case AML_BYTE_OP:

        FUNC22 ("0x%2.2X", (UINT32) Op->Common.Value.Integer);
        break;

    case AML_WORD_OP:

        if (Op->Common.DisasmOpcode == ACPI_DASM_EISAID)
        {
            FUNC10 ((UINT32) Op->Common.Value.Integer);
        }
        else
        {
            FUNC22 ("0x%4.4X", (UINT32) Op->Common.Value.Integer);
        }
        break;

    case AML_DWORD_OP:

        if (Op->Common.DisasmOpcode == ACPI_DASM_EISAID)
        {
            FUNC10 ((UINT32) Op->Common.Value.Integer);
        }
        else
        {
            FUNC22 ("0x%8.8X", (UINT32) Op->Common.Value.Integer);
        }
        break;

    case AML_QWORD_OP:

        FUNC22 ("0x%8.8X%8.8X",
            FUNC1 (Op->Common.Value.Integer));
        break;

    case AML_STRING_OP:

        FUNC26 (Op->Common.Value.String, ACPI_UINT16_MAX);

        /* For _HID/_CID strings, attempt to output a descriptive comment */

        if (Op->Common.DisasmOpcode == ACPI_DASM_HID_STRING)
        {
            /* If we know about the ID, emit the description */

            IdInfo = FUNC4 (Op->Common.Value.String);
            if (IdInfo)
            {
                FUNC22 (" /* %s */", IdInfo->Description);
            }
        }
        break;

    case AML_BUFFER_OP:
        /*
         * Determine the type of buffer. We can have one of the following:
         *
         * 1) ResourceTemplate containing Resource Descriptors.
         * 2) Unicode String buffer
         * 3) ASCII String buffer
         * 4) Raw data buffer (if none of the above)
         *
         * Since there are no special AML opcodes to differentiate these
         * types of buffers, we have to closely look at the data in the
         * buffer to determine the type.
         */
        if (!AcpiGbl_NoResourceDisassembly)
        {
            Status = FUNC15 (WalkState, Op);
            if (FUNC2 (Status))
            {
                Op->Common.DisasmOpcode = ACPI_DASM_RESOURCE;
                FUNC22 ("ResourceTemplate");
                break;
            }
            else if (Status == AE_AML_NO_RESOURCE_END_TAG)
            {
                FUNC22 (
                    "/**** Is ResourceTemplate, "
                    "but EndTag not at buffer end ****/ ");
            }
        }

        if (FUNC18 (Op))
        {
            Op->Common.DisasmOpcode = ACPI_DASM_UUID;
            FUNC22 ("ToUUID (");
        }
        else if (FUNC17 (Op))
        {
            Op->Common.DisasmOpcode = ACPI_DASM_UNICODE;
            FUNC22 ("Unicode (");
        }
        else if (FUNC16 (Op))
        {
            Op->Common.DisasmOpcode = ACPI_DASM_STRING;
            FUNC22 ("Buffer");
        }
        else if (FUNC14 (Op))
        {
            Op->Common.DisasmOpcode = ACPI_DASM_PLD_METHOD;
            FUNC22 ("ToPLD (");
        }
        else
        {
            Op->Common.DisasmOpcode = ACPI_DASM_BUFFER;
            FUNC22 ("Buffer");
        }
        break;

    case AML_INT_NAMEPATH_OP:

        FUNC20 (Op->Common.Value.Name);
        break;

    case AML_INT_NAMEDFIELD_OP:

        Length = FUNC11 (Op->Named.Name);

        FUNC22 (",");
        FUNC3 (Op, AML_NAMECOMMENT, NULL, 0);
        FUNC22 ("%*.s  %u", (unsigned) (5 - Length), " ",
            (UINT32) Op->Common.Value.Integer);

        FUNC7 (Op);

        Info->BitOffset += (UINT32) Op->Common.Value.Integer;
        break;

    case AML_INT_RESERVEDFIELD_OP:

        /* Offset() -- Must account for previous offsets */

        Offset = (UINT32) Op->Common.Value.Integer;
        Info->BitOffset += Offset;

        if (Info->BitOffset % 8 == 0)
        {
            FUNC22 ("Offset (0x%.2X)", FUNC0 (Info->BitOffset));
        }
        else
        {
            FUNC22 ("    ,   %u", Offset);
        }

        FUNC7 (Op);
        break;

    case AML_INT_ACCESSFIELD_OP:
    case AML_INT_EXTACCESSFIELD_OP:

        FUNC22 ("AccessAs (%s, ",
            AcpiGbl_AccessTypes [(UINT32) (Op->Common.Value.Integer & 0x7)]);

        FUNC9 ((UINT8) (Op->Common.Value.Integer >> 8));

        if (Op->Common.AmlOpcode == AML_INT_EXTACCESSFIELD_OP)
        {
            FUNC22 (" (0x%2.2X)", (unsigned)
                ((Op->Common.Value.Integer >> 16) & 0xFF));
        }

        FUNC22 (")");
        FUNC7 (Op);
        FUNC3 (Op, AML_COMMENT_END_NODE, NULL, 0);
        break;

    case AML_INT_CONNECTION_OP:
        /*
         * Two types of Connection() - one with a buffer object, the
         * other with a namestring that points to a buffer object.
         */
        FUNC22 ("Connection (");
        Child = Op->Common.Value.Arg;

        if (Child->Common.AmlOpcode == AML_INT_BYTELIST_OP)
        {
            FUNC22 ("\n");

            Aml = Child->Named.Data;
            Length = (UINT32) Child->Common.Value.Integer;

            Info->Level += 1;
            Info->MappingOp = Op;
            Op->Common.DisasmOpcode = ACPI_DASM_RESOURCE;

            FUNC21 (Info, Op->Common.Parent, Aml, Length);

            Info->Level -= 1;
            FUNC13 (Info->Level);
        }
        else
        {
            FUNC20 (Child->Common.Value.Name);
        }

        FUNC22 (")");
        FUNC7 (Op);
        FUNC3 (Op, AML_COMMENT_END_NODE, NULL, 0);
        FUNC3 (Op, AMLCOMMENT_INLINE, NULL, 0);
        FUNC22 ("\n");

        Op->Common.DisasmFlags |= ACPI_PARSEOP_IGNORE; /* for now, ignore in AcpiDmAscendingOp */
        Child->Common.DisasmFlags |= ACPI_PARSEOP_IGNORE;
        break;

    case AML_INT_BYTELIST_OP:

        FUNC6 (Info, Op);
        break;

    case AML_INT_METHODCALL_OP:

        Op = FUNC24 (NULL, Op);
        Op->Common.DisasmFlags |= ACPI_PARSEOP_IGNORE;

        FUNC20 (Op->Common.Value.Name);
        break;

    case AML_WHILE_OP:

        if (Op->Common.DisasmOpcode == ACPI_DASM_SWITCH)
        {
            FUNC22 ("%s", "Switch");
            break;
        }

        FUNC22 ("%s", OpInfo->Name);
        break;

    case AML_IF_OP:

        if (Op->Common.DisasmOpcode == ACPI_DASM_CASE)
        {
            FUNC22 ("%s", "Case");
            break;
        }

        FUNC22 ("%s", OpInfo->Name);
        break;

    case AML_ELSE_OP:

        FUNC8 (Op);
        break;

    case AML_EXTERNAL_OP:

        if (AcpiGbl_DmEmitExternalOpcodes)
        {
            FUNC12 (Op, FUNC23(Op, 0));
        }

        break;

    default:

        /* Just get the opcode name and print it */

        FUNC22 ("%s", OpInfo->Name);


#ifdef ACPI_DEBUGGER

        if ((Op->Common.AmlOpcode == AML_INT_RETURN_VALUE_OP) &&
            (WalkState) &&
            (WalkState->Results) &&
            (WalkState->ResultCount))
        {
            AcpiDbDecodeInternalObject (
                WalkState->Results->Results.ObjDesc [
                    (WalkState->ResultCount - 1) %
                        ACPI_RESULTS_FRAME_OBJ_NUM]);
        }
#endif

        break;
    }
}