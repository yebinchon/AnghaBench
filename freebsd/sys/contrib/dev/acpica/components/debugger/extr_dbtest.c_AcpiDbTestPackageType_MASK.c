#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  Count; } ;
struct TYPE_6__ {TYPE_1__ Package; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_2__ ACPI_OBJECT ;
typedef  int /*<<< orphan*/  ACPI_NAMESPACE_NODE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TYPE_PACKAGE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ACPI_STATUS
FUNC4 (
    ACPI_NAMESPACE_NODE     *Node)
{
    ACPI_OBJECT             *Temp1 = NULL;
    ACPI_STATUS             Status;


    /* Read the original value */

    Status = FUNC1 (Node, ACPI_TYPE_PACKAGE, &Temp1);
    if (FUNC0 (Status))
    {
        return (Status);
    }

    FUNC3 (" %.2X Elements", Temp1->Package.Count);
    FUNC2 (Temp1);
    return (Status);
}