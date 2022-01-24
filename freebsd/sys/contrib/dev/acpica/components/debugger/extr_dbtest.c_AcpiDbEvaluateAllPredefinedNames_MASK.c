#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ Count; int /*<<< orphan*/  MaxCount; } ;
typedef  TYPE_1__ ACPI_DB_EXECUTE_WALK ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ROOT_OBJECT ; 
 int /*<<< orphan*/  ACPI_TYPE_ANY ; 
 int /*<<< orphan*/  ACPI_UINT32_MAX ; 
 int /*<<< orphan*/  AcpiDbEvaluateOnePredefinedName ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3 (
    char                    *CountArg)
{
    ACPI_DB_EXECUTE_WALK    Info;


    Info.Count = 0;
    Info.MaxCount = ACPI_UINT32_MAX;

    if (CountArg)
    {
        Info.MaxCount = FUNC2 (CountArg, NULL, 0);
    }

    /* Search all nodes in namespace */

    (void) FUNC1 (ACPI_TYPE_ANY, ACPI_ROOT_OBJECT,
        ACPI_UINT32_MAX, AcpiDbEvaluateOnePredefinedName, NULL,
        (void *) &Info, NULL);

    FUNC0 (
        "Evaluated %u predefined names in the namespace\n", Info.Count);
}