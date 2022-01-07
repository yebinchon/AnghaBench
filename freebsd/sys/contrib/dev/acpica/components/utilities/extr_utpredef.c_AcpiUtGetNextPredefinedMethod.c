
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ExpectedBtypes; } ;
struct TYPE_6__ {TYPE_1__ Info; } ;
typedef TYPE_2__ ACPI_PREDEFINED_INFO ;


 int ACPI_RTYPE_ALL ;
 int ACPI_RTYPE_PACKAGE ;

const ACPI_PREDEFINED_INFO *
AcpiUtGetNextPredefinedMethod (
    const ACPI_PREDEFINED_INFO *ThisName)
{





    if ((ThisName->Info.ExpectedBtypes & ACPI_RTYPE_PACKAGE) &&
        (ThisName->Info.ExpectedBtypes != ACPI_RTYPE_ALL))
    {
        ThisName++;
    }

    ThisName++;
    return (ThisName);
}
