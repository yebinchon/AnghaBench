#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_9__ ;
typedef  struct TYPE_26__   TYPE_8__ ;
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_10__ ;

/* Type definitions */
struct TYPE_24__ {char* String; int /*<<< orphan*/  Integer; } ;
struct TYPE_25__ {TYPE_9__* Next; TYPE_9__* Parent; TYPE_6__ Value; int /*<<< orphan*/  AmlLength; int /*<<< orphan*/  AmlOpcode; TYPE_9__* Child; int /*<<< orphan*/  CompileFlags; int /*<<< orphan*/  ParseOpcode; int /*<<< orphan*/  ParseOpName; } ;
struct TYPE_22__ {int /*<<< orphan*/  String; int /*<<< orphan*/  Integer; } ;
struct TYPE_23__ {int /*<<< orphan*/  AmlOpcode; TYPE_4__ Value; } ;
struct TYPE_27__ {TYPE_7__ Asl; TYPE_5__ Common; } ;
struct TYPE_26__ {int /*<<< orphan*/  Length; scalar_t__ Pointer; } ;
struct TYPE_21__ {int /*<<< orphan*/  Pointer; } ;
struct TYPE_20__ {int /*<<< orphan*/  Value; } ;
struct TYPE_19__ {int Type; } ;
struct TYPE_18__ {TYPE_8__ Buffer; TYPE_3__ String; TYPE_2__ Integer; TYPE_1__ Common; } ;
typedef  TYPE_9__ ACPI_PARSE_OBJECT ;
typedef  TYPE_10__ ACPI_OPERAND_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  ACPI_TYPE_BUFFER 130 
#define  ACPI_TYPE_INTEGER 129 
#define  ACPI_TYPE_STRING 128 
 int /*<<< orphan*/  AML_BUFFER_OP ; 
 int /*<<< orphan*/  AML_DWORD_OP ; 
 int /*<<< orphan*/  AML_RAW_DATA_BUFFER ; 
 int /*<<< orphan*/  AML_STRING_OP ; 
 int /*<<< orphan*/  ASL_MSG_CONSTANT_FOLDED ; 
 int /*<<< orphan*/  ASL_OPTIMIZATION ; 
 int /*<<< orphan*/  ASL_PARSE_OUTPUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_9__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AslGbl_TotalFolds ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  OP_AML_PACKAGE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_9__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PARSEOP_BUFFER ; 
 int /*<<< orphan*/  PARSEOP_INTEGER ; 
 int /*<<< orphan*/  PARSEOP_RAW_DATA ; 
 int /*<<< orphan*/  PARSEOP_STRING_LITERAL ; 
 TYPE_9__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8 (
    ACPI_PARSE_OBJECT       *Op,
    ACPI_OPERAND_OBJECT     *ObjDesc)
{
    ACPI_PARSE_OBJECT       *LengthOp;
    ACPI_PARSE_OBJECT       *DataOp;


    AslGbl_TotalFolds++;
    FUNC1 (ASL_OPTIMIZATION, ASL_MSG_CONSTANT_FOLDED, Op,
        Op->Asl.ParseOpName);

    /*
     * Because we know we executed type 3/4/5 opcodes above, we know that
     * the result must be either an Integer, String, or Buffer.
     */
    switch (ObjDesc->Common.Type)
    {
    case ACPI_TYPE_INTEGER:

        FUNC4 (Op, ObjDesc->Integer.Value);

        FUNC2 (ASL_PARSE_OUTPUT,
            "Constant expression reduced to (%s) %8.8X%8.8X\n\n",
            Op->Asl.ParseOpName,
            FUNC0 (Op->Common.Value.Integer));
        break;

    case ACPI_TYPE_STRING:

        Op->Asl.ParseOpcode = PARSEOP_STRING_LITERAL;
        Op->Common.AmlOpcode = AML_STRING_OP;
        Op->Asl.AmlLength = FUNC7 (ObjDesc->String.Pointer) + 1;
        Op->Common.Value.String = ObjDesc->String.Pointer;

        FUNC2 (ASL_PARSE_OUTPUT,
            "Constant expression reduced to (STRING) %s\n\n",
            Op->Common.Value.String);
        break;

    case ACPI_TYPE_BUFFER:
        /*
         * Create a new parse subtree of the form:
         *
         * BUFFER (Buffer AML opcode)
         *    INTEGER (Buffer length in bytes)
         *    RAW_DATA (Buffer byte data)
         */
        Op->Asl.ParseOpcode = PARSEOP_BUFFER;
        Op->Common.AmlOpcode = AML_BUFFER_OP;
        Op->Asl.CompileFlags = OP_AML_PACKAGE;
        FUNC6 (Op);

        /* Child node is the buffer length */

        LengthOp = FUNC5 (PARSEOP_INTEGER);

        LengthOp->Asl.AmlOpcode = AML_DWORD_OP;
        LengthOp->Asl.Value.Integer = ObjDesc->Buffer.Length;
        LengthOp->Asl.Parent = Op;
        (void) FUNC3 (LengthOp);

        Op->Asl.Child = LengthOp;

        /* Next child is the raw buffer data */

        DataOp = FUNC5 (PARSEOP_RAW_DATA);
        DataOp->Asl.AmlOpcode = AML_RAW_DATA_BUFFER;
        DataOp->Asl.AmlLength = ObjDesc->Buffer.Length;
        DataOp->Asl.Value.String = (char *) ObjDesc->Buffer.Pointer;
        DataOp->Asl.Parent = Op;

        LengthOp->Asl.Next = DataOp;

        FUNC2 (ASL_PARSE_OUTPUT,
            "Constant expression reduced to (BUFFER) length %X\n\n",
            ObjDesc->Buffer.Length);
        break;

    default:
        break;
    }
}