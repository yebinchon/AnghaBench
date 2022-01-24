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
struct TYPE_3__ {int /*<<< orphan*/  Description; scalar_t__ Invocation; } ;
typedef  TYPE_1__ ACPI_DB_COMMAND_HELP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* AcpiGbl_DbCommandHelp ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static void
FUNC2 (
    char                    *Command)
{
    const ACPI_DB_COMMAND_HELP  *Next = AcpiGbl_DbCommandHelp;


    if (!Command)
    {
        /* No argument to help, display help for all commands */

        FUNC1 ("\nSummary of AML Debugger Commands\n\n");

        while (Next->Invocation)
        {
            FUNC1 ("%-38s%s", Next->Invocation, Next->Description);
            Next++;
        }
        FUNC1 ("\n");

    }
    else
    {
        /* Display help for all commands that match the subtring */

        FUNC0 (Command, TRUE);
    }
}