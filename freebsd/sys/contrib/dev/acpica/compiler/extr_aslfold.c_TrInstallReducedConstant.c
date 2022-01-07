
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_10__ ;


struct TYPE_24__ {char* String; int Integer; } ;
struct TYPE_25__ {TYPE_9__* Next; TYPE_9__* Parent; TYPE_6__ Value; int AmlLength; int AmlOpcode; TYPE_9__* Child; int CompileFlags; int ParseOpcode; int ParseOpName; } ;
struct TYPE_22__ {int String; int Integer; } ;
struct TYPE_23__ {int AmlOpcode; TYPE_4__ Value; } ;
struct TYPE_27__ {TYPE_7__ Asl; TYPE_5__ Common; } ;
struct TYPE_26__ {int Length; scalar_t__ Pointer; } ;
struct TYPE_21__ {int Pointer; } ;
struct TYPE_20__ {int Value; } ;
struct TYPE_19__ {int Type; } ;
struct TYPE_18__ {TYPE_8__ Buffer; TYPE_3__ String; TYPE_2__ Integer; TYPE_1__ Common; } ;
typedef TYPE_9__ ACPI_PARSE_OBJECT ;
typedef TYPE_10__ ACPI_OPERAND_OBJECT ;


 int ACPI_FORMAT_UINT64 (int ) ;



 int AML_BUFFER_OP ;
 int AML_DWORD_OP ;
 int AML_RAW_DATA_BUFFER ;
 int AML_STRING_OP ;
 int ASL_MSG_CONSTANT_FOLDED ;
 int ASL_OPTIMIZATION ;
 int ASL_PARSE_OUTPUT ;
 int AslError (int ,int ,TYPE_9__*,int ) ;
 int AslGbl_TotalFolds ;
 int DbgPrint (int ,char*,int ,...) ;
 int OP_AML_PACKAGE ;
 int OpcSetOptimalIntegerSize (TYPE_9__*) ;
 int OpcUpdateIntegerNode (TYPE_9__*,int ) ;
 int PARSEOP_BUFFER ;
 int PARSEOP_INTEGER ;
 int PARSEOP_RAW_DATA ;
 int PARSEOP_STRING_LITERAL ;
 TYPE_9__* TrAllocateOp (int ) ;
 int UtSetParseOpName (TYPE_9__*) ;
 int strlen (int ) ;

__attribute__((used)) static void
TrInstallReducedConstant (
    ACPI_PARSE_OBJECT *Op,
    ACPI_OPERAND_OBJECT *ObjDesc)
{
    ACPI_PARSE_OBJECT *LengthOp;
    ACPI_PARSE_OBJECT *DataOp;


    AslGbl_TotalFolds++;
    AslError (ASL_OPTIMIZATION, ASL_MSG_CONSTANT_FOLDED, Op,
        Op->Asl.ParseOpName);





    switch (ObjDesc->Common.Type)
    {
    case 129:

        OpcUpdateIntegerNode (Op, ObjDesc->Integer.Value);

        DbgPrint (ASL_PARSE_OUTPUT,
            "Constant expression reduced to (%s) %8.8X%8.8X\n\n",
            Op->Asl.ParseOpName,
            ACPI_FORMAT_UINT64 (Op->Common.Value.Integer));
        break;

    case 128:

        Op->Asl.ParseOpcode = PARSEOP_STRING_LITERAL;
        Op->Common.AmlOpcode = AML_STRING_OP;
        Op->Asl.AmlLength = strlen (ObjDesc->String.Pointer) + 1;
        Op->Common.Value.String = ObjDesc->String.Pointer;

        DbgPrint (ASL_PARSE_OUTPUT,
            "Constant expression reduced to (STRING) %s\n\n",
            Op->Common.Value.String);
        break;

    case 130:







        Op->Asl.ParseOpcode = PARSEOP_BUFFER;
        Op->Common.AmlOpcode = AML_BUFFER_OP;
        Op->Asl.CompileFlags = OP_AML_PACKAGE;
        UtSetParseOpName (Op);



        LengthOp = TrAllocateOp (PARSEOP_INTEGER);

        LengthOp->Asl.AmlOpcode = AML_DWORD_OP;
        LengthOp->Asl.Value.Integer = ObjDesc->Buffer.Length;
        LengthOp->Asl.Parent = Op;
        (void) OpcSetOptimalIntegerSize (LengthOp);

        Op->Asl.Child = LengthOp;



        DataOp = TrAllocateOp (PARSEOP_RAW_DATA);
        DataOp->Asl.AmlOpcode = AML_RAW_DATA_BUFFER;
        DataOp->Asl.AmlLength = ObjDesc->Buffer.Length;
        DataOp->Asl.Value.String = (char *) ObjDesc->Buffer.Pointer;
        DataOp->Asl.Parent = Op;

        LengthOp->Asl.Next = DataOp;

        DbgPrint (ASL_PARSE_OUTPUT,
            "Constant expression reduced to (BUFFER) length %X\n\n",
            ObjDesc->Buffer.Length);
        break;

    default:
        break;
    }
}
