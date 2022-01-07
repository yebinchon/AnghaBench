
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {int Filename; } ;
struct TYPE_10__ {char* String; } ;
struct TYPE_11__ {TYPE_1__ Value; } ;
struct TYPE_13__ {TYPE_2__ Asl; } ;
struct TYPE_12__ {char* Dir; struct TYPE_12__* Next; } ;
typedef int FILE ;
typedef TYPE_3__ ASL_INCLUDE_DIR ;
typedef TYPE_4__ ACPI_PARSE_OBJECT ;


 int ASL_ERROR ;
 size_t ASL_FILE_INPUT ;
 int ASL_FILE_SOURCE_OUTPUT ;
 int ASL_MSG_INCLUDE_FILE_OPEN ;
 int AslCommonError (int ,int ,int ,int ,int ,int ,int ,char*) ;
 int AslError (int ,int ,TYPE_4__*,int ) ;
 int AslGbl_CurrentColumn ;
 int AslGbl_CurrentLineNumber ;
 int AslGbl_CurrentLineOffset ;
 char* AslGbl_DirectoryPath ;
 TYPE_8__* AslGbl_Files ;
 TYPE_3__* AslGbl_IncludeDirList ;
 int AslGbl_InputByteCount ;
 int AslGbl_LogicalLineNumber ;
 int AslGbl_MsgBuffer ;
 int AslResetCurrentLineBuffer () ;
 int * FlOpenIncludeWithPrefix (char*,TYPE_4__*,char*) ;
 int FlPrintFile (int ,char*) ;
 int errno ;
 int sprintf (int ,char*,char*,char*) ;
 char* strerror (int ) ;

void
FlOpenIncludeFile (
    ACPI_PARSE_OBJECT *Op)
{
    FILE *IncludeFile;
    ASL_INCLUDE_DIR *NextDir;




    if (!Op)
    {
        AslCommonError (ASL_ERROR, ASL_MSG_INCLUDE_FILE_OPEN,
            AslGbl_CurrentLineNumber, AslGbl_LogicalLineNumber,
            AslGbl_InputByteCount, AslGbl_CurrentColumn,
            AslGbl_Files[ASL_FILE_INPUT].Filename, " - Null parse node");

        return;
    }





    AslResetCurrentLineBuffer ();
    FlPrintFile (ASL_FILE_SOURCE_OUTPUT, "\n");
    AslGbl_CurrentLineOffset++;






    if ((Op->Asl.Value.String[0] == '/') ||
        (Op->Asl.Value.String[0] == '\\') ||
        (Op->Asl.Value.String[1] == ':'))
    {
        IncludeFile = FlOpenIncludeWithPrefix ("", Op, Op->Asl.Value.String);
        if (!IncludeFile)
        {
            goto ErrorExit;
        }
        return;
    }
    IncludeFile = FlOpenIncludeWithPrefix (
        AslGbl_DirectoryPath, Op, Op->Asl.Value.String);
    if (IncludeFile)
    {
        return;
    }





    NextDir = AslGbl_IncludeDirList;
    while (NextDir)
    {
        IncludeFile = FlOpenIncludeWithPrefix (
            NextDir->Dir, Op, Op->Asl.Value.String);
        if (IncludeFile)
        {
            return;
        }

        NextDir = NextDir->Next;
    }



ErrorExit:
    sprintf (AslGbl_MsgBuffer, "%s, %s", Op->Asl.Value.String, strerror (errno));
    AslError (ASL_ERROR, ASL_MSG_INCLUDE_FILE_OPEN, Op, AslGbl_MsgBuffer);
}
