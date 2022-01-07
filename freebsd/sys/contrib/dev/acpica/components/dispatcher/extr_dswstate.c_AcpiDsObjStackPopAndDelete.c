
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_3__ {scalar_t__ NumOperands; int ** Operands; } ;
typedef size_t INT32 ;
typedef TYPE_1__ ACPI_WALK_STATE ;
typedef int ACPI_OPERAND_OBJECT ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 int AcpiUtRemoveReference (int *) ;
 int DsObjStackPopAndDelete ;

void
AcpiDsObjStackPopAndDelete (
    UINT32 PopCount,
    ACPI_WALK_STATE *WalkState)
{
    INT32 i;
    ACPI_OPERAND_OBJECT *ObjDesc;


    ACPI_FUNCTION_NAME (DsObjStackPopAndDelete);


    if (PopCount == 0)
    {
        return;
    }

    for (i = (INT32) PopCount - 1; i >= 0; i--)
    {
        if (WalkState->NumOperands == 0)
        {
            return;
        }



        WalkState->NumOperands--;
        ObjDesc = WalkState->Operands [i];
        if (ObjDesc)
        {
            AcpiUtRemoveReference (WalkState->Operands [i]);
            WalkState->Operands [i] = ((void*)0);
        }
    }

    ACPI_DEBUG_PRINT ((ACPI_DB_EXEC, "Count=%X State=%p #Ops=%X\n",
        PopCount, WalkState, WalkState->NumOperands));
}
