
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_7__ {int Ascii; } ;
struct TYPE_9__ {TYPE_1__ Name; } ;
struct TYPE_8__ {scalar_t__ UnexpectedBtypes; scalar_t__ PackageIndex; int Name; scalar_t__ ObjectConverter; } ;
typedef TYPE_2__ ACPI_SIMPLE_REPAIR_INFO ;
typedef TYPE_3__ ACPI_NAMESPACE_NODE ;


 scalar_t__ ACPI_ALL_PACKAGE_ELEMENTS ;
 scalar_t__ ACPI_COMPARE_NAMESEG (int ,int ) ;
 TYPE_2__* AcpiObjectRepairInfo ;

__attribute__((used)) static const ACPI_SIMPLE_REPAIR_INFO *
AcpiNsMatchSimpleRepair (
    ACPI_NAMESPACE_NODE *Node,
    UINT32 ReturnBtype,
    UINT32 PackageIndex)
{
    const ACPI_SIMPLE_REPAIR_INFO *ThisName;




    ThisName = AcpiObjectRepairInfo;
    while (ThisName->ObjectConverter)
    {
        if (ACPI_COMPARE_NAMESEG (Node->Name.Ascii, ThisName->Name))
        {


            if ((ReturnBtype & ThisName->UnexpectedBtypes) &&
                (ThisName->PackageIndex == ACPI_ALL_PACKAGE_ELEMENTS ||
                 PackageIndex == ThisName->PackageIndex))
            {
                return (ThisName);
            }

            return (((void*)0));
        }

        ThisName++;
    }

    return (((void*)0));
}
