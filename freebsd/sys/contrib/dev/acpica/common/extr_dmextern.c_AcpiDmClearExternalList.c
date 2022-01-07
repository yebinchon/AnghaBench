
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Path; struct TYPE_4__* Next; } ;
typedef TYPE_1__ ACPI_EXTERNAL_LIST ;


 int ACPI_FREE (TYPE_1__*) ;
 TYPE_1__* AcpiGbl_ExternalList ;

void
AcpiDmClearExternalList (
    void)
{
    ACPI_EXTERNAL_LIST *NextExternal;


    while (AcpiGbl_ExternalList)
    {
        NextExternal = AcpiGbl_ExternalList->Next;
        ACPI_FREE (AcpiGbl_ExternalList->Path);
        ACPI_FREE (AcpiGbl_ExternalList);
        AcpiGbl_ExternalList = NextExternal;
    }
}
