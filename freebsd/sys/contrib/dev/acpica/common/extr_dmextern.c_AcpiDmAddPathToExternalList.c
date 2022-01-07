
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int UINT32 ;
typedef int UINT16 ;
typedef int ACPI_STATUS ;


 int ACPI_EXT_INTERNAL_PATH_ALLOCATED ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FREE (char*) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_UINT32_MAX ;
 char AML_ROOT_PREFIX ;
 int AcpiDmCreateNewExternal (char*,char*,int ,int ,int) ;
 int AcpiNsExternalizeName (int ,char*,int *,char**) ;
 int AcpiNsInternalizeName (char*,char**) ;
 int DmAddPathToExternalList ;
 int return_VOID ;

__attribute__((used)) static void
AcpiDmAddPathToExternalList (
    char *Path,
    UINT8 Type,
    UINT32 Value,
    UINT16 Flags)
{
    char *InternalPath;
    char *ExternalPath;
    ACPI_STATUS Status;


    ACPI_FUNCTION_TRACE (DmAddPathToExternalList);


    if (!Path)
    {
        return_VOID;
    }



    if ((*Path == AML_ROOT_PREFIX) && (Path[1]))
    {
        Path++;
    }



    Status = AcpiNsInternalizeName (Path, &InternalPath);
    if (ACPI_FAILURE (Status))
    {
        return_VOID;
    }

    Status = AcpiNsExternalizeName (ACPI_UINT32_MAX, InternalPath,
        ((void*)0), &ExternalPath);
    if (ACPI_FAILURE (Status))
    {
        ACPI_FREE (InternalPath);
        return_VOID;
    }



    Status = AcpiDmCreateNewExternal (ExternalPath, InternalPath,
        Type, Value, (Flags | ACPI_EXT_INTERNAL_PATH_ALLOCATED));
    if (ACPI_FAILURE (Status))
    {
        ACPI_FREE (ExternalPath);
        ACPI_FREE (InternalPath);
    }

    return_VOID;
}
