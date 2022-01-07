
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_6__ {scalar_t__* Name; } ;
struct TYPE_7__ {TYPE_1__ Info; } ;
typedef TYPE_2__ ACPI_PREDEFINED_INFO ;
typedef int ACPI_PARSE_OBJECT ;


 scalar_t__ ACPI_COMPARE_NAMESEG (char*,scalar_t__*) ;
 scalar_t__ ACPI_NOT_RESERVED_NAME ;
 scalar_t__ ACPI_PREDEFINED_NAME ;
 int ASL_ERROR ;
 int ASL_MSG_COMPILER_INTERNAL ;
 TYPE_2__* AcpiGbl_PredefinedMethods ;
 TYPE_2__* AcpiGbl_ResourceNames ;
 TYPE_2__* AcpiGbl_ScopeNames ;
 scalar_t__ ApCheckForSpecialName (int *,char*) ;
 int AslError (int ,int ,int *,char*) ;

UINT32
ApCheckForPredefinedName (
    ACPI_PARSE_OBJECT *Op,
    char *Name)
{
    UINT32 i;
    const ACPI_PREDEFINED_INFO *ThisName;


    if (Name[0] == 0)
    {
        AslError (ASL_ERROR, ASL_MSG_COMPILER_INTERNAL, Op,
            "zero length name found");
    }



    if (Name[0] != '_')
    {
        return (ACPI_NOT_RESERVED_NAME);
    }



    ThisName = AcpiGbl_PredefinedMethods;
    for (i = 0; ThisName->Info.Name[0]; i++)
    {
        if (ACPI_COMPARE_NAMESEG (Name, ThisName->Info.Name))
        {

            return (i);
        }

        ThisName++;
    }



    ThisName = AcpiGbl_ResourceNames;
    while (ThisName->Info.Name[0])
    {
        if (ACPI_COMPARE_NAMESEG (Name, ThisName->Info.Name))
        {
            return (ACPI_PREDEFINED_NAME);
        }

        ThisName++;
    }

    ThisName = AcpiGbl_ScopeNames;
    while (ThisName->Info.Name[0])
    {
        if (ACPI_COMPARE_NAMESEG (Name, ThisName->Info.Name))
        {
            return (ACPI_PREDEFINED_NAME);
        }

        ThisName++;
    }



    return (ApCheckForSpecialName (Op, Name));
}
