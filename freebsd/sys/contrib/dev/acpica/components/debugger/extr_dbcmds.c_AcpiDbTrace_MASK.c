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
typedef  int /*<<< orphan*/  UINT32 ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  ACPI_EXECUTER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ACPI_LV_TRACE_POINT ; 
 int /*<<< orphan*/  ACPI_TRACE_ENABLED ; 
 int /*<<< orphan*/  ACPI_TRACE_ONESHOT ; 
 int /*<<< orphan*/  ACPI_TRACE_OPCODE ; 
 int /*<<< orphan*/ * AcpiDbTraceMethodName ; 
 int /*<<< orphan*/  AcpiDbgLayer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AcpiGbl_DbConsoleDebugLevel ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC7 (char*) ; 

void
FUNC8 (
    char                    *EnableArg,
    char                    *MethodArg,
    char                    *OnceArg)
{
    UINT32                  DebugLevel = 0;
    UINT32                  DebugLayer = 0;
    UINT32                  Flags = 0;


    FUNC4 (EnableArg);
    FUNC4 (OnceArg);

    if (MethodArg)
    {
        if (AcpiDbTraceMethodName)
        {
            FUNC1 (AcpiDbTraceMethodName);
            AcpiDbTraceMethodName = NULL;
        }

        AcpiDbTraceMethodName = FUNC0 (FUNC7 (MethodArg) + 1);
        if (!AcpiDbTraceMethodName)
        {
            FUNC3 ("Failed to allocate method name (%s)\n",
                MethodArg);
            return;
        }

        FUNC6 (AcpiDbTraceMethodName, MethodArg);
    }

    if (!FUNC5 (EnableArg, "ENABLE") ||
        !FUNC5 (EnableArg, "METHOD") ||
        !FUNC5 (EnableArg, "OPCODE"))
    {
        if (!FUNC5 (EnableArg, "ENABLE"))
        {
            /* Inherit current console settings */

            DebugLevel = AcpiGbl_DbConsoleDebugLevel;
            DebugLayer = AcpiDbgLayer;
        }
        else
        {
            /* Restrict console output to trace points only */

            DebugLevel = ACPI_LV_TRACE_POINT;
            DebugLayer = ACPI_EXECUTER;
        }

        Flags = ACPI_TRACE_ENABLED;

        if (!FUNC5 (EnableArg, "OPCODE"))
        {
            Flags |= ACPI_TRACE_OPCODE;
        }

        if (OnceArg && !FUNC5 (OnceArg, "ONCE"))
        {
            Flags |= ACPI_TRACE_ONESHOT;
        }
    }

    (void) FUNC2 (AcpiDbTraceMethodName,
        DebugLevel, DebugLayer, Flags);
}