
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__* Name; } ;
struct TYPE_8__ {TYPE_1__ Info; } ;
typedef TYPE_2__ ACPI_PREDEFINED_INFO ;


 scalar_t__ ACPI_COMPARE_NAMESEG (char*,scalar_t__*) ;
 TYPE_2__* AcpiGbl_PredefinedMethods ;
 TYPE_2__* AcpiUtGetNextPredefinedMethod (TYPE_2__ const*) ;

const ACPI_PREDEFINED_INFO *
AcpiUtMatchPredefinedMethod (
    char *Name)
{
    const ACPI_PREDEFINED_INFO *ThisName;




    if (Name[0] != '_')
    {
        return (((void*)0));
    }



    ThisName = AcpiGbl_PredefinedMethods;
    while (ThisName->Info.Name[0])
    {
        if (ACPI_COMPARE_NAMESEG (Name, ThisName->Info.Name))
        {
            return (ThisName);
        }

        ThisName = AcpiUtGetNextPredefinedMethod (ThisName);
    }

    return (((void*)0));
}
