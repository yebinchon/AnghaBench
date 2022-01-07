
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ Name; } ;
typedef TYPE_1__ AH_PREDEFINED_NAME ;


 scalar_t__ ACPI_COMPARE_NAMESEG (char*,scalar_t__) ;
 TYPE_1__* AslPredefinedInfo ;

const AH_PREDEFINED_NAME *
AcpiAhMatchPredefinedName (
    char *Nameseg)
{
    const AH_PREDEFINED_NAME *Info;




    if (*Nameseg != '_')
    {
        return (((void*)0));
    }



    for (Info = AslPredefinedInfo; Info->Name; Info++)
    {
        if (ACPI_COMPARE_NAMESEG (Nameseg, Info->Name))
        {
            return (Info);
        }
    }

    return (((void*)0));
}
