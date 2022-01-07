
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_6__ {char* String; } ;
struct TYPE_7__ {scalar_t__ ParseOpcode; char* ExternalName; TYPE_1__ Value; } ;
struct TYPE_8__ {TYPE_2__ Asl; } ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;


 int ASL_TREE_OUTPUT ;
 int DbgPrint (int ,char*,...) ;
 scalar_t__ PARSEOP_STRING_LITERAL ;
 char* UtCreateEscapeSequences (char*) ;
 int UtDumpParseOpName (TYPE_3__*,int ,int ) ;
 int strlen (char*) ;

void
UtDumpStringOp (
    ACPI_PARSE_OBJECT *Op,
    UINT32 Level)
{
    char *String;


    String = Op->Asl.Value.String;
    if (Op->Asl.ParseOpcode != PARSEOP_STRING_LITERAL)
    {






        if (Op->Asl.ExternalName)
        {
            String = Op->Asl.ExternalName;
        }
    }

    if (!String)
    {
        DbgPrint (ASL_TREE_OUTPUT,
            " ERROR: Could not find a valid String/Path pointer\n");
        return;
    }

    String = UtCreateEscapeSequences (String);



    UtDumpParseOpName (Op, Level, strlen (String));
    DbgPrint (ASL_TREE_OUTPUT, "%s", String);
}
