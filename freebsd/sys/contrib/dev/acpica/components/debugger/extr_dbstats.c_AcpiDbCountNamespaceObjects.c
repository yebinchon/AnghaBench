
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;


 int ACPI_ROOT_OBJECT ;
 int ACPI_TYPE_ANY ;
 int ACPI_TYPE_NS_NODE_MAX ;
 int ACPI_UINT32_MAX ;
 int AcpiDbClassifyOneObject ;
 scalar_t__* AcpiGbl_NodeTypeCount ;
 scalar_t__ AcpiGbl_NumNodes ;
 scalar_t__ AcpiGbl_NumObjects ;
 scalar_t__* AcpiGbl_ObjTypeCount ;
 scalar_t__ AcpiGbl_ObjTypeCountMisc ;
 int AcpiNsWalkNamespace (int ,int ,int ,int ,int ,int *,int *,int *) ;
 int FALSE ;

__attribute__((used)) static void
AcpiDbCountNamespaceObjects (
    void)
{
    UINT32 i;


    AcpiGbl_NumNodes = 0;
    AcpiGbl_NumObjects = 0;

    AcpiGbl_ObjTypeCountMisc = 0;
    for (i = 0; i < (ACPI_TYPE_NS_NODE_MAX -1); i++)
    {
        AcpiGbl_ObjTypeCount [i] = 0;
        AcpiGbl_NodeTypeCount [i] = 0;
    }

    (void) AcpiNsWalkNamespace (ACPI_TYPE_ANY, ACPI_ROOT_OBJECT,
        ACPI_UINT32_MAX, FALSE, AcpiDbClassifyOneObject, ((void*)0), ((void*)0), ((void*)0));
}
