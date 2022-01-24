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
struct TYPE_4__ {scalar_t__ AccessSize; int /*<<< orphan*/  Address; int /*<<< orphan*/  BitOffset; int /*<<< orphan*/  BitWidth; int /*<<< orphan*/  AddressSpaceId; } ;
struct TYPE_5__ {TYPE_1__ GenericReg; } ;
typedef  TYPE_2__ AML_RESOURCE ;
typedef  int /*<<< orphan*/  ACPI_OP_WALK_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

void
FUNC6 (
    ACPI_OP_WALK_INFO       *Info,
    AML_RESOURCE            *Resource,
    UINT32                  Length,
    UINT32                  Level)
{

    FUNC4 (Level);
    FUNC5 ("Register (");
    FUNC0 (Resource->GenericReg.AddressSpaceId);
    FUNC5 ("\n");

    FUNC4 (Level + 1);
    FUNC3 (Resource->GenericReg.BitWidth, "Bit Width");

    FUNC4 (Level + 1);
    FUNC3 (Resource->GenericReg.BitOffset, "Bit Offset");

    FUNC4 (Level + 1);
    FUNC2 (Resource->GenericReg.Address, "Address");

    /* Optional field for ACPI 3.0 */

    FUNC4 (Level + 1);
    if (Resource->GenericReg.AccessSize)
    {
        FUNC5 ("0x%2.2X,               // %s\n",
            Resource->GenericReg.AccessSize, "Access Size");
        FUNC4 (Level + 1);
    }
    else
    {
        FUNC5 (",");
    }

    /* DescriptorName was added for ACPI 3.0+ */

    FUNC1 ();
    FUNC5 (")\n");
}