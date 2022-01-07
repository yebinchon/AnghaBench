
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ Type; } ;
struct TYPE_12__ {TYPE_1__ Common; } ;
typedef int ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef TYPE_2__ ACPI_OPERAND_OBJECT ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_TYPE_PACKAGE ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int AcpiUtCopyIpackageToIpackage (TYPE_2__*,TYPE_2__*,int *) ;
 int AcpiUtCopySimpleObject (TYPE_2__*,TYPE_2__*) ;
 TYPE_2__* AcpiUtCreateInternalObject (scalar_t__) ;
 int AcpiUtRemoveReference (TYPE_2__*) ;
 int UtCopyIobjectToIobject ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiUtCopyIobjectToIobject (
    ACPI_OPERAND_OBJECT *SourceDesc,
    ACPI_OPERAND_OBJECT **DestDesc,
    ACPI_WALK_STATE *WalkState)
{
    ACPI_STATUS Status = AE_OK;


    ACPI_FUNCTION_TRACE (UtCopyIobjectToIobject);




    *DestDesc = AcpiUtCreateInternalObject (SourceDesc->Common.Type);
    if (!*DestDesc)
    {
        return_ACPI_STATUS (AE_NO_MEMORY);
    }



    if (SourceDesc->Common.Type == ACPI_TYPE_PACKAGE)
    {
        Status = AcpiUtCopyIpackageToIpackage (
            SourceDesc, *DestDesc, WalkState);
    }
    else
    {
        Status = AcpiUtCopySimpleObject (SourceDesc, *DestDesc);
    }



    if (ACPI_FAILURE (Status))
    {
        AcpiUtRemoveReference (*DestDesc);
    }

    return_ACPI_STATUS (Status);
}
