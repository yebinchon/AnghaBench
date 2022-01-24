#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ AcpiGbl_Shutdown ; 
 scalar_t__ AcpiGbl_StartupFlags ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  UtSubsystemShutdown ; 
 int /*<<< orphan*/  return_VOID ; 

void
FUNC9 (
    void)
{
    FUNC2 (UtSubsystemShutdown);


    /* Just exit if subsystem is already shutdown */

    if (AcpiGbl_Shutdown)
    {
        FUNC1 ((AE_INFO, "ACPI Subsystem is already terminated"));
        return_VOID;
    }

    /* Subsystem appears active, go ahead and shut it down */

    AcpiGbl_Shutdown = TRUE;
    AcpiGbl_StartupFlags = 0;
    FUNC0 ((ACPI_DB_INFO, "Shutting down ACPI Subsystem\n"));

#ifndef ACPI_ASL_COMPILER

    /* Close the AcpiEvent Handling */

    FUNC3 ();

    /* Delete any dynamic _OSI interfaces */

    FUNC7 ();
#endif

    /* Close the Namespace */

    FUNC4 ();

    /* Delete the ACPI tables */

    FUNC5 ();

    /* Close the globals */

    FUNC8 ();

    /* Purge the local caches */

    (void) FUNC6 ();
    return_VOID;
}