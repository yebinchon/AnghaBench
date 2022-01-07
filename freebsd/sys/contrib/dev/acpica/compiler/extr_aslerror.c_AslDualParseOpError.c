
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT16 ;
struct TYPE_5__ {int Filename; int Column; int LogicalByteOffset; int LogicalLineNumber; int LineNumber; } ;
struct TYPE_6__ {TYPE_1__ Asl; } ;
typedef int ASL_ERROR_MSG ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;


 int AslInitEnode (int **,int ,int ,int ,int ,int ,int ,int ,char*,int *,int *) ;
 scalar_t__ AslIsExceptionIgnored (int ,int ) ;
 int AslLogNewError (int ,int ,int ,int ,int ,int ,int ,char*,int *,int *) ;

void
AslDualParseOpError (
    UINT8 Level,
    UINT16 MainMsgId,
    ACPI_PARSE_OBJECT *MainOp,
    char *MainMsg,
    UINT16 SubMsgId,
    ACPI_PARSE_OBJECT *SubOp,
    char *SubMsg)
{
    ASL_ERROR_MSG *SubEnode = ((void*)0);




    if (AslIsExceptionIgnored (Level, MainMsgId) || !MainOp)
    {
        return;
    }

    if (SubOp)
    {
        AslInitEnode (&SubEnode, Level, SubMsgId, SubOp->Asl.LineNumber,
            SubOp->Asl.LogicalLineNumber, SubOp->Asl.LogicalByteOffset,
            SubOp->Asl.Column, SubOp->Asl.Filename, SubMsg,
            ((void*)0), ((void*)0));
    }

    AslLogNewError (Level, MainMsgId, MainOp->Asl.LineNumber,
        MainOp->Asl.LogicalLineNumber, MainOp->Asl.LogicalByteOffset,
        MainOp->Asl.Column, MainOp->Asl.Filename, MainMsg,
        ((void*)0), SubEnode);
}
