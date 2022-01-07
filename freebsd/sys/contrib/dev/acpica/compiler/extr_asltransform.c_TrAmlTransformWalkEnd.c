
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_5__ {int * Arg; } ;
struct TYPE_6__ {scalar_t__ ParseOpcode; TYPE_1__ Value; } ;
struct TYPE_7__ {TYPE_2__ Asl; } ;
typedef int ACPI_STATUS ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;


 int AE_OK ;
 int * AslGbl_ExternalsListHead ;
 scalar_t__ PARSEOP_DEFINITION_BLOCK ;

ACPI_STATUS
TrAmlTransformWalkEnd (
    ACPI_PARSE_OBJECT *Op,
    UINT32 Level,
    void *Context)
{



    if (Op->Asl.ParseOpcode == PARSEOP_DEFINITION_BLOCK)
    {
        Op->Asl.Value.Arg = AslGbl_ExternalsListHead;
        AslGbl_ExternalsListHead = ((void*)0);
    }

    return (AE_OK);
}
