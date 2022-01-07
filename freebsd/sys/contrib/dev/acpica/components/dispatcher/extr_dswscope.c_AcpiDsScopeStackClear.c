
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int Value; } ;
struct TYPE_7__ {TYPE_4__* Next; } ;
struct TYPE_10__ {TYPE_2__ Common; TYPE_1__ Scope; } ;
struct TYPE_9__ {TYPE_4__* ScopeInfo; } ;
typedef TYPE_3__ ACPI_WALK_STATE ;
typedef TYPE_4__ ACPI_GENERIC_STATE ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 int AcpiUtDeleteGenericState (TYPE_4__*) ;
 int AcpiUtGetTypeName (int ) ;
 int DsScopeStackClear ;

void
AcpiDsScopeStackClear (
    ACPI_WALK_STATE *WalkState)
{
    ACPI_GENERIC_STATE *ScopeInfo;

    ACPI_FUNCTION_NAME (DsScopeStackClear);


    while (WalkState->ScopeInfo)
    {


        ScopeInfo = WalkState->ScopeInfo;
        WalkState->ScopeInfo = ScopeInfo->Scope.Next;

        ACPI_DEBUG_PRINT ((ACPI_DB_EXEC,
            "Popped object type (%s)\n",
            AcpiUtGetTypeName (ScopeInfo->Common.Value)));

        AcpiUtDeleteGenericState (ScopeInfo);
    }
}
