
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int ACPI_OPERAND_OBJECT ;


 int ACPI_DB_ALLOCATIONS ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_DESC_TYPE_OPERAND ;
 int ACPI_ERROR (char const*) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_SET_DESCRIPTOR_TYPE (int *,int ) ;
 int AcpiGbl_OperandCache ;
 int * AcpiOsAcquireObject (int ) ;
 int UtAllocateObjectDescDbg ;
 int return_PTR (int *) ;

void *
AcpiUtAllocateObjectDescDbg (
    const char *ModuleName,
    UINT32 LineNumber,
    UINT32 ComponentId)
{
    ACPI_OPERAND_OBJECT *Object;


    ACPI_FUNCTION_TRACE (UtAllocateObjectDescDbg);


    Object = AcpiOsAcquireObject (AcpiGbl_OperandCache);
    if (!Object)
    {
        ACPI_ERROR ((ModuleName, LineNumber,
            "Could not allocate an object descriptor"));

        return_PTR (((void*)0));
    }



    ACPI_SET_DESCRIPTOR_TYPE (Object, ACPI_DESC_TYPE_OPERAND);

    ACPI_DEBUG_PRINT ((ACPI_DB_ALLOCATIONS, "%p Size %X\n",
        Object, (UINT32) sizeof (ACPI_OPERAND_OBJECT)));

    return_PTR (Object);
}
