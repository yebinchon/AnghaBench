#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* Path; int Flags; struct TYPE_3__* Next; } ;
typedef  TYPE_1__ ACPI_EXTERNAL_LIST ;

/* Variables and functions */
 int ACPI_EXT_CONFLICTING_DECLARATION ; 
 char AML_ROOT_PREFIX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* AcpiGbl_ExternalList ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ExternalConflictMessage ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static void
FUNC3 (
    char                    *Path)
{
    ACPI_EXTERNAL_LIST      *ExternalList = AcpiGbl_ExternalList;
    char                    *ListItemPath;
    char                    *InputPath;


    if (!Path)
    {
        return;
    }

    /* Move past the root prefix '\' */

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
            /* Move past the root prefix '\' */

            if ((*ListItemPath == AML_ROOT_PREFIX) &&
                ListItemPath[1])
            {
                ListItemPath++;
            }

            if (!FUNC2 (ListItemPath, InputPath) &&
                (ExternalList->Flags & ACPI_EXT_CONFLICTING_DECLARATION))
            {
                FUNC1 ("%s", ExternalConflictMessage);
                FUNC0 (Path);

                return;
            }
        }
        ExternalList = ExternalList->Next;
    }
}