
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_10__ {int Value; } ;
struct TYPE_9__ {int Node; } ;
struct TYPE_12__ {TYPE_2__ Common; TYPE_1__ Scope; } ;
struct TYPE_11__ {TYPE_4__* ScopeInfo; scalar_t__ ScopeDepth; } ;
typedef TYPE_3__ ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef TYPE_4__ ACPI_GENERIC_STATE ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_DEBUG_PRINT_RAW (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_NAMESPACE_ROOT ;
 int AE_OK ;
 int AE_STACK_UNDERFLOW ;
 int AcpiUtDeleteGenericState (TYPE_4__*) ;
 int AcpiUtGetNodeName (int ) ;
 int AcpiUtGetTypeName (int ) ;
 TYPE_4__* AcpiUtPopGenericState (TYPE_4__**) ;
 int DsScopeStackPop ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiDsScopeStackPop (
    ACPI_WALK_STATE *WalkState)
{
    ACPI_GENERIC_STATE *ScopeInfo;
    ACPI_GENERIC_STATE *NewScopeInfo;


    ACPI_FUNCTION_TRACE (DsScopeStackPop);





    ScopeInfo = AcpiUtPopGenericState (&WalkState->ScopeInfo);
    if (!ScopeInfo)
    {
        return_ACPI_STATUS (AE_STACK_UNDERFLOW);
    }

    WalkState->ScopeDepth--;

    ACPI_DEBUG_PRINT ((ACPI_DB_EXEC,
        "[%.2d] Popped scope [%4.4s] (%s), New scope -> ",
        (UINT32) WalkState->ScopeDepth,
        AcpiUtGetNodeName (ScopeInfo->Scope.Node),
        AcpiUtGetTypeName (ScopeInfo->Common.Value)));

    NewScopeInfo = WalkState->ScopeInfo;
    if (NewScopeInfo)
    {
        ACPI_DEBUG_PRINT_RAW ((ACPI_DB_EXEC, "[%4.4s] (%s)\n",
            AcpiUtGetNodeName (NewScopeInfo->Scope.Node),
            AcpiUtGetTypeName (NewScopeInfo->Common.Value)));
    }
    else
    {
        ACPI_DEBUG_PRINT_RAW ((ACPI_DB_EXEC, "%s\n", ACPI_NAMESPACE_ROOT));
    }

    AcpiUtDeleteGenericState (ScopeInfo);
    return_ACPI_STATUS (AE_OK);
}
