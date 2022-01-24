#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_7__ {int /*<<< orphan*/  Granularity; } ;
struct TYPE_8__ {TYPE_1__ Address16; } ;
typedef  int /*<<< orphan*/  AML_RESOURCE_ADDRESS16 ;
typedef  TYPE_2__ AML_RESOURCE ;
typedef  int /*<<< orphan*/  ACPI_OP_WALK_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_RESOURCE_TYPE_ADDRESS16 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void
FUNC7 (
    ACPI_OP_WALK_INFO       *Info,
    AML_RESOURCE            *Resource,
    UINT32                  Length,
    UINT32                  Level)
{

    /* Dump resource name and flags */

    FUNC0 (Resource, ACPI_RESOURCE_TYPE_ADDRESS16, Level);

    /* Dump the 5 contiguous WORD values */

    FUNC1 (&Resource->Address16.Granularity, 16, Level);

    /* The ResourceSource fields are optional */

    FUNC4 (Level + 1);
    FUNC5 (Resource, sizeof (AML_RESOURCE_ADDRESS16), Length);

    /* Insert a descriptor name */

    FUNC3 ();

    /* Type-specific flags */

    FUNC2 (Resource);
    FUNC6 (")\n");
}