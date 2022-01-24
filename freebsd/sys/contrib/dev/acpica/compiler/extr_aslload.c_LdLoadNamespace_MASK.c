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
typedef  int /*<<< orphan*/  ACPI_PARSE_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int ACPI_LV_TABLES ; 
 int /*<<< orphan*/  ACPI_NS_ALL ; 
 int /*<<< orphan*/  ACPI_UINT32_MAX ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  ASL_WALK_VISIT_TWICE ; 
 int AcpiDbgLevel ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LdCommonNamespaceEnd ; 
 int /*<<< orphan*/  LdNamespace1Begin ; 
 int /*<<< orphan*/  LdNamespace2Begin ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

ACPI_STATUS
FUNC4 (
    ACPI_PARSE_OBJECT       *RootOp)
{
    ACPI_WALK_STATE         *WalkState;


    /* Create a new walk state */

    WalkState = FUNC1 (0, NULL, NULL, NULL);
    if (!WalkState)
    {
        return (AE_NO_MEMORY);
    }

    /* Walk the entire parse tree, first pass */

    FUNC3 (RootOp, ASL_WALK_VISIT_TWICE, LdNamespace1Begin,
        LdCommonNamespaceEnd, WalkState);

    /* Second pass to handle forward references */

    FUNC3 (RootOp, ASL_WALK_VISIT_TWICE, LdNamespace2Begin,
        LdCommonNamespaceEnd, WalkState);

    /* Dump the namespace if debug is enabled */

    if (AcpiDbgLevel & ACPI_LV_TABLES)
    {
        FUNC2 (ACPI_NS_ALL, ACPI_UINT32_MAX);
    }

    FUNC0 (WalkState);
    return (AE_OK);
}