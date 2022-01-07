
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* ExternalName; char* InternalName; int Length; } ;
typedef int ACPI_STATUS ;
typedef TYPE_1__ ACPI_NAMESTRING_INFO ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_OK ;
 int AcpiNsBuildInternalName (TYPE_1__*) ;
 int AcpiNsGetInternalNameLength (TYPE_1__*) ;
 char* UtLocalCacheCalloc (int ) ;

ACPI_STATUS
UtInternalizeName (
    char *ExternalName,
    char **ConvertedName)
{
    ACPI_NAMESTRING_INFO Info;
    ACPI_STATUS Status;


    if (!ExternalName)
    {
        return (AE_OK);
    }



    Info.ExternalName = ExternalName;
    AcpiNsGetInternalNameLength (&Info);



    Info.InternalName = UtLocalCacheCalloc (Info.Length);



    Status = AcpiNsBuildInternalName (&Info);
    if (ACPI_FAILURE (Status))
    {
        return (Status);
    }

    *ConvertedName = Info.InternalName;
    return (AE_OK);
}
