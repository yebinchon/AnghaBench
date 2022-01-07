
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACPI_DB_CONSOLE_OUTPUT ;
 int ACPI_DB_DUPLICATE_OUTPUT ;
 int ACPI_DB_REDIRECTABLE_OUTPUT ;
 int ACPI_DISPLAY_SUMMARY ;
 int ACPI_OWNER_ID_MAX ;
 int ACPI_TYPE_ANY ;
 int ACPI_UINT32_MAX ;
 int AcpiDbSetOutputDestination (int ) ;
 int AcpiGbl_RootNode ;
 int AcpiNsDumpObjectPaths (int ,int ,int ,int ,int ) ;
 int AcpiOsPrintf (char*) ;

void
AcpiDbDumpNamespacePaths (
    void)
{

    AcpiDbSetOutputDestination (ACPI_DB_DUPLICATE_OUTPUT);
    AcpiOsPrintf ("ACPI Namespace (from root):\n");



    AcpiDbSetOutputDestination (ACPI_DB_REDIRECTABLE_OUTPUT);
    AcpiNsDumpObjectPaths (ACPI_TYPE_ANY, ACPI_DISPLAY_SUMMARY,
        ACPI_UINT32_MAX, ACPI_OWNER_ID_MAX, AcpiGbl_RootNode);

    AcpiDbSetOutputDestination (ACPI_DB_CONSOLE_OUTPUT);
}
