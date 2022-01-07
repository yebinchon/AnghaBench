
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_4__ {int ParseOpcode; int LogicalLineNumber; } ;
struct TYPE_5__ {TYPE_1__ Asl; } ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;


 int ASL_TREE_OUTPUT ;
 int DEBUG_FULL_LINE_LENGTH ;
 int DEBUG_MAX_LINE_LENGTH ;
 int DEBUG_SPACES_PER_INDENT ;
 int DbgPrint (int ,char*,...) ;
 char* UtGetOpName (int ) ;
 int strlen (char*) ;

__attribute__((used)) static void
UtDumpParseOpName (
    ACPI_PARSE_OBJECT *Op,
    UINT32 Level,
    UINT32 DataLength)
{
    char *ParseOpName;
    UINT32 IndentLength;
    UINT32 NameLength;
    UINT32 LineLength;
    UINT32 PaddingLength;




    DbgPrint (ASL_TREE_OUTPUT,
        "%5.5d [%2d]", Op->Asl.LogicalLineNumber, Level);

    ParseOpName = UtGetOpName (Op->Asl.ParseOpcode);



    IndentLength = Level * DEBUG_SPACES_PER_INDENT;
    NameLength = strlen (ParseOpName);
    LineLength = IndentLength + 1 + NameLength + 1 + DataLength;
    PaddingLength = (DEBUG_MAX_LINE_LENGTH + 1) - LineLength;



    if (Level)
    {
        DbgPrint (ASL_TREE_OUTPUT, "%*s", IndentLength, " ");
    }



    DbgPrint (ASL_TREE_OUTPUT, " %s", ParseOpName);



    if (LineLength > DEBUG_MAX_LINE_LENGTH)
    {


        DbgPrint (ASL_TREE_OUTPUT, "\n%*s",
            (DEBUG_FULL_LINE_LENGTH - DataLength), " ");
    }
    else
    {
        DbgPrint (ASL_TREE_OUTPUT, "%*s", PaddingLength, " ");
    }
}
