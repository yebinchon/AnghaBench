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
typedef  scalar_t__ UINT32 ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ROOT_OBJECT ; 
 int /*<<< orphan*/  ACPI_TYPE_ANY ; 
 int /*<<< orphan*/  ACPI_UINT32_MAX ; 
 int /*<<< orphan*/  AcpiDbWalkForPredefinedNames ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *) ; 

void
FUNC2 (
    void)
{
    UINT32                  Count = 0;


    /* Search all nodes in namespace */

    (void) FUNC1 (ACPI_TYPE_ANY, ACPI_ROOT_OBJECT,
        ACPI_UINT32_MAX, AcpiDbWalkForPredefinedNames,
        NULL, (void *) &Count, NULL);

    FUNC0 ("Found %u predefined names in the namespace\n", Count);
}