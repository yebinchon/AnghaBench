
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Flags; char* Name; struct TYPE_3__* Next; } ;
typedef int ACPI_STATUS ;
typedef TYPE_1__ ACPI_INTERFACE_INFO ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_OSI_INVALID ;
 int ACPI_WAIT_FOREVER ;
 int AcpiFormatException (int ) ;
 int AcpiGbl_OsiMutex ;
 TYPE_1__* AcpiGbl_SupportedInterfaces ;
 int AcpiInstallInterface (char*) ;
 int AcpiOsAcquireMutex (int ,int ) ;
 int AcpiOsPrintf (char*,...) ;
 int AcpiOsReleaseMutex (int ) ;
 int AcpiRemoveInterface (char*) ;
 int AcpiUtStrupr (char*) ;
 char* strstr (char*,char*) ;

void
AcpiDbDisplayInterfaces (
    char *ActionArg,
    char *InterfaceNameArg)
{
    ACPI_INTERFACE_INFO *NextInterface;
    char *SubString;
    ACPI_STATUS Status;




    if (!ActionArg)
    {
        (void) AcpiOsAcquireMutex (AcpiGbl_OsiMutex, ACPI_WAIT_FOREVER);

        NextInterface = AcpiGbl_SupportedInterfaces;
        while (NextInterface)
        {
            if (!(NextInterface->Flags & ACPI_OSI_INVALID))
            {
                AcpiOsPrintf ("%s\n", NextInterface->Name);
            }

            NextInterface = NextInterface->Next;
        }

        AcpiOsReleaseMutex (AcpiGbl_OsiMutex);
        return;
    }



    if (!InterfaceNameArg)
    {
        AcpiOsPrintf ("Missing Interface Name argument\n");
        return;
    }



    AcpiUtStrupr (ActionArg);



    SubString = strstr ("INSTALL", ActionArg);
    if (SubString)
    {
        Status = AcpiInstallInterface (InterfaceNameArg);
        if (ACPI_FAILURE (Status))
        {
            AcpiOsPrintf ("%s, while installing \"%s\"\n",
                AcpiFormatException (Status), InterfaceNameArg);
        }
        return;
    }



    SubString = strstr ("REMOVE", ActionArg);
    if (SubString)
    {
        Status = AcpiRemoveInterface (InterfaceNameArg);
        if (ACPI_FAILURE (Status))
        {
            AcpiOsPrintf ("%s, while removing \"%s\"\n",
                AcpiFormatException (Status), InterfaceNameArg);
        }
        return;
    }



    AcpiOsPrintf ("Invalid action argument: %s\n", ActionArg);
    return;
}
