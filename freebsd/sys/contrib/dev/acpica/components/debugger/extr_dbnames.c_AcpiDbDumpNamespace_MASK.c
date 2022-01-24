#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_3__ {int /*<<< orphan*/  Ascii; } ;
struct TYPE_4__ {TYPE_1__ Name; scalar_t__ Parent; } ;
typedef  TYPE_2__ ACPI_NAMESPACE_NODE ;
typedef  scalar_t__ ACPI_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_CONSOLE_OUTPUT ; 
 int /*<<< orphan*/  ACPI_DB_DUPLICATE_OUTPUT ; 
 int /*<<< orphan*/  ACPI_DB_REDIRECTABLE_OUTPUT ; 
 int /*<<< orphan*/  ACPI_DISPLAY_SUMMARY ; 
 int /*<<< orphan*/  ACPI_NAMESPACE_ROOT ; 
 int /*<<< orphan*/  ACPI_OWNER_ID_MAX ; 
 int /*<<< orphan*/  ACPI_TYPE_ANY ; 
 int /*<<< orphan*/  ACPI_UINT32_MAX ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ AcpiGbl_RootNode ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC5 (
    char                    *StartArg,
    char                    *DepthArg)
{
    ACPI_HANDLE             SubtreeEntry = AcpiGbl_RootNode;
    UINT32                  MaxDepth = ACPI_UINT32_MAX;


    /* No argument given, just start at the root and dump entire namespace */

    if (StartArg)
    {
        SubtreeEntry = FUNC0 (StartArg);
        if (!SubtreeEntry)
        {
            return;
        }

        /* Now we can check for the depth argument */

        if (DepthArg)
        {
            MaxDepth = FUNC4 (DepthArg, NULL, 0);
        }
    }

    FUNC1 (ACPI_DB_DUPLICATE_OUTPUT);

    if (((ACPI_NAMESPACE_NODE *) SubtreeEntry)->Parent)
    {
        FUNC3 ("ACPI Namespace (from %4.4s (%p) subtree):\n",
            ((ACPI_NAMESPACE_NODE *) SubtreeEntry)->Name.Ascii, SubtreeEntry);
    }
    else
    {
        FUNC3 ("ACPI Namespace (from %s):\n",
            ACPI_NAMESPACE_ROOT);
    }

    /* Display the subtree */

    FUNC1 (ACPI_DB_REDIRECTABLE_OUTPUT);
    FUNC2 (ACPI_TYPE_ANY, ACPI_DISPLAY_SUMMARY, MaxDepth,
        ACPI_OWNER_ID_MAX, SubtreeEntry);
    FUNC1 (ACPI_DB_CONSOLE_OUTPUT);
}