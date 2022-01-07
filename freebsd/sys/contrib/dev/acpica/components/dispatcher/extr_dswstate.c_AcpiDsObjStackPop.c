
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_3__ {size_t NumOperands; int ** Operands; } ;
typedef TYPE_1__ ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 int AE_INFO ;
 int AE_OK ;
 int AE_STACK_UNDERFLOW ;
 int DsObjStackPop ;

ACPI_STATUS
AcpiDsObjStackPop (
    UINT32 PopCount,
    ACPI_WALK_STATE *WalkState)
{
    UINT32 i;


    ACPI_FUNCTION_NAME (DsObjStackPop);


    for (i = 0; i < PopCount; i++)
    {


        if (WalkState->NumOperands == 0)
        {
            ACPI_ERROR ((AE_INFO,
                "Object stack underflow! Count=%X State=%p #Ops=%u",
                PopCount, WalkState, WalkState->NumOperands));
            return (AE_STACK_UNDERFLOW);
        }



        WalkState->NumOperands--;
        WalkState->Operands [WalkState->NumOperands] = ((void*)0);
    }

    ACPI_DEBUG_PRINT ((ACPI_DB_EXEC, "Count=%X State=%p #Ops=%u\n",
        PopCount, WalkState, WalkState->NumOperands));

    return (AE_OK);
}
