
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_17__ {scalar_t__ ReturnBtype; int NodeFlags; int FullPathname; } ;
struct TYPE_14__ {int Ascii; } ;
struct TYPE_15__ {int Type; TYPE_1__ Name; } ;
struct TYPE_16__ {TYPE_2__ Node; } ;
typedef int ACPI_STATUS ;
typedef TYPE_3__ ACPI_OPERAND_OBJECT ;
typedef TYPE_4__ ACPI_EVALUATE_INFO ;


 scalar_t__ ACPI_DESC_TYPE_NAMED ;
 scalar_t__ ACPI_GET_DESCRIPTOR_TYPE (TYPE_3__*) ;
 scalar_t__ ACPI_NOT_PACKAGE_ELEMENT ;
 scalar_t__ ACPI_RTYPE_ANY ;
 scalar_t__ ACPI_RTYPE_REFERENCE ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int ACPI_WARN_PREDEFINED (int ) ;
 int AE_AML_OPERAND_TYPE ;
 int AE_INFO ;
 int AE_OK ;
 int AcpiNsCheckReference (TYPE_4__*,TYPE_3__*) ;
 scalar_t__ AcpiNsGetBitmappedType (TYPE_3__*) ;
 int AcpiNsSimpleRepair (TYPE_4__*,scalar_t__,scalar_t__,TYPE_3__**) ;
 int AcpiUtGetExpectedReturnTypes (char*,scalar_t__) ;
 int AcpiUtGetObjectTypeName (TYPE_3__*) ;
 int AcpiUtGetTypeName (int ) ;

ACPI_STATUS
AcpiNsCheckObjectType (
    ACPI_EVALUATE_INFO *Info,
    ACPI_OPERAND_OBJECT **ReturnObjectPtr,
    UINT32 ExpectedBtypes,
    UINT32 PackageIndex)
{
    ACPI_OPERAND_OBJECT *ReturnObject = *ReturnObjectPtr;
    ACPI_STATUS Status = AE_OK;
    char TypeBuffer[96];




    if (ReturnObject &&
        ACPI_GET_DESCRIPTOR_TYPE (ReturnObject) == ACPI_DESC_TYPE_NAMED)
    {
        ACPI_WARN_PREDEFINED ((AE_INFO, Info->FullPathname, Info->NodeFlags,
            "Invalid return type - Found a Namespace node [%4.4s] type %s",
            ReturnObject->Node.Name.Ascii,
            AcpiUtGetTypeName (ReturnObject->Node.Type)));
        return (AE_AML_OPERAND_TYPE);
    }
    Info->ReturnBtype = AcpiNsGetBitmappedType (ReturnObject);
    if (Info->ReturnBtype == ACPI_RTYPE_ANY)
    {

        goto TypeErrorExit;
    }



    if ((Info->ReturnBtype & ExpectedBtypes) == ACPI_RTYPE_REFERENCE)
    {
        Status = AcpiNsCheckReference (Info, ReturnObject);
        return (Status);
    }



    Status = AcpiNsSimpleRepair (Info, ExpectedBtypes,
        PackageIndex, ReturnObjectPtr);
    if (ACPI_SUCCESS (Status))
    {
        return (AE_OK);
    }


TypeErrorExit:



    AcpiUtGetExpectedReturnTypes (TypeBuffer, ExpectedBtypes);

    if (!ReturnObject)
    {
        ACPI_WARN_PREDEFINED ((AE_INFO, Info->FullPathname, Info->NodeFlags,
            "Expected return object of type %s",
            TypeBuffer));
    }
    else if (PackageIndex == ACPI_NOT_PACKAGE_ELEMENT)
    {
        ACPI_WARN_PREDEFINED ((AE_INFO, Info->FullPathname, Info->NodeFlags,
            "Return type mismatch - found %s, expected %s",
            AcpiUtGetObjectTypeName (ReturnObject), TypeBuffer));
    }
    else
    {
        ACPI_WARN_PREDEFINED ((AE_INFO, Info->FullPathname, Info->NodeFlags,
            "Return Package type mismatch at index %u - "
            "found %s, expected %s", PackageIndex,
            AcpiUtGetObjectTypeName (ReturnObject), TypeBuffer));
    }

    return (AE_AML_OPERAND_TYPE);
}
