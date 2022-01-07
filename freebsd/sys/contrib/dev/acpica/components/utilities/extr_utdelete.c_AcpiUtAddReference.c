
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ReferenceCount; } ;
struct TYPE_7__ {TYPE_1__ Common; } ;
typedef TYPE_2__ ACPI_OPERAND_OBJECT ;


 int ACPI_DB_ALLOCATIONS ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 int AcpiUtUpdateObjectReference (TYPE_2__*,int ) ;
 int AcpiUtValidInternalObject (TYPE_2__*) ;
 int REF_INCREMENT ;
 int UtAddReference ;

void
AcpiUtAddReference (
    ACPI_OPERAND_OBJECT *Object)
{

    ACPI_FUNCTION_NAME (UtAddReference);




    if (!AcpiUtValidInternalObject (Object))
    {
        return;
    }

    ACPI_DEBUG_PRINT ((ACPI_DB_ALLOCATIONS,
        "Obj %p Current Refs=%X [To Be Incremented]\n",
        Object, Object->Common.ReferenceCount));



    (void) AcpiUtUpdateObjectReference (Object, REF_INCREMENT);
    return;
}
