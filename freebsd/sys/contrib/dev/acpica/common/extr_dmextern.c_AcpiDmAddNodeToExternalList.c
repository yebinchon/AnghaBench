
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int UINT32 ;
typedef int UINT16 ;
typedef int ACPI_STATUS ;
typedef int ACPI_NAMESPACE_NODE ;


 int ACPI_EXT_INTERNAL_PATH_ALLOCATED ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FREE (char*) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int AcpiDmCreateNewExternal (char*,char*,int ,int ,int) ;
 int AcpiDmGetExternalAndInternalPath (int *,char**,char**) ;
 int AcpiDmRemoveRootPrefix (char**) ;
 int DmAddNodeToExternalList ;
 int return_VOID ;

void
AcpiDmAddNodeToExternalList (
    ACPI_NAMESPACE_NODE *Node,
    UINT8 Type,
    UINT32 Value,
    UINT16 Flags)
{
    char *ExternalPath;
    char *InternalPath;
    ACPI_STATUS Status;


    ACPI_FUNCTION_TRACE (DmAddNodeToExternalList);



    Status = AcpiDmGetExternalAndInternalPath (Node, &ExternalPath, &InternalPath);
    if (ACPI_FAILURE (Status))
    {
        return_VOID;
    }



    Status = AcpiDmRemoveRootPrefix (&ExternalPath);
    if (ACPI_FAILURE (Status))
    {
        ACPI_FREE (ExternalPath);
        ACPI_FREE (InternalPath);
        return_VOID;
    }



    Status = AcpiDmCreateNewExternal (ExternalPath, InternalPath, Type,
        Value, (Flags | ACPI_EXT_INTERNAL_PATH_ALLOCATED));
    if (ACPI_FAILURE (Status))
    {
        ACPI_FREE (ExternalPath);
        ACPI_FREE (InternalPath);
    }

    return_VOID;
}
