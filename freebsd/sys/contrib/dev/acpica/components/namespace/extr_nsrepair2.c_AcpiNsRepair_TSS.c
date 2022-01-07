
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Node; } ;
typedef int ACPI_STATUS ;
typedef int ACPI_OPERAND_OBJECT ;
typedef int ACPI_NAMESPACE_NODE ;
typedef TYPE_1__ ACPI_EVALUATE_INFO ;


 int ACPI_NS_NO_UPSEARCH ;
 int ACPI_SORT_DESCENDING ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int AE_OK ;
 int AcpiNsCheckSortedList (TYPE_1__*,int *,int ,int,int,int ,char*) ;
 int AcpiNsGetNode (int ,char*,int ,int **) ;

__attribute__((used)) static ACPI_STATUS
AcpiNsRepair_TSS (
    ACPI_EVALUATE_INFO *Info,
    ACPI_OPERAND_OBJECT **ReturnObjectPtr)
{
    ACPI_OPERAND_OBJECT *ReturnObject = *ReturnObjectPtr;
    ACPI_STATUS Status;
    ACPI_NAMESPACE_NODE *Node;
    Status = AcpiNsGetNode (Info->Node, "^_PSS",
        ACPI_NS_NO_UPSEARCH, &Node);
    if (ACPI_SUCCESS (Status))
    {
        return (AE_OK);
    }

    Status = AcpiNsCheckSortedList (Info, ReturnObject, 0, 5, 1,
        ACPI_SORT_DESCENDING, "PowerDissipation");

    return (Status);
}
