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
typedef  int /*<<< orphan*/  ACPI_SIZE ;
typedef  int /*<<< orphan*/  ACPI_NAMESPACE_NODE ;

/* Variables and functions */
 scalar_t__ ACPI_DESC_TYPE_NAMED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 

ACPI_SIZE
FUNC3 (
    ACPI_NAMESPACE_NODE     *Node)
{
    ACPI_SIZE               Size;


    /* Validate the Node */

    if (FUNC1 (Node) != ACPI_DESC_TYPE_NAMED)
    {
        FUNC0 ((AE_INFO,
            "Invalid/cached reference target node: %p, descriptor type %d",
            Node, FUNC1 (Node)));
        return (0);
    }

    Size = FUNC2 (Node, NULL, 0, FALSE);
    return (Size);
}