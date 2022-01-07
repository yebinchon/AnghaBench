
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ParseOpcode; } ;
struct TYPE_5__ {TYPE_1__ Asl; } ;
typedef int BOOLEAN ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;


 int FALSE ;
 scalar_t__ PARSEOP_INTEGER ;
 scalar_t__ PARSEOP_ONE ;
 scalar_t__ PARSEOP_ZERO ;
 int TRUE ;

__attribute__((used)) static BOOLEAN
AnIsValidBufferConstant (
    ACPI_PARSE_OBJECT *Op)
{
    if (!Op)
    {
        return (FALSE);
    }

    if ((Op->Asl.ParseOpcode == PARSEOP_INTEGER) ||
        (Op->Asl.ParseOpcode == PARSEOP_ZERO) ||
        (Op->Asl.ParseOpcode == PARSEOP_ONE))
    {
        return (TRUE);
    }

    return (FALSE);
}
