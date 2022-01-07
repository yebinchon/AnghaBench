
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
typedef int UINT16 ;
struct TYPE_7__ {scalar_t__ Type; int ReferenceCount; } ;
struct TYPE_6__ {scalar_t__ Count; TYPE_3__** Elements; } ;
struct TYPE_8__ {TYPE_2__ Common; TYPE_1__ Package; } ;
typedef int ACPI_STATUS ;
typedef TYPE_3__ ACPI_OPERAND_OBJECT ;
typedef int ACPI_EVALUATE_INFO ;


 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_TYPE_PACKAGE ;
 scalar_t__ ACPI_TYPE_STRING ;
 int AE_OK ;
 int AcpiNsRepair_HID (int *,TYPE_3__**) ;

__attribute__((used)) static ACPI_STATUS
AcpiNsRepair_CID (
    ACPI_EVALUATE_INFO *Info,
    ACPI_OPERAND_OBJECT **ReturnObjectPtr)
{
    ACPI_STATUS Status;
    ACPI_OPERAND_OBJECT *ReturnObject = *ReturnObjectPtr;
    ACPI_OPERAND_OBJECT **ElementPtr;
    ACPI_OPERAND_OBJECT *OriginalElement;
    UINT16 OriginalRefCount;
    UINT32 i;




    if (ReturnObject->Common.Type == ACPI_TYPE_STRING)
    {
        Status = AcpiNsRepair_HID (Info, ReturnObjectPtr);
        return (Status);
    }



    if (ReturnObject->Common.Type != ACPI_TYPE_PACKAGE)
    {
        return (AE_OK);
    }



    ElementPtr = ReturnObject->Package.Elements;
    for (i = 0; i < ReturnObject->Package.Count; i++)
    {
        OriginalElement = *ElementPtr;
        OriginalRefCount = OriginalElement->Common.ReferenceCount;

        Status = AcpiNsRepair_HID (Info, ElementPtr);
        if (ACPI_FAILURE (Status))
        {
            return (Status);
        }

        if (OriginalElement != *ElementPtr)
        {


            (*ElementPtr)->Common.ReferenceCount =
                OriginalRefCount;
        }

        ElementPtr++;
    }

    return (AE_OK);
}
