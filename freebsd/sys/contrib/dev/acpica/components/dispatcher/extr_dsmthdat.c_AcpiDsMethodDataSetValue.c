
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT32 ;
struct TYPE_9__ {TYPE_2__* Object; } ;
struct TYPE_7__ {int Type; int ReferenceCount; } ;
struct TYPE_8__ {TYPE_1__ Common; } ;
typedef int ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef TYPE_2__ ACPI_OPERAND_OBJECT ;
typedef TYPE_3__ ACPI_NAMESPACE_NODE ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int AcpiDsMethodDataGetNode (int ,int ,int *,TYPE_3__**) ;
 int AcpiUtAddReference (TYPE_2__*) ;
 int AcpiUtGetTypeName (int ) ;
 int DsMethodDataSetValue ;
 int return_ACPI_STATUS (int ) ;

__attribute__((used)) static ACPI_STATUS
AcpiDsMethodDataSetValue (
    UINT8 Type,
    UINT32 Index,
    ACPI_OPERAND_OBJECT *Object,
    ACPI_WALK_STATE *WalkState)
{
    ACPI_STATUS Status;
    ACPI_NAMESPACE_NODE *Node;


    ACPI_FUNCTION_TRACE (DsMethodDataSetValue);


    ACPI_DEBUG_PRINT ((ACPI_DB_EXEC,
        "NewObj %p Type %2.2X, Refs=%u [%s]\n", Object,
        Type, Object->Common.ReferenceCount,
        AcpiUtGetTypeName (Object->Common.Type)));



    Status = AcpiDsMethodDataGetNode (Type, Index, WalkState, &Node);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }







    AcpiUtAddReference (Object);



    Node->Object = Object;
    return_ACPI_STATUS (Status);
}
