
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_STATUS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_ROOT_OBJECT ;
 int ACPI_TYPE_ANY ;
 int ACPI_UINT32_MAX ;
 int AE_OK ;
 int ASL_FILE_NAMESPACE_OUTPUT ;
 int AcpiNsWalkNamespace (int ,int ,int ,int ,int ,int *,int *,int *) ;
 int AslGbl_NsOutputFlag ;
 scalar_t__ AslGbl_NumNamespaceObjects ;
 int FALSE ;
 int FlPrintFile (int ,char*) ;
 int NsDoOneNamespaceObject ;
 int NsDoOnePathname ;

ACPI_STATUS
NsDisplayNamespace (
    void)
{
    ACPI_STATUS Status;


    if (!AslGbl_NsOutputFlag)
    {
        return (AE_OK);
    }

    AslGbl_NumNamespaceObjects = 0;



    FlPrintFile (ASL_FILE_NAMESPACE_OUTPUT, "Contents of ACPI Namespace\n\n");
    FlPrintFile (ASL_FILE_NAMESPACE_OUTPUT, "Count  Depth    Name - Type\n\n");



    Status = AcpiNsWalkNamespace (ACPI_TYPE_ANY, ACPI_ROOT_OBJECT,
        ACPI_UINT32_MAX, FALSE, NsDoOneNamespaceObject, ((void*)0),
        ((void*)0), ((void*)0));
    if (ACPI_FAILURE (Status))
    {
        return (Status);
    }



    FlPrintFile (ASL_FILE_NAMESPACE_OUTPUT, "\nNamespace pathnames\n\n");

    Status = AcpiNsWalkNamespace (ACPI_TYPE_ANY, ACPI_ROOT_OBJECT,
        ACPI_UINT32_MAX, FALSE, NsDoOnePathname, ((void*)0),
        ((void*)0), ((void*)0));

    return (Status);
}
