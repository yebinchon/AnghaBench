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
typedef  int /*<<< orphan*/  ACPI_WALK_STATE ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  ASL_WALK_VISIT_TWICE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  AslGbl_ParseTreeRoot ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  XfNamespaceLocateBegin ; 
 int /*<<< orphan*/  XfNamespaceLocateEnd ; 

ACPI_STATUS
FUNC3 (
    void)
{
    ACPI_WALK_STATE         *WalkState;


    /*
     * Create a new walk state for use when looking up names
     * within the namespace (Passed as context to the callbacks)
     */
    WalkState = FUNC1 (0, NULL, NULL, NULL);
    if (!WalkState)
    {
        return (AE_NO_MEMORY);
    }

    /* Walk the entire parse tree */

    FUNC2 (AslGbl_ParseTreeRoot, ASL_WALK_VISIT_TWICE,
        XfNamespaceLocateBegin, XfNamespaceLocateEnd, WalkState);

    FUNC0 (WalkState);
    return (AE_OK);
}