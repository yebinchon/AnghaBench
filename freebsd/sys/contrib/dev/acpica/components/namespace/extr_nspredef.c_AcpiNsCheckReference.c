
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int NodeFlags; int FullPathname; } ;
struct TYPE_7__ {scalar_t__ Class; } ;
struct TYPE_8__ {TYPE_1__ Reference; } ;
typedef int ACPI_STATUS ;
typedef TYPE_2__ ACPI_OPERAND_OBJECT ;
typedef TYPE_3__ ACPI_EVALUATE_INFO ;


 scalar_t__ ACPI_REFCLASS_NAME ;
 int ACPI_WARN_PREDEFINED (int ) ;
 int AE_AML_OPERAND_TYPE ;
 int AE_INFO ;
 int AE_OK ;
 int AcpiUtGetReferenceName (TYPE_2__*) ;

__attribute__((used)) static ACPI_STATUS
AcpiNsCheckReference (
    ACPI_EVALUATE_INFO *Info,
    ACPI_OPERAND_OBJECT *ReturnObject)
{






    if (ReturnObject->Reference.Class == ACPI_REFCLASS_NAME)
    {
        return (AE_OK);
    }

    ACPI_WARN_PREDEFINED ((AE_INFO, Info->FullPathname, Info->NodeFlags,
        "Return type mismatch - unexpected reference object type [%s] %2.2X",
        AcpiUtGetReferenceName (ReturnObject),
        ReturnObject->Reference.Class));

    return (AE_AML_OPERAND_TYPE);
}
