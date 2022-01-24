#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_8__ {scalar_t__ AmlOpcode; TYPE_2__* Next; } ;
struct TYPE_9__ {TYPE_1__ Common; } ;
typedef  TYPE_2__ ACPI_PARSE_OBJECT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ AML_PACKAGE_OP ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  METHOD_NAME__CID ; 
 int /*<<< orphan*/  METHOD_NAME__HID ; 

void
FUNC4 (
    ACPI_PARSE_OBJECT       *Op)
{
    UINT32                  Name;
    ACPI_PARSE_OBJECT       *NextOp;


    /* Get the NameSegment */

    Name = FUNC3 (Op);
    if (!Name)
    {
        return;
    }

    NextOp = FUNC2 (NULL, Op);
    if (!NextOp)
    {
        return;
    }

    /* Check for _HID - has one argument */

    if (FUNC0 (&Name, METHOD_NAME__HID))
    {
        FUNC1 (NextOp);
        return;
    }

    /* Exit if not _CID */

    if (!FUNC0 (&Name, METHOD_NAME__CID))
    {
        return;
    }

    /* _CID can contain a single argument or a package */

    if (NextOp->Common.AmlOpcode != AML_PACKAGE_OP)
    {
        FUNC1 (NextOp);
        return;
    }

    /* _CID with Package: get the package length, check all elements */

    NextOp = FUNC2 (NULL, NextOp);
    if (!NextOp)
    {
        return;
    }

    /* Don't need to use the length, just walk the peer list */

    NextOp = NextOp->Common.Next;
    while (NextOp)
    {
        FUNC1 (NextOp);
        NextOp = NextOp->Common.Next;
    }
}