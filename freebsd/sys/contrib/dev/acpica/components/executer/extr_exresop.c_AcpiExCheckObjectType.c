
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Flags; } ;
struct TYPE_4__ {TYPE_1__ Common; } ;
typedef int ACPI_STATUS ;
typedef TYPE_2__ ACPI_OPERAND_OBJECT ;
typedef scalar_t__ ACPI_OBJECT_TYPE ;


 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_ENTRY () ;
 scalar_t__ ACPI_TYPE_ANY ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 scalar_t__ ACPI_TYPE_LOCAL_REFERENCE ;
 int AE_AML_OPERAND_TYPE ;
 int AE_INFO ;
 int AE_OK ;
 int AOPOBJ_AML_CONSTANT ;
 int AcpiUtGetTypeName (scalar_t__) ;

__attribute__((used)) static ACPI_STATUS
AcpiExCheckObjectType (
    ACPI_OBJECT_TYPE TypeNeeded,
    ACPI_OBJECT_TYPE ThisType,
    void *Object)
{
    ACPI_FUNCTION_ENTRY ();


    if (TypeNeeded == ACPI_TYPE_ANY)
    {


        return (AE_OK);
    }

    if (TypeNeeded == ACPI_TYPE_LOCAL_REFERENCE)
    {





        if ((ThisType == ACPI_TYPE_INTEGER) &&
            (((ACPI_OPERAND_OBJECT *) Object)->Common.Flags &
                AOPOBJ_AML_CONSTANT))
        {
            return (AE_OK);
        }
    }

    if (TypeNeeded != ThisType)
    {
        ACPI_ERROR ((AE_INFO,
            "Needed type [%s], found [%s] %p",
            AcpiUtGetTypeName (TypeNeeded),
            AcpiUtGetTypeName (ThisType), Object));

        return (AE_AML_OPERAND_TYPE);
    }

    return (AE_OK);
}
