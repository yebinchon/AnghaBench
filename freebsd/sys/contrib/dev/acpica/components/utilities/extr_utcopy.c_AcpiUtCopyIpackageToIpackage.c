
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int Elements; scalar_t__ Count; } ;
struct TYPE_9__ {int Flags; int Type; } ;
struct TYPE_11__ {TYPE_2__ Package; TYPE_1__ Common; } ;
typedef int ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef int ACPI_SIZE ;
typedef TYPE_3__ ACPI_OPERAND_OBJECT ;


 int ACPI_ALLOCATE_ZEROED (int) ;
 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int AE_INFO ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int AcpiUtCopyIelementToIelement ;
 int AcpiUtRemoveReference (TYPE_3__*) ;
 int AcpiUtWalkPackageTree (TYPE_3__*,TYPE_3__*,int ,int *) ;
 int UtCopyIpackageToIpackage ;
 int return_ACPI_STATUS (int ) ;

__attribute__((used)) static ACPI_STATUS
AcpiUtCopyIpackageToIpackage (
    ACPI_OPERAND_OBJECT *SourceObj,
    ACPI_OPERAND_OBJECT *DestObj,
    ACPI_WALK_STATE *WalkState)
{
    ACPI_STATUS Status = AE_OK;


    ACPI_FUNCTION_TRACE (UtCopyIpackageToIpackage);


    DestObj->Common.Type = SourceObj->Common.Type;
    DestObj->Common.Flags = SourceObj->Common.Flags;
    DestObj->Package.Count = SourceObj->Package.Count;




    DestObj->Package.Elements = ACPI_ALLOCATE_ZEROED (
        ((ACPI_SIZE) SourceObj->Package.Count + 1) *
        sizeof (void *));
    if (!DestObj->Package.Elements)
    {
        ACPI_ERROR ((AE_INFO, "Package allocation failure"));
        return_ACPI_STATUS (AE_NO_MEMORY);
    }





    Status = AcpiUtWalkPackageTree (SourceObj, DestObj,
        AcpiUtCopyIelementToIelement, WalkState);
    if (ACPI_FAILURE (Status))
    {


        AcpiUtRemoveReference (DestObj);
    }

    return_ACPI_STATUS (Status);
}
