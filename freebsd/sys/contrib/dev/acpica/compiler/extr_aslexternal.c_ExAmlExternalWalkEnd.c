
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_5__ {scalar_t__ ParseOpcode; } ;
struct TYPE_6__ {TYPE_1__ Asl; } ;
typedef int ACPI_STATUS ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;


 int AE_OK ;
 int * AslGbl_ExternalsListHead ;
 int ExMoveExternals (TYPE_2__*) ;
 scalar_t__ PARSEOP_DEFINITION_BLOCK ;

ACPI_STATUS
ExAmlExternalWalkEnd (
    ACPI_PARSE_OBJECT *Op,
    UINT32 Level,
    void *Context)
{

    if (Op->Asl.ParseOpcode == PARSEOP_DEFINITION_BLOCK)
    {




        ExMoveExternals (Op);
        AslGbl_ExternalsListHead = ((void*)0);
    }

    return (AE_OK);
}
