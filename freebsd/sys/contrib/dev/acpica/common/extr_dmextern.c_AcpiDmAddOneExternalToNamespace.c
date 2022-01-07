
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int UINT32 ;
typedef int ACPI_STATUS ;
typedef int ACPI_NAMESPACE_NODE ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AcpiDmCreateSubobjectForExternal (int ,int **,int ) ;
 int AcpiDmResolveExternal (char*,int ,int **) ;

void
AcpiDmAddOneExternalToNamespace (
    char *Path,
    UINT8 Type,
    UINT32 ParamCount)
{
    ACPI_STATUS Status;
    ACPI_NAMESPACE_NODE *Node;


    Status = AcpiDmResolveExternal (Path, Type, &Node);

    if (ACPI_FAILURE (Status))
    {
        return;
    }

    AcpiDmCreateSubobjectForExternal (Type, &Node, ParamCount);

}
