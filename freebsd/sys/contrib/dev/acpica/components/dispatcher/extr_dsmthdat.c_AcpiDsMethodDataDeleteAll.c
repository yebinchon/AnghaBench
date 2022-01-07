
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_5__ {scalar_t__ Object; } ;
struct TYPE_4__ {TYPE_2__* Arguments; TYPE_2__* LocalVariables; } ;
typedef TYPE_1__ ACPI_WALK_STATE ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 size_t ACPI_METHOD_NUM_ARGS ;
 size_t ACPI_METHOD_NUM_LOCALS ;
 int AcpiNsDetachObject (TYPE_2__*) ;
 int DsMethodDataDeleteAll ;
 int return_VOID ;

void
AcpiDsMethodDataDeleteAll (
    ACPI_WALK_STATE *WalkState)
{
    UINT32 Index;


    ACPI_FUNCTION_TRACE (DsMethodDataDeleteAll);




    for (Index = 0; Index < ACPI_METHOD_NUM_LOCALS; Index++)
    {
        if (WalkState->LocalVariables[Index].Object)
        {
            ACPI_DEBUG_PRINT ((ACPI_DB_EXEC, "Deleting Local%u=%p\n",
                Index, WalkState->LocalVariables[Index].Object));



            AcpiNsDetachObject (&WalkState->LocalVariables[Index]);
        }
    }



    for (Index = 0; Index < ACPI_METHOD_NUM_ARGS; Index++)
    {
        if (WalkState->Arguments[Index].Object)
        {
            ACPI_DEBUG_PRINT ((ACPI_DB_EXEC, "Deleting Arg%u=%p\n",
                Index, WalkState->Arguments[Index].Object));



            AcpiNsDetachObject (&WalkState->Arguments[Index]);
        }
    }

    return_VOID;
}
