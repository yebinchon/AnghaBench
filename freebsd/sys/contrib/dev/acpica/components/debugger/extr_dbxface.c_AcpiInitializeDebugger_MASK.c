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
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_CONSOLE_OUTPUT ; 
 int /*<<< orphan*/  ACPI_DEBUG_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  (*) ()) ; 
 int ACPI_LV_TABLES ; 
 int /*<<< orphan*/  ACPI_LV_VERBOSITY2 ; 
 int ACPI_NORMAL_DEFAULT ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 scalar_t__ AML_ROOT_PREFIX ; 
 int /*<<< orphan*/  AcpiDbExecuteThread ; 
 int /*<<< orphan*/ * AcpiGbl_DbBuffer ; 
 int AcpiGbl_DbConsoleDebugLevel ; 
 int /*<<< orphan*/  AcpiGbl_DbDebugLevel ; 
 int /*<<< orphan*/ * AcpiGbl_DbFilename ; 
 void* AcpiGbl_DbOpt_NoIniMethods ; 
 int /*<<< orphan*/  AcpiGbl_DbOutputFlags ; 
 void* AcpiGbl_DbOutputToFile ; 
 scalar_t__* AcpiGbl_DbScopeBuf ; 
 int /*<<< orphan*/  AcpiGbl_DbScopeNode ; 
 void* AcpiGbl_DbTerminateLoop ; 
 int /*<<< orphan*/  AcpiGbl_DbThreadId ; 
 void* AcpiGbl_DbThreadsTerminated ; 
 int AcpiGbl_DebuggerConfiguration ; 
 int /*<<< orphan*/  AcpiGbl_RootNode ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int DEBUGGER_MULTI_THREADED ; 
 void* FALSE ; 
 int /*<<< orphan*/  OSL_DEBUGGER_MAIN_THREAD ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC10 (
    void)
{
    ACPI_STATUS             Status;


    FUNC2 (AcpiInitializeDebugger);


    /* Init globals */

    AcpiGbl_DbBuffer            = NULL;
    AcpiGbl_DbFilename          = NULL;
    AcpiGbl_DbOutputToFile      = FALSE;

    AcpiGbl_DbDebugLevel        = ACPI_LV_VERBOSITY2;
    AcpiGbl_DbConsoleDebugLevel = ACPI_NORMAL_DEFAULT | ACPI_LV_TABLES;
    AcpiGbl_DbOutputFlags       = ACPI_DB_CONSOLE_OUTPUT;

    AcpiGbl_DbOpt_NoIniMethods  = FALSE;

    AcpiGbl_DbBuffer = FUNC3 (ACPI_DEBUG_BUFFER_SIZE);
    if (!AcpiGbl_DbBuffer)
    {
        FUNC9 (AE_NO_MEMORY);
    }
    FUNC8 (AcpiGbl_DbBuffer, 0, ACPI_DEBUG_BUFFER_SIZE);

    /* Initial scope is the root */

    AcpiGbl_DbScopeBuf [0] = AML_ROOT_PREFIX;
    AcpiGbl_DbScopeBuf [1] =  0;
    AcpiGbl_DbScopeNode = AcpiGbl_RootNode;

    /* Initialize user commands loop */

    AcpiGbl_DbTerminateLoop = FALSE;

    /*
     * If configured for multi-thread support, the debug executor runs in
     * a separate thread so that the front end can be in another address
     * space, environment, or even another machine.
     */
    if (AcpiGbl_DebuggerConfiguration & DEBUGGER_MULTI_THREADED)
    {
        /* These were created with one unit, grab it */

        Status = FUNC6 ();
        if (FUNC1 (Status))
        {
            FUNC7 ("Could not get debugger mutex\n");
            FUNC9 (Status);
        }

        /* Create the debug execution thread to execute commands */

        AcpiGbl_DbThreadsTerminated = FALSE;
        Status = FUNC4 (OSL_DEBUGGER_MAIN_THREAD,
            AcpiDbExecuteThread, NULL);
        if (FUNC1 (Status))
        {
            FUNC0 ((AE_INFO, Status,
                "Could not start debugger thread"));
            AcpiGbl_DbThreadsTerminated = TRUE;
            FUNC9 (Status);
        }
    }
    else
    {
        AcpiGbl_DbThreadId = FUNC5 ();
    }

    FUNC9 (AE_OK);
}