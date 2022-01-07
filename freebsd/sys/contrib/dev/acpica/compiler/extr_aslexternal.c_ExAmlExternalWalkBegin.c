
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_8__ {int Arg; } ;
struct TYPE_10__ {scalar_t__ ParseOpcode; TYPE_4__* Parent; TYPE_1__ Value; } ;
struct TYPE_12__ {TYPE_3__ Asl; } ;
struct TYPE_9__ {scalar_t__ ParseOpcode; } ;
struct TYPE_11__ {TYPE_2__ Asl; } ;
typedef int ACPI_STATUS ;
typedef TYPE_5__ ACPI_PARSE_OBJECT ;


 int AE_OK ;
 int AslGbl_ExternalsListHead ;
 int ExInsertArgCount (TYPE_5__*) ;
 scalar_t__ PARSEOP_DEFINITION_BLOCK ;
 scalar_t__ PARSEOP_EXTERNAL ;
 scalar_t__ PARSEOP_METHODCALL ;

ACPI_STATUS
ExAmlExternalWalkBegin (
    ACPI_PARSE_OBJECT *Op,
    UINT32 Level,
    void *Context)
{



    if (Op->Asl.ParseOpcode == PARSEOP_DEFINITION_BLOCK)
    {
        AslGbl_ExternalsListHead = Op->Asl.Value.Arg;
    }

    if (!AslGbl_ExternalsListHead)
    {
        return (AE_OK);
    }

    if (Op->Asl.ParseOpcode != PARSEOP_METHODCALL)
    {
        return (AE_OK);
    }





    if (Op->Asl.Parent &&
        Op->Asl.Parent->Asl.ParseOpcode == PARSEOP_EXTERNAL)
    {
        return (AE_OK);
    }

    ExInsertArgCount (Op);
    return (AE_OK);
}
