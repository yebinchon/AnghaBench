
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_SIZE ;
typedef int ACPI_NAMESPACE_NODE ;


 scalar_t__ ACPI_DESC_TYPE_NAMED ;
 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_GET_DESCRIPTOR_TYPE (int *) ;
 int AE_INFO ;
 int AcpiNsBuildNormalizedPath (int *,int *,int ,int ) ;
 int FALSE ;

ACPI_SIZE
AcpiNsGetPathnameLength (
    ACPI_NAMESPACE_NODE *Node)
{
    ACPI_SIZE Size;




    if (ACPI_GET_DESCRIPTOR_TYPE (Node) != ACPI_DESC_TYPE_NAMED)
    {
        ACPI_ERROR ((AE_INFO,
            "Invalid/cached reference target node: %p, descriptor type %d",
            Node, ACPI_GET_DESCRIPTOR_TYPE (Node)));
        return (0);
    }

    Size = AcpiNsBuildNormalizedPath (Node, ((void*)0), 0, FALSE);
    return (Size);
}
