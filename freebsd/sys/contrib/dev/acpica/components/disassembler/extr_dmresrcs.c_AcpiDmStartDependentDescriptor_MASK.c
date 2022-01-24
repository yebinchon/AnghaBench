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
typedef  int UINT32 ;
struct TYPE_4__ {int /*<<< orphan*/  Flags; } ;
struct TYPE_5__ {TYPE_1__ StartDpf; } ;
typedef  TYPE_2__ AML_RESOURCE ;
typedef  int /*<<< orphan*/  ACPI_OP_WALK_INFO ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

void
FUNC4 (
    ACPI_OP_WALK_INFO       *Info,
    AML_RESOURCE            *Resource,
    UINT32                  Length,
    UINT32                  Level)
{

    FUNC2 (Level);

    if (Length & 1)
    {
        FUNC3 ("StartDependentFn (0x%2.2X, 0x%2.2X)\n",
            (UINT32) FUNC1 (Resource->StartDpf.Flags),
            (UINT32) FUNC0 (Resource->StartDpf.Flags, 2));
    }
    else
    {
        FUNC3 ("StartDependentFnNoPri ()\n");
    }

    FUNC2 (Level);
    FUNC3 ("{\n");
}