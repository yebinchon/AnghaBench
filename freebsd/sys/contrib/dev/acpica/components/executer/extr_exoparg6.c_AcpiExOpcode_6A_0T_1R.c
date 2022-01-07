
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef size_t UINT64 ;
typedef int UINT32 ;
struct TYPE_13__ {size_t Value; } ;
struct TYPE_12__ {size_t Count; TYPE_4__** Elements; } ;
struct TYPE_15__ {TYPE_2__ Integer; TYPE_1__ Package; } ;
struct TYPE_14__ {int Opcode; TYPE_4__* ResultObj; TYPE_4__** Operands; } ;
typedef TYPE_3__ ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef TYPE_4__ ACPI_OPERAND_OBJECT ;


 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FORMAT_UINT64 (size_t) ;
 int ACPI_FUNCTION_TRACE_STR (int ,int ) ;
 int ACPI_UINT64_MAX ;
 int AE_AML_BAD_OPCODE ;
 int AE_AML_OPERAND_VALUE ;
 int AE_AML_PACKAGE_LIMIT ;
 int AE_INFO ;
 int AE_NO_MEMORY ;
 int AE_OK ;


 int AcpiExDoMatch (int ,TYPE_4__*,TYPE_4__*) ;
 int AcpiExLoadTableOp (TYPE_3__*,TYPE_4__**) ;
 int AcpiPsGetOpcodeName (int) ;
 TYPE_4__* AcpiUtCreateIntegerObject (int ) ;
 int AcpiUtRemoveReference (TYPE_4__*) ;
 int ExOpcode_6A_0T_1R ;
 size_t MAX_MATCH_OPERATOR ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiExOpcode_6A_0T_1R (
    ACPI_WALK_STATE *WalkState)
{
    ACPI_OPERAND_OBJECT **Operand = &WalkState->Operands[0];
    ACPI_OPERAND_OBJECT *ReturnDesc = ((void*)0);
    ACPI_STATUS Status = AE_OK;
    UINT64 Index;
    ACPI_OPERAND_OBJECT *ThisElement;


    ACPI_FUNCTION_TRACE_STR (ExOpcode_6A_0T_1R,
        AcpiPsGetOpcodeName (WalkState->Opcode));


    switch (WalkState->Opcode)
    {
    case 128:







        if ((Operand[1]->Integer.Value > MAX_MATCH_OPERATOR) ||
            (Operand[3]->Integer.Value > MAX_MATCH_OPERATOR))
        {
            ACPI_ERROR ((AE_INFO, "Match operator out of range"));
            Status = AE_AML_OPERAND_VALUE;
            goto Cleanup;
        }



        Index = Operand[5]->Integer.Value;
        if (Index >= Operand[0]->Package.Count)
        {
            ACPI_ERROR ((AE_INFO,
                "Index (0x%8.8X%8.8X) beyond package end (0x%X)",
                ACPI_FORMAT_UINT64 (Index), Operand[0]->Package.Count));
            Status = AE_AML_PACKAGE_LIMIT;
            goto Cleanup;
        }




        ReturnDesc = AcpiUtCreateIntegerObject (ACPI_UINT64_MAX);
        if (!ReturnDesc)
        {
            Status = AE_NO_MEMORY;
            goto Cleanup;

        }
        for ( ; Index < Operand[0]->Package.Count; Index++)
        {


            ThisElement = Operand[0]->Package.Elements[Index];



            if (!ThisElement)
            {
                continue;
            }






            if (!AcpiExDoMatch ((UINT32) Operand[1]->Integer.Value,
                    ThisElement, Operand[2]))
            {
                continue;
            }

            if (!AcpiExDoMatch ((UINT32) Operand[3]->Integer.Value,
                    ThisElement, Operand[4]))
            {
                continue;
            }



            ReturnDesc->Integer.Value = Index;
            break;
        }
        break;

    case 129:

        Status = AcpiExLoadTableOp (WalkState, &ReturnDesc);
        break;

    default:

        ACPI_ERROR ((AE_INFO, "Unknown AML opcode 0x%X",
            WalkState->Opcode));

        Status = AE_AML_BAD_OPCODE;
        goto Cleanup;
    }


Cleanup:



    if (ACPI_FAILURE (Status))
    {
        AcpiUtRemoveReference (ReturnDesc);
    }



    else
    {
        WalkState->ResultObj = ReturnDesc;
    }

    return_ACPI_STATUS (Status);
}
