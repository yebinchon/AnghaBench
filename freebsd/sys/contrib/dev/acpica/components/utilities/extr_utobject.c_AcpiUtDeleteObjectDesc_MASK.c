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
typedef  int /*<<< orphan*/  ACPI_OPERAND_OBJECT ;

/* Variables and functions */
 scalar_t__ ACPI_DESC_TYPE_OPERAND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AcpiGbl_OperandCache ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UtDeleteObjectDesc ; 
 int /*<<< orphan*/  return_VOID ; 

void
FUNC5 (
    ACPI_OPERAND_OBJECT     *Object)
{
    FUNC1 (UtDeleteObjectDesc, Object);


    /* Object must be of type ACPI_OPERAND_OBJECT */

    if (FUNC2 (Object) != ACPI_DESC_TYPE_OPERAND)
    {
        FUNC0 ((AE_INFO,
            "%p is not an ACPI Operand object [%s]", Object,
            FUNC4 (Object)));
        return_VOID;
    }

    (void) FUNC3 (AcpiGbl_OperandCache, Object);
    return_VOID;
}