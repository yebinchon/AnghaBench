#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int Flags; int Type; } ;
typedef  TYPE_1__ ACPI_NAMESPACE_NODE ;

/* Variables and functions */
#define  ACPI_TYPE_DEVICE 129 
#define  ACPI_TYPE_THERMAL 128 
 int ANOBJ_METHOD_ARG ; 
 int ANOBJ_METHOD_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC4 (
    ACPI_NAMESPACE_NODE     *Node)
{

    FUNC2 ("<Node>            Name %4.4s",
        FUNC3 (Node));

    if (Node->Flags & ANOBJ_METHOD_ARG)
    {
        FUNC2 (" [Method Arg]");
    }
    if (Node->Flags & ANOBJ_METHOD_LOCAL)
    {
        FUNC2 (" [Method Local]");
    }

    switch (Node->Type)
    {
    /* These types have no attached object */

    case ACPI_TYPE_DEVICE:

        FUNC2 (" Device");
        break;

    case ACPI_TYPE_THERMAL:

        FUNC2 (" Thermal Zone");
        break;

    default:

        FUNC0 (FUNC1 (Node));
        break;
    }
}