
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_11__ {int AmlStart; } ;
struct TYPE_16__ {int Op; int Opcode; TYPE_5__* DeferredNode; TYPE_3__* MethodNode; TYPE_1__ ParserState; int Aml; } ;
struct TYPE_14__ {int Integer; } ;
struct TYPE_15__ {TYPE_4__ Name; } ;
struct TYPE_12__ {int Integer; } ;
struct TYPE_13__ {TYPE_2__ Name; } ;
typedef TYPE_6__ ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef int ACPI_NAME ;


 scalar_t__ ACPI_FAILURE (int) ;
 int ACPI_FUNCTION_ENTRY () ;
 scalar_t__ ACPI_PTR_DIFF (int ,int ) ;
 scalar_t__ ACPI_SUCCESS (int) ;
 int AE_CODE_CONTROL ;
 int AcpiDbDumpMethodInfo (int,TYPE_6__*) ;
 int AcpiDsClearImplicitReturn (TYPE_6__*) ;
 int AcpiDsDumpMethodStack (int,TYPE_6__*,int ) ;
 int AcpiExEnterInterpreter () ;
 int AcpiExExitInterpreter () ;
 int AcpiGbl_ExceptionHandler (int,int ,int ,scalar_t__,int *) ;

ACPI_STATUS
AcpiDsMethodError (
    ACPI_STATUS Status,
    ACPI_WALK_STATE *WalkState)
{
    UINT32 AmlOffset;
    ACPI_NAME Name = 0;


    ACPI_FUNCTION_ENTRY ();




    if (ACPI_SUCCESS (Status) ||
        (Status & AE_CODE_CONTROL))
    {
        return (Status);
    }



    if (AcpiGbl_ExceptionHandler)
    {


        AcpiExExitInterpreter ();





        AmlOffset = (UINT32) ACPI_PTR_DIFF (WalkState->Aml,
            WalkState->ParserState.AmlStart);

        if (WalkState->MethodNode)
        {
            Name = WalkState->MethodNode->Name.Integer;
        }
        else if (WalkState->DeferredNode)
        {
            Name = WalkState->DeferredNode->Name.Integer;
        }

        Status = AcpiGbl_ExceptionHandler (Status, Name,
            WalkState->Opcode, AmlOffset, ((void*)0));
        AcpiExEnterInterpreter ();
    }

    AcpiDsClearImplicitReturn (WalkState);

    if (ACPI_FAILURE (Status))
    {
        AcpiDsDumpMethodStack (Status, WalkState, WalkState->Op);






    }

    return (Status);
}
