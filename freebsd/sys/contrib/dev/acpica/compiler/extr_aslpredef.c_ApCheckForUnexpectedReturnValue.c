
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ ParseOpcode; TYPE_5__* Child; } ;
struct TYPE_13__ {TYPE_1__ Asl; } ;
struct TYPE_12__ {TYPE_3__* Op; } ;
struct TYPE_10__ {int ExternalName; } ;
struct TYPE_11__ {TYPE_2__ Asl; } ;
typedef TYPE_4__ ASL_METHOD_INFO ;
typedef TYPE_5__ ACPI_PARSE_OBJECT ;


 int ASL_MSG_RESERVED_NO_RETURN_VAL ;
 int ASL_WARNING ;
 int AslError (int ,int ,TYPE_5__*,int ) ;
 scalar_t__ PARSEOP_ZERO ;

__attribute__((used)) static void
ApCheckForUnexpectedReturnValue (
    ACPI_PARSE_OBJECT *Op,
    ASL_METHOD_INFO *MethodInfo)
{
    ACPI_PARSE_OBJECT *ReturnValueOp;




    ReturnValueOp = Op->Asl.Child;
    if (ReturnValueOp->Asl.ParseOpcode == PARSEOP_ZERO)
    {
        return;
    }



    AslError (ASL_WARNING, ASL_MSG_RESERVED_NO_RETURN_VAL,
        Op, MethodInfo->Op->Asl.ExternalName);
}
