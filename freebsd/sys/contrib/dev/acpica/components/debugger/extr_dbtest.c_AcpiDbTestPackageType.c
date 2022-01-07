
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int Count; } ;
struct TYPE_6__ {TYPE_1__ Package; } ;
typedef int ACPI_STATUS ;
typedef TYPE_2__ ACPI_OBJECT ;
typedef int ACPI_NAMESPACE_NODE ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_TYPE_PACKAGE ;
 int AcpiDbReadFromObject (int *,int ,TYPE_2__**) ;
 int AcpiOsFree (TYPE_2__*) ;
 int AcpiOsPrintf (char*,int ) ;

__attribute__((used)) static ACPI_STATUS
AcpiDbTestPackageType (
    ACPI_NAMESPACE_NODE *Node)
{
    ACPI_OBJECT *Temp1 = ((void*)0);
    ACPI_STATUS Status;




    Status = AcpiDbReadFromObject (Node, ACPI_TYPE_PACKAGE, &Temp1);
    if (ACPI_FAILURE (Status))
    {
        return (Status);
    }

    AcpiOsPrintf (" %.2X Elements", Temp1->Package.Count);
    AcpiOsFree (Temp1);
    return (Status);
}
