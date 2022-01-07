
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_8__ {int String; } ;
struct TYPE_9__ {int ParseOpcode; int CompileFlags; int EndLogicalLine; int LogicalLineNumber; int EndLine; int LineNumber; int Filename; TYPE_1__ Value; } ;
struct TYPE_10__ {TYPE_2__ Asl; } ;
typedef int ACPI_STATUS ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;


 int AE_OK ;
 int ASL_PARSE_TREE_DEBUG1 ;
 int ASL_TREE_OUTPUT ;
 int DbgPrint (int ,char*,...) ;
 int TrPrintOpFlags (int ,int ) ;
 int UtDumpBasicOp (TYPE_3__*,int ) ;
 int UtDumpIntegerOp (TYPE_3__*,int ,int) ;
 int UtDumpStringOp (TYPE_3__*,int ) ;

__attribute__((used)) static ACPI_STATUS
LsTreeWriteWalk (
    ACPI_PARSE_OBJECT *Op,
    UINT32 Level,
    void *Context)
{



    switch (Op->Asl.ParseOpcode)
    {
        case 136:
        case 135:
        case 137:
        case 130:

        UtDumpStringOp (Op, Level);
        break;

    case 143:

        UtDumpIntegerOp (Op, Level, 2);
        break;

    case 129:
    case 132:

        UtDumpIntegerOp (Op, Level, 4);
        break;

    case 142:
    case 141:

        UtDumpIntegerOp (Op, Level, 8);
        break;

    case 131:
    case 138:
    case 134:
    case 128:
    case 133:

        UtDumpIntegerOp (Op, Level, 16);
        break;

    case 140:

        DbgPrint (ASL_TREE_OUTPUT,
            "Open: %s\n", Op->Asl.Value.String);
        return (AE_OK);

    case 139:

        DbgPrint (ASL_TREE_OUTPUT,
            "Close: %s\n", Op->Asl.Filename);
        return (AE_OK);

    default:

        UtDumpBasicOp (Op, Level);
        break;
    }



    DbgPrint (ASL_TREE_OUTPUT, ASL_PARSE_TREE_DEBUG1,
        Op->Asl.ParseOpcode, Op->Asl.CompileFlags,
        Op->Asl.LineNumber, Op->Asl.EndLine,
        Op->Asl.LogicalLineNumber, Op->Asl.EndLogicalLine);

    TrPrintOpFlags (Op->Asl.CompileFlags, ASL_TREE_OUTPUT);
    DbgPrint (ASL_TREE_OUTPUT, "\n");
    return (AE_OK);
}
