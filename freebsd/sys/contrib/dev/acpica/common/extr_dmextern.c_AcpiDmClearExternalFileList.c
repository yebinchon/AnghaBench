
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Path; struct TYPE_4__* Next; } ;
typedef TYPE_1__ ACPI_EXTERNAL_FILE ;


 int ACPI_FREE (TYPE_1__*) ;
 TYPE_1__* AcpiGbl_ExternalFileList ;

void
AcpiDmClearExternalFileList (
    void)
{
    ACPI_EXTERNAL_FILE *NextExternal;


    while (AcpiGbl_ExternalFileList)
    {
        NextExternal = AcpiGbl_ExternalFileList->Next;
        ACPI_FREE (AcpiGbl_ExternalFileList->Path);
        ACPI_FREE (AcpiGbl_ExternalFileList);
        AcpiGbl_ExternalFileList = NextExternal;
    }
}
