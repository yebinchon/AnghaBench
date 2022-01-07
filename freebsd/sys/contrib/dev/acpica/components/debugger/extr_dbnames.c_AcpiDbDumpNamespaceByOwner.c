
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT32 ;
typedef scalar_t__ ACPI_OWNER_ID ;
typedef int ACPI_HANDLE ;


 int ACPI_DB_CONSOLE_OUTPUT ;
 int ACPI_DB_DUPLICATE_OUTPUT ;
 int ACPI_DB_REDIRECTABLE_OUTPUT ;
 int ACPI_DISPLAY_SUMMARY ;
 int ACPI_TYPE_ANY ;
 scalar_t__ ACPI_UINT32_MAX ;
 int AcpiDbSetOutputDestination (int ) ;
 int AcpiGbl_RootNode ;
 int AcpiNsDumpObjects (int ,int ,scalar_t__,scalar_t__,int ) ;
 int AcpiOsPrintf (char*,scalar_t__) ;
 scalar_t__ strtoul (char*,int *,int ) ;

void
AcpiDbDumpNamespaceByOwner (
    char *OwnerArg,
    char *DepthArg)
{
    ACPI_HANDLE SubtreeEntry = AcpiGbl_RootNode;
    UINT32 MaxDepth = ACPI_UINT32_MAX;
    ACPI_OWNER_ID OwnerId;


    OwnerId = (ACPI_OWNER_ID) strtoul (OwnerArg, ((void*)0), 0);



    if (DepthArg)
    {
        MaxDepth = strtoul (DepthArg, ((void*)0), 0);
    }

    AcpiDbSetOutputDestination (ACPI_DB_DUPLICATE_OUTPUT);
    AcpiOsPrintf ("ACPI Namespace by owner %X:\n", OwnerId);



    AcpiDbSetOutputDestination (ACPI_DB_REDIRECTABLE_OUTPUT);
    AcpiNsDumpObjects (ACPI_TYPE_ANY, ACPI_DISPLAY_SUMMARY, MaxDepth,
        OwnerId, SubtreeEntry);
    AcpiDbSetOutputDestination (ACPI_DB_CONSOLE_OUTPUT);
}
