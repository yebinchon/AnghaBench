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
 int /*<<< orphan*/  ACPI_DB_LINE_BUFFER_SIZE ; 
 int /*<<< orphan*/  ACPI_DEBUGGER_COMMAND_PROMPT ; 
 int /*<<< orphan*/  ACPI_DEBUGGER_EXECUTE_PROMPT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_WAIT_FOREVER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AcpiGbl_DbCommandComplete ; 
 int /*<<< orphan*/  AcpiGbl_DbCommandReady ; 
 int /*<<< orphan*/  AcpiGbl_DbLineBuf ; 
 int /*<<< orphan*/  AcpiGbl_DbTerminateLoop ; 
 int /*<<< orphan*/  AcpiGbl_MethodExecuting ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7 (
    char                    *BatchBuffer)
{
    ACPI_STATUS             Status;
    char                    *Ptr = BatchBuffer;
    char                    *Cmd = Ptr;


    while (!AcpiGbl_DbTerminateLoop)
    {
        if (BatchBuffer)
        {
            if (*Ptr)
            {
                while (*Ptr)
                {
                    if (*Ptr == ',')
                    {
                        /* Convert commas to spaces */
                        *Ptr = ' ';
                    }
                    else if (*Ptr == ';')
                    {
                        *Ptr = '\0';
                        continue;
                    }

                    Ptr++;
                }

                FUNC6 (AcpiGbl_DbLineBuf, Cmd, ACPI_DB_LINE_BUFFER_SIZE);
                Ptr++;
                Cmd = Ptr;
            }
            else
            {
                return;
            }
        }
        else
        {
            /* Force output to console until a command is entered */

            FUNC1 (ACPI_DB_CONSOLE_OUTPUT);

            /* Different prompt if method is executing */

            if (!AcpiGbl_MethodExecuting)
            {
                FUNC4 ("%1c ", ACPI_DEBUGGER_COMMAND_PROMPT);
            }
            else
            {
                FUNC4 ("%1c ", ACPI_DEBUGGER_EXECUTE_PROMPT);
            }

            /* Get the user input line */

            Status = FUNC3 (AcpiGbl_DbLineBuf,
                ACPI_DB_LINE_BUFFER_SIZE, NULL);
            if (FUNC0 (Status))
            {
                return;
            }
        }

        /*
         * Signal the debug thread that we have a command to execute,
         * and wait for the command to complete.
         */
        FUNC5 (AcpiGbl_DbCommandReady);

        Status = FUNC2 (AcpiGbl_DbCommandComplete,
            ACPI_WAIT_FOREVER);
        if (FUNC0 (Status))
        {
            return;
        }
    }
}