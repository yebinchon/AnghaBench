
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Identifier; struct TYPE_4__* Replacement; struct TYPE_4__* Next; int Persist; } ;
typedef TYPE_1__ PR_DEFINE_INFO ;


 int ACPI_FREE (TYPE_1__*) ;
 TYPE_1__* AslGbl_DefineList ;

void
PrTerminatePreprocessor (
    void)
{
    PR_DEFINE_INFO *DefineInfo;






    while ((AslGbl_DefineList) && (!AslGbl_DefineList->Persist))
    {
        DefineInfo = AslGbl_DefineList;
        AslGbl_DefineList = DefineInfo->Next;

        ACPI_FREE (DefineInfo->Replacement);
        ACPI_FREE (DefineInfo->Identifier);
        ACPI_FREE (DefineInfo);
    }
}
