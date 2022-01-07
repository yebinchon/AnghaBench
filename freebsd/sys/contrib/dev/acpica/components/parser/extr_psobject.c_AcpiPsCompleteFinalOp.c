
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int AmlOpcode; } ;
struct TYPE_17__ {TYPE_1__ Common; } ;
struct TYPE_16__ {scalar_t__ (* AscendingCallback ) (TYPE_2__*) ;int ArgCount; int ArgTypes; int ParserState; int Opcode; int OpInfo; TYPE_3__* Op; } ;
typedef TYPE_2__ ACPI_WALK_STATE ;
typedef scalar_t__ ACPI_STATUS ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;


 int ACPI_DB_PARSE ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,TYPE_2__*) ;
 scalar_t__ AE_CTRL_PENDING ;
 scalar_t__ AE_CTRL_TERMINATE ;
 scalar_t__ AE_OK ;
 scalar_t__ AcpiPsCompleteOp (TYPE_2__*,TYPE_3__**,scalar_t__) ;
 scalar_t__ AcpiPsCompleteThisOp (TYPE_2__*,TYPE_3__*) ;
 int AcpiPsGetOpcodeInfo (int ) ;
 scalar_t__ AcpiPsNextParseState (TYPE_2__*,TYPE_3__*,scalar_t__) ;
 int AcpiPsPopScope (int *,TYPE_3__**,int *,int *) ;
 int PsCompleteFinalOp ;
 int return_ACPI_STATUS (scalar_t__) ;
 scalar_t__ stub1 (TYPE_2__*) ;

ACPI_STATUS
AcpiPsCompleteFinalOp (
    ACPI_WALK_STATE *WalkState,
    ACPI_PARSE_OBJECT *Op,
    ACPI_STATUS Status)
{
    ACPI_STATUS Status2;


    ACPI_FUNCTION_TRACE_PTR (PsCompleteFinalOp, WalkState);
    ACPI_DEBUG_PRINT ((ACPI_DB_PARSE, "AML package complete at Op %p\n", Op));
    do
    {
        if (Op)
        {
            if (WalkState->AscendingCallback != ((void*)0))
            {
                WalkState->Op = Op;
                WalkState->OpInfo = AcpiPsGetOpcodeInfo (Op->Common.AmlOpcode);
                WalkState->Opcode = Op->Common.AmlOpcode;

                Status = WalkState->AscendingCallback (WalkState);
                Status = AcpiPsNextParseState (WalkState, Op, Status);
                if (Status == AE_CTRL_PENDING)
                {
                    Status = AcpiPsCompleteOp (WalkState, &Op, AE_OK);
                    if (ACPI_FAILURE (Status))
                    {
                        return_ACPI_STATUS (Status);
                    }
                }

                if (Status == AE_CTRL_TERMINATE)
                {
                    Status = AE_OK;


                    do
                    {
                        if (Op)
                        {
                            Status2 = AcpiPsCompleteThisOp (WalkState, Op);
                            if (ACPI_FAILURE (Status2))
                            {
                                return_ACPI_STATUS (Status2);
                            }
                        }

                        AcpiPsPopScope (&(WalkState->ParserState), &Op,
                            &WalkState->ArgTypes, &WalkState->ArgCount);

                    } while (Op);

                    return_ACPI_STATUS (Status);
                }

                else if (ACPI_FAILURE (Status))
                {


                    (void) AcpiPsCompleteThisOp (WalkState, Op);
                    return_ACPI_STATUS (Status);
                }
            }

            Status2 = AcpiPsCompleteThisOp (WalkState, Op);
            if (ACPI_FAILURE (Status2))
            {
                return_ACPI_STATUS (Status2);
            }
        }

        AcpiPsPopScope (&(WalkState->ParserState), &Op, &WalkState->ArgTypes,
            &WalkState->ArgCount);

    } while (Op);

    return_ACPI_STATUS (Status);
}
