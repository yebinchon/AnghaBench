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
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_MTX_NAMESPACE ; 
 int /*<<< orphan*/  AcpiGbl_RootNode ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NsTerminate ; 
 int /*<<< orphan*/  return_VOID ; 

void
FUNC7 (
    void)
{
    ACPI_STATUS             Status;


    FUNC2 (NsTerminate);


    /*
     * Free the entire namespace -- all nodes and all objects
     * attached to the nodes
     */
    FUNC3 (AcpiGbl_RootNode);

    /* Delete any objects attached to the root node */

    Status = FUNC5 (ACPI_MTX_NAMESPACE);
    if (FUNC1 (Status))
    {
        return_VOID;
    }

    FUNC4 (AcpiGbl_RootNode);
    (void) FUNC6 (ACPI_MTX_NAMESPACE);

    FUNC0 ((ACPI_DB_INFO, "Namespace freed\n"));
    return_VOID;
}