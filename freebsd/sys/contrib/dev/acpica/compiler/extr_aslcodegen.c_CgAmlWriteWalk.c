
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_10__ {scalar_t__ Integer; } ;
struct TYPE_13__ {int ParseOpcode; int CompileFlags; int EndLogicalLine; int LogicalLineNumber; int EndLine; int LineNumber; int Column; int FinalAmlLength; int AcpiBtype; int Next; int Child; TYPE_3__* Parent; int AmlSubtreeLength; int AmlLength; int AmlPkgLenBytes; int AmlOpcodeLength; int AmlOpcode; TYPE_1__ Value; } ;
struct TYPE_14__ {TYPE_4__ Asl; } ;
struct TYPE_11__ {int AmlSubtreeLength; } ;
struct TYPE_12__ {TYPE_2__ Asl; } ;
typedef int ACPI_STATUS ;
typedef TYPE_5__ ACPI_PARSE_OBJECT ;


 int AE_OK ;
 int ASL_PARSE_TREE_DEBUG2 ;
 char* ASL_PARSE_TREE_HEADER2 ;
 int ASL_TREE_OUTPUT ;
 int AslGbl_DebugFlag ;
 int CgWriteNode (TYPE_5__*) ;
 int DbgPrint (int ,char*,...) ;




 int TrPrintOpFlags (int ,int ) ;
 int UtDumpBasicOp (TYPE_5__*,int ) ;
 int UtDumpStringOp (TYPE_5__*,int ) ;

__attribute__((used)) static ACPI_STATUS
CgAmlWriteWalk (
    ACPI_PARSE_OBJECT *Op,
    UINT32 Level,
    void *Context)
{



    CgWriteNode (Op);

    if (!AslGbl_DebugFlag)
    {
        return (AE_OK);
    }



    if (!Level)
    {
        DbgPrint (ASL_TREE_OUTPUT,
            "\nFinal parse tree used for AML output:\n");
        DbgPrint (ASL_TREE_OUTPUT, ASL_PARSE_TREE_HEADER2);
    }



    switch (Op->Asl.ParseOpcode)
    {
    case 130:
    case 129:
    case 131:
    case 128:

        UtDumpStringOp (Op, Level);
        break;

    default:

        UtDumpBasicOp (Op, Level);
        break;
    }

    DbgPrint (ASL_TREE_OUTPUT, ASL_PARSE_TREE_DEBUG2,
                 (UINT32) Op->Asl.Value.Integer,
                 Op->Asl.ParseOpcode,
                 Op->Asl.AmlOpcode,
                 Op->Asl.AmlOpcodeLength,
                 Op->Asl.AmlPkgLenBytes,
                 Op->Asl.AmlLength,
                 Op->Asl.AmlSubtreeLength,
                 Op->Asl.Parent ? Op->Asl.Parent->Asl.AmlSubtreeLength : 0,
                 Op,
                 Op->Asl.Parent,
                 Op->Asl.Child,
                 Op->Asl.Next,
                 Op->Asl.CompileFlags,
                 Op->Asl.AcpiBtype,
                 Op->Asl.FinalAmlLength,
                 Op->Asl.Column,
                 Op->Asl.LineNumber,
                 Op->Asl.EndLine,
                 Op->Asl.LogicalLineNumber,
                 Op->Asl.EndLogicalLine);

    TrPrintOpFlags (Op->Asl.CompileFlags, ASL_TREE_OUTPUT);
    DbgPrint (ASL_TREE_OUTPUT, "\n");
    return (AE_OK);
}
