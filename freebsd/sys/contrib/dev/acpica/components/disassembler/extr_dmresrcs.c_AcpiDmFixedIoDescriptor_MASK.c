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
struct TYPE_4__ {int /*<<< orphan*/  AddressLength; int /*<<< orphan*/  Address; } ;
struct TYPE_5__ {TYPE_1__ FixedIo; } ;
typedef  TYPE_2__ AML_RESOURCE ;
typedef  int /*<<< orphan*/  ACPI_OP_WALK_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void
FUNC5 (
    ACPI_OP_WALK_INFO       *Info,
    AML_RESOURCE            *Resource,
    UINT32                  Length,
    UINT32                  Level)
{

    FUNC3 (Level);
    FUNC4 ("FixedIO (\n");

    FUNC3 (Level + 1);
    FUNC1 (Resource->FixedIo.Address, "Address");

    FUNC3 (Level + 1);
    FUNC2 (Resource->FixedIo.AddressLength, "Length");

    /* Insert a descriptor name */

    FUNC3 (Level + 1);
    FUNC0 ();
    FUNC4 (")\n");
}