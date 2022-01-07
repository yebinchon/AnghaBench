
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* Path; int Flags; struct TYPE_3__* Next; } ;
typedef TYPE_1__ ACPI_EXTERNAL_LIST ;


 int ACPI_EXT_CONFLICTING_DECLARATION ;
 char AML_ROOT_PREFIX ;
 int AcpiDmConflictingDeclaration (char*) ;
 TYPE_1__* AcpiGbl_ExternalList ;
 int AcpiOsPrintf (char*,int ) ;
 int ExternalConflictMessage ;
 int strcmp (char*,char*) ;

__attribute__((used)) static void
AcpiDmCheckForExternalConflict (
    char *Path)
{
    ACPI_EXTERNAL_LIST *ExternalList = AcpiGbl_ExternalList;
    char *ListItemPath;
    char *InputPath;


    if (!Path)
    {
        return;
    }



    InputPath = Path;
    if ((*InputPath == AML_ROOT_PREFIX) && InputPath[1])
    {
        InputPath++;
    }

    while (ExternalList)
    {
        ListItemPath = ExternalList->Path;
        if (ListItemPath)
        {


            if ((*ListItemPath == AML_ROOT_PREFIX) &&
                ListItemPath[1])
            {
                ListItemPath++;
            }

            if (!strcmp (ListItemPath, InputPath) &&
                (ExternalList->Flags & ACPI_EXT_CONFLICTING_DECLARATION))
            {
                AcpiOsPrintf ("%s", ExternalConflictMessage);
                AcpiDmConflictingDeclaration (Path);

                return;
            }
        }
        ExternalList = ExternalList->Next;
    }
}
