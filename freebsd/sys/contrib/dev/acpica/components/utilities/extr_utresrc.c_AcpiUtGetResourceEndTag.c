
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_4__ {int Length; int * Pointer; } ;
struct TYPE_5__ {TYPE_1__ Buffer; } ;
typedef int ACPI_STATUS ;
typedef TYPE_2__ ACPI_OPERAND_OBJECT ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int AE_OK ;
 int AcpiUtWalkAmlResources (int *,int *,int ,int *,void**) ;
 int UtGetResourceEndTag ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiUtGetResourceEndTag (
    ACPI_OPERAND_OBJECT *ObjDesc,
    UINT8 **EndTag)
{
    ACPI_STATUS Status;


    ACPI_FUNCTION_TRACE (UtGetResourceEndTag);




    if (!ObjDesc->Buffer.Length)
    {
        *EndTag = ObjDesc->Buffer.Pointer;
        return_ACPI_STATUS (AE_OK);
    }



    Status = AcpiUtWalkAmlResources (((void*)0), ObjDesc->Buffer.Pointer,
        ObjDesc->Buffer.Length, ((void*)0), (void **) EndTag);

    return_ACPI_STATUS (Status);
}
