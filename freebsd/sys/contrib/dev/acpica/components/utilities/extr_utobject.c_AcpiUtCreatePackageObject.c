
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_8__ {TYPE_2__** Elements; scalar_t__ Count; } ;
struct TYPE_9__ {TYPE_1__ Package; } ;
typedef int ACPI_SIZE ;
typedef TYPE_2__ ACPI_OPERAND_OBJECT ;


 TYPE_2__** ACPI_ALLOCATE_ZEROED (int) ;
 int ACPI_FREE (TYPE_2__*) ;
 int ACPI_FUNCTION_TRACE_U32 (int ,scalar_t__) ;
 int ACPI_TYPE_PACKAGE ;
 TYPE_2__* AcpiUtCreateInternalObject (int ) ;
 int UtCreatePackageObject ;
 int return_PTR (TYPE_2__*) ;

ACPI_OPERAND_OBJECT *
AcpiUtCreatePackageObject (
    UINT32 Count)
{
    ACPI_OPERAND_OBJECT *PackageDesc;
    ACPI_OPERAND_OBJECT **PackageElements;


    ACPI_FUNCTION_TRACE_U32 (UtCreatePackageObject, Count);




    PackageDesc = AcpiUtCreateInternalObject (ACPI_TYPE_PACKAGE);
    if (!PackageDesc)
    {
        return_PTR (((void*)0));
    }





    PackageElements = ACPI_ALLOCATE_ZEROED (
        ((ACPI_SIZE) Count + 1) * sizeof (void *));
    if (!PackageElements)
    {
        ACPI_FREE (PackageDesc);
        return_PTR (((void*)0));
    }

    PackageDesc->Package.Count = Count;
    PackageDesc->Package.Elements = PackageElements;
    return_PTR (PackageDesc);
}
