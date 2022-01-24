#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int MaxTableCount; int /*<<< orphan*/  Tables; scalar_t__ CurrentTableCount; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_OK ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ AcpiGbl_RootTableList ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  LocalTables ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 

ACPI_STATUS
FUNC7 (
    void)
{
    ACPI_STATUS             Status;


    /* ACPICA subsystem initialization */

    Status = FUNC3 ();
    if (FUNC0 (Status))
    {
        FUNC6 (stderr, "Could not initialize ACPICA subsystem: %s\n",
            FUNC1 (Status));

        return (Status);
    }

    Status = FUNC4 ();
    if (FUNC0 (Status))
    {
        FUNC6 (stderr, "Could not initialize ACPICA globals: %s\n",
            FUNC1 (Status));

        return (Status);
    }

    Status = FUNC5 ();
    if (FUNC0 (Status))
    {
        FUNC6 (stderr, "Could not initialize ACPICA mutex objects: %s\n",
            FUNC1 (Status));

        return (Status);
    }

    Status = FUNC2 ();
    if (FUNC0 (Status))
    {
        FUNC6 (stderr, "Could not initialize ACPICA namespace: %s\n",
            FUNC1 (Status));

        return (Status);
    }

    /* Setup the Table Manager (cheat - there is no RSDT) */

    AcpiGbl_RootTableList.MaxTableCount = 1;
    AcpiGbl_RootTableList.CurrentTableCount = 0;
    AcpiGbl_RootTableList.Tables = LocalTables;

    return (AE_OK);
}