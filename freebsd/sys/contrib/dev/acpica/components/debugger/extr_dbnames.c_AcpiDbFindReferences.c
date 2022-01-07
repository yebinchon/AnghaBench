
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_SIZE ;
typedef int ACPI_OPERAND_OBJECT ;


 int ACPI_ROOT_OBJECT ;
 int * ACPI_TO_POINTER (int ) ;
 int ACPI_TYPE_ANY ;
 int ACPI_UINT32_MAX ;
 int AcpiDbWalkForReferences ;
 int AcpiWalkNamespace (int ,int ,int ,int ,int *,void*,int *) ;
 int strtoul (char*,int *,int) ;

void
AcpiDbFindReferences (
    char *ObjectArg)
{
    ACPI_OPERAND_OBJECT *ObjDesc;
    ACPI_SIZE Address;




    Address = strtoul (ObjectArg, ((void*)0), 16);
    ObjDesc = ACPI_TO_POINTER (Address);



    (void) AcpiWalkNamespace (ACPI_TYPE_ANY, ACPI_ROOT_OBJECT,
        ACPI_UINT32_MAX, AcpiDbWalkForReferences, ((void*)0),
        (void *) ObjDesc, ((void*)0));
}
