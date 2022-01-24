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
typedef  int /*<<< orphan*/  time_t ;
typedef  scalar_t__ UINT8 ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ACPI_IS_AML_TABLE ; 
 int /*<<< orphan*/  AML_DISASSEMBLER_NAME ; 
 scalar_t__ AcpiGbl_CstyleDisassembly ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4 (
    char                    *Filename,
    UINT8                   TableType)
{
    time_t                  Timer;


    FUNC3 (&Timer);

    /* Header and input table info */

    FUNC1 ("/*\n");
    FUNC1 (FUNC0 (AML_DISASSEMBLER_NAME, " * "));

    if (TableType == ACPI_IS_AML_TABLE)
    {
        if (AcpiGbl_CstyleDisassembly)
        {
            FUNC1 (
                " * Disassembling to symbolic ASL+ operators\n"
                " *\n");
        }
        else
        {
            FUNC1 (
                " * Disassembling to non-symbolic legacy ASL operators\n"
                " *\n");
        }
    }

    FUNC1 (" * Disassembly of %s, %s", Filename, FUNC2 (&Timer));
    FUNC1 (" *\n");
}