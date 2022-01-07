
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_STATUS ;
typedef int ACPI_NAMESPACE_NODE ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FREE (char*) ;
 int AE_BAD_PARAMETER ;
 int AE_BAD_PATHNAME ;
 int AE_OK ;
 char* AcpiNsGetExternalPathname (int *) ;
 int AcpiNsInternalizeName (char*,char**) ;

__attribute__((used)) static ACPI_STATUS
AcpiDmGetExternalAndInternalPath (
    ACPI_NAMESPACE_NODE *Node,
    char **ExternalPath,
    char **InternalPath)
{
    ACPI_STATUS Status;


    if (!Node)
    {
        return (AE_BAD_PARAMETER);
    }



    *ExternalPath = AcpiNsGetExternalPathname (Node);
    if (!*ExternalPath)
    {
        return (AE_BAD_PATHNAME);
    }

    Status = AcpiNsInternalizeName (*ExternalPath, InternalPath);
    if (ACPI_FAILURE (Status))
    {
        ACPI_FREE (*ExternalPath);
        return (Status);
    }

    return (AE_OK);
}
