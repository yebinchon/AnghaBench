
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ Signature; } ;
typedef TYPE_1__ AH_TABLE ;


 scalar_t__ ACPI_COMPARE_NAMESEG (char*,scalar_t__) ;
 TYPE_1__* AcpiGbl_SupportedTables ;

const AH_TABLE *
AcpiAhGetTableInfo (
    char *Signature)
{
    const AH_TABLE *Info;


    for (Info = AcpiGbl_SupportedTables; Info->Signature; Info++)
    {
        if (ACPI_COMPARE_NAMESEG (Signature, Info->Signature))
        {
            return (Info);
        }
    }

    return (((void*)0));
}
