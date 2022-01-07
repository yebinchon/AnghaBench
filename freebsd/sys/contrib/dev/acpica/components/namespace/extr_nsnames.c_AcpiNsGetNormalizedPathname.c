
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int BOOLEAN ;
typedef scalar_t__ ACPI_SIZE ;
typedef int ACPI_NAMESPACE_NODE ;


 char* ACPI_ALLOCATE_ZEROED (scalar_t__) ;
 int ACPI_DB_NAMES ;
 int ACPI_DEBUG_PRINT_RAW (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,int *) ;
 int ACPI_GET_FUNCTION_NAME ;
 int AE_INFO ;
 scalar_t__ AcpiNsBuildNormalizedPath (int *,char*,scalar_t__,int ) ;
 int NsGetNormalizedPathname ;
 int return_PTR (char*) ;

char *
AcpiNsGetNormalizedPathname (
    ACPI_NAMESPACE_NODE *Node,
    BOOLEAN NoTrailing)
{
    char *NameBuffer;
    ACPI_SIZE Size;


    ACPI_FUNCTION_TRACE_PTR (NsGetNormalizedPathname, Node);




    Size = AcpiNsBuildNormalizedPath (Node, ((void*)0), 0, NoTrailing);
    if (!Size)
    {
        return_PTR (((void*)0));
    }



    NameBuffer = ACPI_ALLOCATE_ZEROED (Size);
    if (!NameBuffer)
    {
        ACPI_ERROR ((AE_INFO,
            "Could not allocate %u bytes", (UINT32) Size));
        return_PTR (((void*)0));
    }



    (void) AcpiNsBuildNormalizedPath (Node, NameBuffer, Size, NoTrailing);

    ACPI_DEBUG_PRINT_RAW ((ACPI_DB_NAMES, "%s: Path \"%s\"\n",
        ACPI_GET_FUNCTION_NAME, NameBuffer));

    return_PTR (NameBuffer);
}
