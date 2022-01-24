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
struct TYPE_3__ {int Flags; char* Name; struct TYPE_3__* Next; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_1__ ACPI_INTERFACE_INFO ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int ACPI_OSI_INVALID ; 
 int /*<<< orphan*/  ACPI_WAIT_FOREVER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AcpiGbl_OsiMutex ; 
 TYPE_1__* AcpiGbl_SupportedInterfaces ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (char*,char*) ; 

void
FUNC9 (
    char                    *ActionArg,
    char                    *InterfaceNameArg)
{
    ACPI_INTERFACE_INFO     *NextInterface;
    char                    *SubString;
    ACPI_STATUS             Status;


    /* If no arguments, just display current interface list */

    if (!ActionArg)
    {
        (void) FUNC3 (AcpiGbl_OsiMutex, ACPI_WAIT_FOREVER);

        NextInterface = AcpiGbl_SupportedInterfaces;
        while (NextInterface)
        {
            if (!(NextInterface->Flags & ACPI_OSI_INVALID))
            {
                FUNC4 ("%s\n", NextInterface->Name);
            }

            NextInterface = NextInterface->Next;
        }

        FUNC5 (AcpiGbl_OsiMutex);
        return;
    }

    /* If ActionArg exists, so must InterfaceNameArg */

    if (!InterfaceNameArg)
    {
        FUNC4 ("Missing Interface Name argument\n");
        return;
    }

    /* Uppercase the action for match below */

    FUNC7 (ActionArg);

    /* Install - install an interface */

    SubString = FUNC8 ("INSTALL", ActionArg);
    if (SubString)
    {
        Status = FUNC2 (InterfaceNameArg);
        if (FUNC0 (Status))
        {
            FUNC4 ("%s, while installing \"%s\"\n",
                FUNC1 (Status), InterfaceNameArg);
        }
        return;
    }

    /* Remove - remove an interface */

    SubString = FUNC8 ("REMOVE", ActionArg);
    if (SubString)
    {
        Status = FUNC6 (InterfaceNameArg);
        if (FUNC0 (Status))
        {
            FUNC4 ("%s, while removing \"%s\"\n",
                FUNC1 (Status), InterfaceNameArg);
        }
        return;
    }

    /* Invalid ActionArg */

    FUNC4 ("Invalid action argument: %s\n", ActionArg);
    return;
}