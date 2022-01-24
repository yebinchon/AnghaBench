#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT32 ;
struct TYPE_7__ {int /*<<< orphan*/  Aml; } ;
struct TYPE_10__ {TYPE_1__ Common; } ;
struct TYPE_8__ {int /*<<< orphan*/  AmlStart; } ;
struct TYPE_9__ {scalar_t__ UserBreakpoint; TYPE_2__ ParserState; } ;
typedef  TYPE_3__ ACPI_WALK_STATE ;
typedef  TYPE_4__ ACPI_PARSE_OBJECT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ *,int) ; 

void
FUNC3 (
    char                    *Location,
    ACPI_WALK_STATE         *WalkState,
    ACPI_PARSE_OBJECT       *Op)
{
    UINT32                  Address;
    UINT32                  AmlOffset;


    if (!Op)
    {
        FUNC1 ("There is no method currently executing\n");
        return;
    }

    /* Get and verify the breakpoint address */

    Address = FUNC2 (Location, NULL, 16);
    AmlOffset = (UINT32) FUNC0 (Op->Common.Aml,
        WalkState->ParserState.AmlStart);
    if (Address <= AmlOffset)
    {
        FUNC1 ("Breakpoint %X is beyond current address %X\n",
            Address, AmlOffset);
    }

    /* Save breakpoint in current walk */

    WalkState->UserBreakpoint = Address;
    FUNC1 ("Breakpoint set at AML offset %X\n", Address);
}