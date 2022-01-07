
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ UINT8 ;
typedef int UINT32 ;
struct TYPE_10__ {TYPE_3__* Next; } ;
struct TYPE_12__ {TYPE_1__ Common; } ;
struct TYPE_11__ {int NumOperands; scalar_t__ OperandIndex; int ** Operands; } ;
typedef TYPE_2__ ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;


 int ACPI_DB_DISPATCH ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,TYPE_3__*) ;
 int ACPI_OBJ_NUM_OPERANDS ;
 int AE_BAD_DATA ;
 int AE_INFO ;
 int AE_OK ;
 int AcpiDsCreateOperand (TYPE_2__*,TYPE_3__*,int) ;
 int AcpiDsObjStackPopAndDelete (int,TYPE_2__*) ;
 int DsCreateOperands ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiDsCreateOperands (
    ACPI_WALK_STATE *WalkState,
    ACPI_PARSE_OBJECT *FirstArg)
{
    ACPI_STATUS Status = AE_OK;
    ACPI_PARSE_OBJECT *Arg;
    ACPI_PARSE_OBJECT *Arguments[ACPI_OBJ_NUM_OPERANDS];
    UINT32 ArgCount = 0;
    UINT32 Index = WalkState->NumOperands;
    UINT32 i;


    ACPI_FUNCTION_TRACE_PTR (DsCreateOperands, FirstArg);




    Arg = FirstArg;
    while (Arg)
    {
        if (Index >= ACPI_OBJ_NUM_OPERANDS)
        {
            return_ACPI_STATUS (AE_BAD_DATA);
        }

        Arguments[Index] = Arg;
        WalkState->Operands [Index] = ((void*)0);



        Arg = Arg->Common.Next;
        ArgCount++;
        Index++;
    }

    ACPI_DEBUG_PRINT ((ACPI_DB_DISPATCH,
        "NumOperands %d, ArgCount %d, Index %d\n",
        WalkState->NumOperands, ArgCount, Index));



    Index--;
    for (i = 0; i < ArgCount; i++)
    {
        Arg = Arguments[Index];
        WalkState->OperandIndex = (UINT8) Index;

        Status = AcpiDsCreateOperand (WalkState, Arg, Index);
        if (ACPI_FAILURE (Status))
        {
            goto Cleanup;
        }

        ACPI_DEBUG_PRINT ((ACPI_DB_DISPATCH,
            "Created Arg #%u (%p) %u args total\n",
            Index, Arg, ArgCount));
        Index--;
    }

    return_ACPI_STATUS (Status);


Cleanup:





    AcpiDsObjStackPopAndDelete (ArgCount, WalkState);

    ACPI_EXCEPTION ((AE_INFO, Status, "While creating Arg %u", Index));
    return_ACPI_STATUS (Status);
}
