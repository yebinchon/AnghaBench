
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_SIZE ;
typedef char ACPI_NAMESPACE_NODE ;


 scalar_t__ ACPI_DESC_TYPE_NAMED ;
 scalar_t__ ACPI_GET_DESCRIPTOR_TYPE (char*) ;
 char* ACPI_TO_POINTER (int ) ;
 char* AcpiDbLocalNsLookup (char*) ;
 char* AcpiGbl_RootNode ;
 int AcpiOsPrintf (char*,char*,...) ;
 int AcpiOsReadable (char*,int) ;
 int AcpiUtGetDescriptorName (char*) ;
 int strtoul (char*,int *,int) ;

ACPI_NAMESPACE_NODE *
AcpiDbConvertToNode (
    char *InString)
{
    ACPI_NAMESPACE_NODE *Node;
    ACPI_SIZE Address;


    if ((*InString >= 0x30) && (*InString <= 0x39))
    {


        Address = strtoul (InString, ((void*)0), 16);
        Node = ACPI_TO_POINTER (Address);
        if (!AcpiOsReadable (Node, sizeof (ACPI_NAMESPACE_NODE)))
        {
            AcpiOsPrintf ("Address %p is invalid", Node);
            return (((void*)0));
        }



        if (ACPI_GET_DESCRIPTOR_TYPE (Node) != ACPI_DESC_TYPE_NAMED)
        {
            AcpiOsPrintf ("Address %p is not a valid namespace node [%s]\n",
                Node, AcpiUtGetDescriptorName (Node));
            return (((void*)0));
        }
    }
    else
    {




        Node = AcpiDbLocalNsLookup (InString);
        if (!Node)
        {
            AcpiOsPrintf (
                "Could not find [%s] in namespace, defaulting to root node\n",
                InString);
            Node = AcpiGbl_RootNode;
        }
    }

    return (Node);
}
