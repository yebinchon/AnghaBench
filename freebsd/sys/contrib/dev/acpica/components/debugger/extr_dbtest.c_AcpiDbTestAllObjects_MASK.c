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
 int /*<<< orphan*/  ACPI_DB_READ_METHOD ; 
 int /*<<< orphan*/  ACPI_DB_WRITE_METHOD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_ROOT_OBJECT ; 
 int /*<<< orphan*/  ACPI_TYPE_ANY ; 
 int /*<<< orphan*/  ACPI_UINT32_MAX ; 
 int /*<<< orphan*/  AcpiDbTestOneObject ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ReadHandle ; 
 int /*<<< orphan*/  ReadMethodCode ; 
 int /*<<< orphan*/  WriteHandle ; 
 int /*<<< orphan*/  WriteMethodCode ; 

__attribute__((used)) static void
FUNC6 (
    void)
{
    ACPI_STATUS             Status;


    /* Install the debugger read-object control method if necessary */

    if (!ReadHandle)
    {
        Status = FUNC3 (ReadMethodCode);
        if (FUNC0 (Status))
        {
            FUNC4 ("%s, Could not install debugger read method\n",
                FUNC1 (Status));
            return;
        }

        Status = FUNC2 (NULL, ACPI_DB_READ_METHOD, &ReadHandle);
        if (FUNC0 (Status))
        {
            FUNC4 ("Could not obtain handle for debug method %s\n",
                ACPI_DB_READ_METHOD);
            return;
        }
    }

    /* Install the debugger write-object control method if necessary */

    if (!WriteHandle)
    {
        Status = FUNC3 (WriteMethodCode);
        if (FUNC0 (Status))
        {
            FUNC4 ("%s, Could not install debugger write method\n",
                FUNC1 (Status));
            return;
        }

        Status = FUNC2 (NULL, ACPI_DB_WRITE_METHOD, &WriteHandle);
        if (FUNC0 (Status))
        {
            FUNC4 ("Could not obtain handle for debug method %s\n",
                ACPI_DB_WRITE_METHOD);
            return;
        }
    }

    /* Walk the entire namespace, testing each supported named data object */

    (void) FUNC5 (ACPI_TYPE_ANY, ACPI_ROOT_OBJECT,
        ACPI_UINT32_MAX, AcpiDbTestOneObject, NULL, NULL, NULL);
}