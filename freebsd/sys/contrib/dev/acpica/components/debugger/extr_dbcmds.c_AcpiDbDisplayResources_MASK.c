#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  Ascii; } ;
struct TYPE_7__ {scalar_t__ Type; TYPE_1__ Name; } ;
typedef  TYPE_2__ ACPI_NAMESPACE_NODE ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_CONSOLE_OUTPUT ; 
 int /*<<< orphan*/  ACPI_DB_REDIRECTABLE_OUTPUT ; 
 int /*<<< orphan*/  ACPI_LV_RESOURCES ; 
 int /*<<< orphan*/  ACPI_ROOT_OBJECT ; 
 scalar_t__ ACPI_TYPE_DEVICE ; 
 int /*<<< orphan*/  ACPI_UINT32_MAX ; 
 TYPE_2__* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AcpiDbgLevel ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *),int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

void
FUNC7 (
    char                    *ObjectArg)
{
    ACPI_NAMESPACE_NODE     *Node;


    FUNC2 (ACPI_DB_REDIRECTABLE_OUTPUT);
    AcpiDbgLevel |= ACPI_LV_RESOURCES;

    /* Asterisk means "display resources for all devices" */

    if (!ObjectArg || (!FUNC6 (ObjectArg, "*")))
    {
        (void) FUNC5 (ACPI_TYPE_DEVICE, ACPI_ROOT_OBJECT,
            ACPI_UINT32_MAX, AcpiDbDeviceResources, NULL, NULL, NULL);
    }
    else
    {
        /* Convert string to object pointer */

        Node = FUNC0 (ObjectArg);
        if (Node)
        {
            if (Node->Type != ACPI_TYPE_DEVICE)
            {
                FUNC3 (
                    "%4.4s: Name is not a device object (%s)\n",
                    Node->Name.Ascii, FUNC4 (Node->Type));
            }
            else
            {
                (void) FUNC1 (Node, 0, NULL, NULL);
            }
        }
    }

    FUNC2 (ACPI_DB_CONSOLE_OUTPUT);
}