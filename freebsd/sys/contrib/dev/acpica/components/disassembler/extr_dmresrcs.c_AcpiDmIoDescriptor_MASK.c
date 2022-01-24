#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT32 ;
struct TYPE_4__ {int /*<<< orphan*/  AddressLength; int /*<<< orphan*/  Alignment; int /*<<< orphan*/  Maximum; int /*<<< orphan*/  Minimum; int /*<<< orphan*/  Flags; } ;
struct TYPE_5__ {TYPE_1__ Io; } ;
typedef  TYPE_2__ AML_RESOURCE ;
typedef  int /*<<< orphan*/  ACPI_OP_WALK_INFO ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/ * AcpiGbl_IoDecode ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

void
FUNC6 (
    ACPI_OP_WALK_INFO       *Info,
    AML_RESOURCE            *Resource,
    UINT32                  Length,
    UINT32                  Level)
{

    FUNC4 (Level);
    FUNC5 ("IO (%s,\n",
        AcpiGbl_IoDecode [FUNC0 (Resource->Io.Flags)]);

    FUNC4 (Level + 1);
    FUNC2 (Resource->Io.Minimum, "Range Minimum");

    FUNC4 (Level + 1);
    FUNC2 (Resource->Io.Maximum, "Range Maximum");

    FUNC4 (Level + 1);
    FUNC3 (Resource->Io.Alignment, "Alignment");

    FUNC4 (Level + 1);
    FUNC3 (Resource->Io.AddressLength, "Length");

    /* Insert a descriptor name */

    FUNC4 (Level + 1);
    FUNC1 ();
    FUNC5 (")\n");
}