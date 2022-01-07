
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_STATUS ;
typedef char ACPI_NAMESPACE_NODE ;


 int ACPI_CAST_PTR (int ,char*) ;
 int ACPI_HANDLE ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 char* AcpiDbConvertToNode (char*) ;
 char* AcpiFormatException (int ) ;
 int AcpiOsPrintf (char*,char*,char*) ;
 int AcpiUnloadParentTable (int ) ;

void
AcpiDbUnloadAcpiTable (
    char *ObjectName)
{
    ACPI_NAMESPACE_NODE *Node;
    ACPI_STATUS Status;




    Node = AcpiDbConvertToNode (ObjectName);
    if (!Node)
    {
        return;
    }

    Status = AcpiUnloadParentTable (ACPI_CAST_PTR (ACPI_HANDLE, Node));
    if (ACPI_SUCCESS (Status))
    {
        AcpiOsPrintf ("Parent of [%s] (%p) unloaded and uninstalled\n",
            ObjectName, Node);
    }
    else
    {
        AcpiOsPrintf ("%s, while unloading parent table of [%s]\n",
            AcpiFormatException (Status), ObjectName);
    }
}
