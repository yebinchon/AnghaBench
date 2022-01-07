
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ Signature; } ;
typedef TYPE_1__ ACPI_DMTABLE_DATA ;


 scalar_t__ ACPI_COMPARE_NAMESEG (char*,scalar_t__) ;
 TYPE_1__* AcpiDmTableData ;

const ACPI_DMTABLE_DATA *
AcpiDmGetTableData (
    char *Signature)
{
    const ACPI_DMTABLE_DATA *Info;


    for (Info = AcpiDmTableData; Info->Signature; Info++)
    {
        if (ACPI_COMPARE_NAMESEG (Signature, Info->Signature))
        {
            return (Info);
        }
    }

    return (((void*)0));
}
