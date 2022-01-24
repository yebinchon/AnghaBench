#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  OpRegionCount; int /*<<< orphan*/  MethodCount; int /*<<< orphan*/  ObjectCount; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_1__ ACPI_INIT_WALK_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_DISPATCH ; 
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  ACPI_DB_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_ROOT_OBJECT ; 
 int /*<<< orphan*/  ACPI_TYPE_ANY ; 
 int /*<<< orphan*/  ACPI_UINT32_MAX ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  AcpiNsInitOneObject ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NsInitializeObjects ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC8 (
    void)
{
    ACPI_STATUS             Status;
    ACPI_INIT_WALK_INFO     Info;


    FUNC4 (NsInitializeObjects);


    FUNC0 ((ACPI_DB_EXEC,
        "[Init] Completing Initialization of ACPI Objects\n"));
    FUNC0 ((ACPI_DB_DISPATCH,
        "**** Starting initialization of namespace objects ****\n"));
    FUNC1 ((ACPI_DB_INIT,
        "Final data object initialization: "));

    /* Clear the info block */

    FUNC6 (&Info, 0, sizeof (ACPI_INIT_WALK_INFO));

    /* Walk entire namespace from the supplied root */

    /*
     * TBD: will become ACPI_TYPE_PACKAGE as this type object
     * is now the only one that supports deferred initialization
     * (forward references).
     */
    Status = FUNC5 (ACPI_TYPE_ANY, ACPI_ROOT_OBJECT,
        ACPI_UINT32_MAX, AcpiNsInitOneObject, NULL, &Info, NULL);
    if (FUNC3 (Status))
    {
        FUNC2 ((AE_INFO, Status, "During WalkNamespace"));
    }

    FUNC1 ((ACPI_DB_INIT,
        "Namespace contains %u (0x%X) objects\n",
        Info.ObjectCount,
        Info.ObjectCount));

    FUNC0 ((ACPI_DB_DISPATCH,
        "%u Control Methods found\n%u Op Regions found\n",
        Info.MethodCount, Info.OpRegionCount));

    FUNC7 (AE_OK);
}