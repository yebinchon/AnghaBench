
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_5__ {char* ExternalName; int CompileFlags; } ;
struct TYPE_6__ {TYPE_1__ Asl; } ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;


 int ACPI_COMPILER_RESERVED_NAME ;
 int ACPI_EVENT_RESERVED_NAME ;
 int ACPI_NOT_RESERVED_NAME ;
 int ASL_MSG_COMPILER_RESERVED ;
 int ASL_MSG_UNKNOWN_RESERVED_NAME ;
 int ASL_REMARK ;
 int ASL_WARNING ;
 int AslError (int ,int ,TYPE_2__*,char*) ;
 int OP_COMPILER_EMITTED ;
 scalar_t__ isxdigit (int) ;

__attribute__((used)) static UINT32
ApCheckForSpecialName (
    ACPI_PARSE_OBJECT *Op,
    char *Name)
{
    if ((Name[1] == 'L') ||
        (Name[1] == 'E') ||
        (Name[1] == 'W') ||
        (Name[1] == 'Q'))
    {


        if ((isxdigit ((int) Name[2])) &&
            (isxdigit ((int) Name[3])))
        {
            return (ACPI_EVENT_RESERVED_NAME);
        }
    }



    else if ((Op->Asl.ExternalName[1] == 'T') &&
             (Op->Asl.ExternalName[2] == '_'))
    {


        if (Op->Asl.CompileFlags & OP_COMPILER_EMITTED)
        {
            return (ACPI_NOT_RESERVED_NAME);
        }
        AslError (ASL_REMARK, ASL_MSG_COMPILER_RESERVED,
            Op, Op->Asl.ExternalName);
        return (ACPI_COMPILER_RESERVED_NAME);
    }






    AslError (ASL_WARNING, ASL_MSG_UNKNOWN_RESERVED_NAME,
        Op, Op->Asl.ExternalName);

    return (ACPI_NOT_RESERVED_NAME);
}
