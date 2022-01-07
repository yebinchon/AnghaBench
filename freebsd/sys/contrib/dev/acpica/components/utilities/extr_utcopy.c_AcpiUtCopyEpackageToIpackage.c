
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_10__ {size_t Count; int * Elements; } ;
struct TYPE_13__ {TYPE_1__ Package; } ;
struct TYPE_11__ {size_t Count; int Flags; TYPE_3__** Elements; } ;
struct TYPE_12__ {TYPE_2__ Package; } ;
typedef int ACPI_STATUS ;
typedef TYPE_3__ ACPI_OPERAND_OBJECT ;
typedef TYPE_4__ ACPI_OBJECT ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int AOPOBJ_DATA_VALID ;
 int AcpiUtCopyEobjectToIobject (int *,TYPE_3__**) ;
 TYPE_3__* AcpiUtCreatePackageObject (size_t) ;
 int AcpiUtRemoveReference (TYPE_3__*) ;
 int UtCopyEpackageToIpackage ;
 int return_ACPI_STATUS (int ) ;

__attribute__((used)) static ACPI_STATUS
AcpiUtCopyEpackageToIpackage (
    ACPI_OBJECT *ExternalObject,
    ACPI_OPERAND_OBJECT **InternalObject)
{
    ACPI_STATUS Status = AE_OK;
    ACPI_OPERAND_OBJECT *PackageObject;
    ACPI_OPERAND_OBJECT **PackageElements;
    UINT32 i;


    ACPI_FUNCTION_TRACE (UtCopyEpackageToIpackage);




    PackageObject = AcpiUtCreatePackageObject (
        ExternalObject->Package.Count);
    if (!PackageObject)
    {
        return_ACPI_STATUS (AE_NO_MEMORY);
    }

    PackageElements = PackageObject->Package.Elements;





    for (i = 0; i < ExternalObject->Package.Count; i++)
    {
        Status = AcpiUtCopyEobjectToIobject (
            &ExternalObject->Package.Elements[i],
            &PackageElements[i]);
        if (ACPI_FAILURE (Status))
        {


            PackageObject->Package.Count = i;
            PackageElements[i] = ((void*)0);
            AcpiUtRemoveReference (PackageObject);
            return_ACPI_STATUS (Status);
        }
    }



    PackageObject->Package.Flags |= AOPOBJ_DATA_VALID;

    *InternalObject = PackageObject;
    return_ACPI_STATUS (Status);
}
