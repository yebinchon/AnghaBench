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
struct TYPE_3__ {char* Name; int Flags; scalar_t__* Pathname; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_1__ ACPI_DB_METHOD_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_CONSOLE_OUTPUT ; 
 int /*<<< orphan*/  ACPI_DB_DUPLICATE_OUTPUT ; 
 int /*<<< orphan*/  ACPI_DB_REDIRECTABLE_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_BUFFER_OVERFLOW ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AcpiGbl_CmSingleStep ; 
 char* AcpiGbl_DbScopeBuf ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__*) ; 
 scalar_t__ FUNC5 (scalar_t__*,int,char*) ; 
 int /*<<< orphan*/  DbExecuteSetup ; 
 int EX_SINGLE_STEP ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static ACPI_STATUS
FUNC6 (
    ACPI_DB_METHOD_INFO     *Info)
{
    ACPI_STATUS             Status;


    FUNC1 (DbExecuteSetup);


    /* Concatenate the current scope to the supplied name */

    Info->Pathname[0] = 0;
    if ((Info->Name[0] != '\\') &&
        (Info->Name[0] != '/'))
    {
        if (FUNC5 (Info->Pathname, sizeof (Info->Pathname),
            AcpiGbl_DbScopeBuf))
        {
            Status = AE_BUFFER_OVERFLOW;
            goto ErrorExit;
        }
    }

    if (FUNC5 (Info->Pathname, sizeof (Info->Pathname),
        Info->Name))
    {
        Status = AE_BUFFER_OVERFLOW;
        goto ErrorExit;
    }

    FUNC2 (Info->Pathname);

    FUNC3 (ACPI_DB_DUPLICATE_OUTPUT);
    FUNC4 ("Evaluating %s\n", Info->Pathname);

    if (Info->Flags & EX_SINGLE_STEP)
    {
        AcpiGbl_CmSingleStep = TRUE;
        FUNC3 (ACPI_DB_CONSOLE_OUTPUT);
    }

    else
    {
        /* No single step, allow redirection to a file */

        FUNC3 (ACPI_DB_REDIRECTABLE_OUTPUT);
    }

    return (AE_OK);

ErrorExit:

    FUNC0 ((AE_INFO, Status, "During setup for method execution"));
    return (Status);
}