
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_3__ {int Ascii; } ;
struct TYPE_4__ {TYPE_1__ Name; scalar_t__ Parent; } ;
typedef TYPE_2__ ACPI_NAMESPACE_NODE ;
typedef scalar_t__ ACPI_HANDLE ;


 int ACPI_DB_CONSOLE_OUTPUT ;
 int ACPI_DB_DUPLICATE_OUTPUT ;
 int ACPI_DB_REDIRECTABLE_OUTPUT ;
 int ACPI_DISPLAY_SUMMARY ;
 int ACPI_NAMESPACE_ROOT ;
 int ACPI_OWNER_ID_MAX ;
 int ACPI_TYPE_ANY ;
 int ACPI_UINT32_MAX ;
 scalar_t__ AcpiDbConvertToNode (char*) ;
 int AcpiDbSetOutputDestination (int ) ;
 scalar_t__ AcpiGbl_RootNode ;
 int AcpiNsDumpObjects (int ,int ,int ,int ,scalar_t__) ;
 int AcpiOsPrintf (char*,int ,...) ;
 int strtoul (char*,int *,int ) ;

void
AcpiDbDumpNamespace (
    char *StartArg,
    char *DepthArg)
{
    ACPI_HANDLE SubtreeEntry = AcpiGbl_RootNode;
    UINT32 MaxDepth = ACPI_UINT32_MAX;




    if (StartArg)
    {
        SubtreeEntry = AcpiDbConvertToNode (StartArg);
        if (!SubtreeEntry)
        {
            return;
        }



        if (DepthArg)
        {
            MaxDepth = strtoul (DepthArg, ((void*)0), 0);
        }
    }

    AcpiDbSetOutputDestination (ACPI_DB_DUPLICATE_OUTPUT);

    if (((ACPI_NAMESPACE_NODE *) SubtreeEntry)->Parent)
    {
        AcpiOsPrintf ("ACPI Namespace (from %4.4s (%p) subtree):\n",
            ((ACPI_NAMESPACE_NODE *) SubtreeEntry)->Name.Ascii, SubtreeEntry);
    }
    else
    {
        AcpiOsPrintf ("ACPI Namespace (from %s):\n",
            ACPI_NAMESPACE_ROOT);
    }



    AcpiDbSetOutputDestination (ACPI_DB_REDIRECTABLE_OUTPUT);
    AcpiNsDumpObjects (ACPI_TYPE_ANY, ACPI_DISPLAY_SUMMARY, MaxDepth,
        ACPI_OWNER_ID_MAX, SubtreeEntry);
    AcpiDbSetOutputDestination (ACPI_DB_CONSOLE_OUTPUT);
}
