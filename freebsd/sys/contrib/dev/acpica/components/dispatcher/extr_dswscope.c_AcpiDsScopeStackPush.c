
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int UINT32 ;
typedef scalar_t__ UINT16 ;
struct TYPE_10__ {scalar_t__ Value; int DescriptorType; } ;
struct TYPE_9__ {int * Node; } ;
struct TYPE_12__ {TYPE_2__ Common; TYPE_1__ Scope; } ;
struct TYPE_11__ {TYPE_4__* ScopeInfo; scalar_t__ ScopeDepth; } ;
typedef TYPE_3__ ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef scalar_t__ ACPI_OBJECT_TYPE ;
typedef int ACPI_NAMESPACE_NODE ;
typedef TYPE_4__ ACPI_GENERIC_STATE ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_DEBUG_PRINT_RAW (int ) ;
 int ACPI_DESC_TYPE_STATE_WSCOPE ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_NAMESPACE_ROOT ;
 int ACPI_WARNING (int ) ;
 int AE_BAD_PARAMETER ;
 int AE_INFO ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 TYPE_4__* AcpiUtCreateGenericState () ;
 int AcpiUtGetNodeName (int *) ;
 int AcpiUtGetTypeName (scalar_t__) ;
 int AcpiUtPushGenericState (TYPE_4__**,TYPE_4__*) ;
 int AcpiUtValidObjectType (scalar_t__) ;
 int DsScopeStackPush ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiDsScopeStackPush (
    ACPI_NAMESPACE_NODE *Node,
    ACPI_OBJECT_TYPE Type,
    ACPI_WALK_STATE *WalkState)
{
    ACPI_GENERIC_STATE *ScopeInfo;
    ACPI_GENERIC_STATE *OldScopeInfo;


    ACPI_FUNCTION_TRACE (DsScopeStackPush);


    if (!Node)
    {


        ACPI_ERROR ((AE_INFO, "Null scope parameter"));
        return_ACPI_STATUS (AE_BAD_PARAMETER);
    }



    if (!AcpiUtValidObjectType (Type))
    {
        ACPI_WARNING ((AE_INFO,
            "Invalid object type: 0x%X", Type));
    }



    ScopeInfo = AcpiUtCreateGenericState ();
    if (!ScopeInfo)
    {
        return_ACPI_STATUS (AE_NO_MEMORY);
    }



    ScopeInfo->Common.DescriptorType = ACPI_DESC_TYPE_STATE_WSCOPE;
    ScopeInfo->Scope.Node = Node;
    ScopeInfo->Common.Value = (UINT16) Type;

    WalkState->ScopeDepth++;

    ACPI_DEBUG_PRINT ((ACPI_DB_EXEC,
        "[%.2d] Pushed scope ", (UINT32) WalkState->ScopeDepth));

    OldScopeInfo = WalkState->ScopeInfo;
    if (OldScopeInfo)
    {
        ACPI_DEBUG_PRINT_RAW ((ACPI_DB_EXEC,
            "[%4.4s] (%s)",
            AcpiUtGetNodeName (OldScopeInfo->Scope.Node),
            AcpiUtGetTypeName (OldScopeInfo->Common.Value)));
    }
    else
    {
        ACPI_DEBUG_PRINT_RAW ((ACPI_DB_EXEC, ACPI_NAMESPACE_ROOT));
    }

    ACPI_DEBUG_PRINT_RAW ((ACPI_DB_EXEC,
        ", New scope -> [%4.4s] (%s)\n",
        AcpiUtGetNodeName (ScopeInfo->Scope.Node),
        AcpiUtGetTypeName (ScopeInfo->Common.Value)));



    AcpiUtPushGenericState (&WalkState->ScopeInfo, ScopeInfo);
    return_ACPI_STATUS (AE_OK);
}
