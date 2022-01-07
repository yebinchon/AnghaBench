
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOLEAN ;
typedef scalar_t__ ACPI_STATUS ;


 int ACPI_ROOT_OBJECT ;
 int ACPI_TYPE_ANY ;
 int ACPI_UINT32_MAX ;
 scalar_t__ AE_CTRL_TRUE ;
 scalar_t__ AcpiNsWalkNamespace (int ,int ,int ,int ,int ,int *,char*,int *) ;
 int FALSE ;
 int TRUE ;
 int XfCompareOneNamespaceObject ;

__attribute__((used)) static BOOLEAN
XfObjectExists (
    char *Name)
{
    ACPI_STATUS Status;




    Status = AcpiNsWalkNamespace (ACPI_TYPE_ANY, ACPI_ROOT_OBJECT,
        ACPI_UINT32_MAX, FALSE, XfCompareOneNamespaceObject, ((void*)0),
        Name, ((void*)0));
    if (Status == AE_CTRL_TRUE)
    {


        return (TRUE);
    }

    return (FALSE);
}
