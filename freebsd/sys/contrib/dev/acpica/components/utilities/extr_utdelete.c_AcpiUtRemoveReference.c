
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ReferenceCount; } ;
struct TYPE_8__ {TYPE_1__ Common; } ;
typedef TYPE_2__ ACPI_OPERAND_OBJECT ;


 int ACPI_DB_ALLOCATIONS ;
 int ACPI_DEBUG_PRINT_RAW (int ) ;
 scalar_t__ ACPI_DESC_TYPE_NAMED ;
 int ACPI_FUNCTION_NAME (int ) ;
 scalar_t__ ACPI_GET_DESCRIPTOR_TYPE (TYPE_2__*) ;
 int ACPI_GET_FUNCTION_NAME ;
 int AcpiUtUpdateObjectReference (TYPE_2__*,int ) ;
 int AcpiUtValidInternalObject (TYPE_2__*) ;
 int REF_DECREMENT ;
 int UtRemoveReference ;

void
AcpiUtRemoveReference (
    ACPI_OPERAND_OBJECT *Object)
{

    ACPI_FUNCTION_NAME (UtRemoveReference);






    if (!Object ||
        (ACPI_GET_DESCRIPTOR_TYPE (Object) == ACPI_DESC_TYPE_NAMED))

    {
        return;
    }



    if (!AcpiUtValidInternalObject (Object))
    {
        return;
    }

    ACPI_DEBUG_PRINT_RAW ((ACPI_DB_ALLOCATIONS,
        "%s: Obj %p Current Refs=%X [To Be Decremented]\n",
        ACPI_GET_FUNCTION_NAME, Object, Object->Common.ReferenceCount));






    (void) AcpiUtUpdateObjectReference (Object, REF_DECREMENT);
    return;
}
