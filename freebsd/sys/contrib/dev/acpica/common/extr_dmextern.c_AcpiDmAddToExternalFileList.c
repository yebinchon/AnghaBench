
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* Path; struct TYPE_4__* Next; } ;
typedef int ACPI_STATUS ;
typedef TYPE_1__ ACPI_EXTERNAL_FILE ;


 char* ACPI_ALLOCATE (scalar_t__) ;
 TYPE_1__* ACPI_ALLOCATE_ZEROED (int) ;
 int ACPI_FREE (char*) ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 TYPE_1__* AcpiGbl_ExternalFileList ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

ACPI_STATUS
AcpiDmAddToExternalFileList (
    char *Pathname)
{
    ACPI_EXTERNAL_FILE *ExternalFile;
    char *LocalPathname;


    if (!Pathname)
    {
        return (AE_OK);
    }

    LocalPathname = ACPI_ALLOCATE (strlen (Pathname) + 1);
    if (!LocalPathname)
    {
        return (AE_NO_MEMORY);
    }

    ExternalFile = ACPI_ALLOCATE_ZEROED (sizeof (ACPI_EXTERNAL_FILE));
    if (!ExternalFile)
    {
        ACPI_FREE (LocalPathname);
        return (AE_NO_MEMORY);
    }



    strcpy (LocalPathname, Pathname);
    ExternalFile->Path = LocalPathname;

    if (AcpiGbl_ExternalFileList)
    {
        ExternalFile->Next = AcpiGbl_ExternalFileList;
    }

    AcpiGbl_ExternalFileList = ExternalFile;
    return (AE_OK);
}
