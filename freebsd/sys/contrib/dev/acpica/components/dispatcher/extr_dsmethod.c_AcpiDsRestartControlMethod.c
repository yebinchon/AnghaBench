
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * ReturnDesc; scalar_t__ ReturnUsed; int * ImplicitReturnObj; int Results; int MethodCallOp; int MethodNode; } ;
typedef TYPE_1__ ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef int ACPI_OPERAND_OBJECT ;


 int ACPI_DB_DISPATCH ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,TYPE_1__*) ;
 int AE_OK ;
 int AcpiDsDoImplicitReturn (int *,TYPE_1__*,int ) ;
 int AcpiDsResultPush (int *,TYPE_1__*) ;
 int AcpiUtGetNodeName (int ) ;
 int AcpiUtRemoveReference (int *) ;
 int DsRestartControlMethod ;
 int FALSE ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiDsRestartControlMethod (
    ACPI_WALK_STATE *WalkState,
    ACPI_OPERAND_OBJECT *ReturnDesc)
{
    ACPI_STATUS Status;
    int SameAsImplicitReturn;


    ACPI_FUNCTION_TRACE_PTR (DsRestartControlMethod, WalkState);


    ACPI_DEBUG_PRINT ((ACPI_DB_DISPATCH,
        "****Restart [%4.4s] Op %p ReturnValueFromCallee %p\n",
        AcpiUtGetNodeName (WalkState->MethodNode),
        WalkState->MethodCallOp, ReturnDesc));

    ACPI_DEBUG_PRINT ((ACPI_DB_DISPATCH,
        "    ReturnFromThisMethodUsed?=%X ResStack %p Walk %p\n",
        WalkState->ReturnUsed,
        WalkState->Results, WalkState));



    if (ReturnDesc)
    {


        SameAsImplicitReturn = (WalkState->ImplicitReturnObj == ReturnDesc);



        if (WalkState->ReturnUsed)
        {


            Status = AcpiDsResultPush (ReturnDesc, WalkState);
            if (ACPI_FAILURE (Status))
            {
                AcpiUtRemoveReference (ReturnDesc);
                return_ACPI_STATUS (Status);
            }





            WalkState->ReturnDesc = ReturnDesc;
        }
        else if (!AcpiDsDoImplicitReturn (ReturnDesc, WalkState, FALSE) ||
                 SameAsImplicitReturn)
        {





            AcpiUtRemoveReference (ReturnDesc);
        }
    }

    return_ACPI_STATUS (AE_OK);
}
