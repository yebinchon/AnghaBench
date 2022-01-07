
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_3__ {char* ExternalName; int NumSegments; char const* NextExternalChar; scalar_t__ NumCarats; scalar_t__ Length; int FullyQualified; } ;
typedef TYPE_1__ ACPI_NAMESTRING_INFO ;


 int ACPI_FUNCTION_ENTRY () ;
 scalar_t__ ACPI_IS_PARENT_PREFIX (char const) ;
 scalar_t__ ACPI_IS_PATH_SEPARATOR (char const) ;
 scalar_t__ ACPI_IS_ROOT_PREFIX (char const) ;
 int ACPI_NAMESEG_SIZE ;
 int FALSE ;
 int TRUE ;

void
AcpiNsGetInternalNameLength (
    ACPI_NAMESTRING_INFO *Info)
{
    const char *NextExternalChar;
    UINT32 i;


    ACPI_FUNCTION_ENTRY ();


    NextExternalChar = Info->ExternalName;
    Info->NumCarats = 0;
    Info->NumSegments = 0;
    Info->FullyQualified = FALSE;
    if (ACPI_IS_ROOT_PREFIX (*NextExternalChar))
    {
        Info->FullyQualified = TRUE;
        NextExternalChar++;



        while (ACPI_IS_ROOT_PREFIX (*NextExternalChar))
        {
            NextExternalChar++;
        }
    }
    else
    {


        while (ACPI_IS_PARENT_PREFIX (*NextExternalChar))
        {
            Info->NumCarats++;
            NextExternalChar++;
        }
    }






    if (*NextExternalChar)
    {
        Info->NumSegments = 1;
        for (i = 0; NextExternalChar[i]; i++)
        {
            if (ACPI_IS_PATH_SEPARATOR (NextExternalChar[i]))
            {
                Info->NumSegments++;
            }
        }
    }

    Info->Length = (ACPI_NAMESEG_SIZE * Info->NumSegments) +
        4 + Info->NumCarats;

    Info->NextExternalChar = NextExternalChar;
}
