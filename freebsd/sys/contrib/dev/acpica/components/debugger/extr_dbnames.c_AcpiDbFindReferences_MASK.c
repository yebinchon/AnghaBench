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
typedef  int /*<<< orphan*/  ACPI_SIZE ;
typedef  int /*<<< orphan*/  ACPI_OPERAND_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ROOT_OBJECT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TYPE_ANY ; 
 int /*<<< orphan*/  ACPI_UINT32_MAX ; 
 int /*<<< orphan*/  AcpiDbWalkForReferences ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int) ; 

void
FUNC3 (
    char                    *ObjectArg)
{
    ACPI_OPERAND_OBJECT     *ObjDesc;
    ACPI_SIZE               Address;


    /* Convert string to object pointer */

    Address = FUNC2 (ObjectArg, NULL, 16);
    ObjDesc = FUNC0 (Address);

    /* Search all nodes in namespace */

    (void) FUNC1 (ACPI_TYPE_ANY, ACPI_ROOT_OBJECT,
        ACPI_UINT32_MAX, AcpiDbWalkForReferences, NULL,
        (void *) ObjDesc, NULL);
}