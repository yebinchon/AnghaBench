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
typedef  int /*<<< orphan*/  UINT32 ;
typedef  int /*<<< orphan*/  ACPI_OPERAND_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_ALLOCATIONS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_DESC_TYPE_OPERAND ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AcpiGbl_OperandCache ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UtAllocateObjectDescDbg ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void *
FUNC6 (
    const char              *ModuleName,
    UINT32                  LineNumber,
    UINT32                  ComponentId)
{
    ACPI_OPERAND_OBJECT     *Object;


    FUNC2 (UtAllocateObjectDescDbg);


    Object = FUNC4 (AcpiGbl_OperandCache);
    if (!Object)
    {
        FUNC1 ((ModuleName, LineNumber,
            "Could not allocate an object descriptor"));

        FUNC5 (NULL);
    }

    /* Mark the descriptor type */

    FUNC3 (Object, ACPI_DESC_TYPE_OPERAND);

    FUNC0 ((ACPI_DB_ALLOCATIONS, "%p Size %X\n",
        Object, (UINT32) sizeof (ACPI_OPERAND_OBJECT)));

    FUNC5 (Object);
}