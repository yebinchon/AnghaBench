#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT8 ;
struct TYPE_8__ {int /*<<< orphan*/  Length; scalar_t__ Pointer; } ;
struct TYPE_11__ {TYPE_1__ Buffer; } ;
struct TYPE_10__ {int /*<<< orphan*/  Pointer; int /*<<< orphan*/  Length; } ;
struct TYPE_9__ {scalar_t__ Type; TYPE_4__* Object; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_2__ ACPI_NAMESPACE_NODE ;
typedef  TYPE_3__ ACPI_BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_DB_CONSOLE_OUTPUT ; 
 int /*<<< orphan*/  ACPI_DB_REDIRECTABLE_OUTPUT ; 
 int /*<<< orphan*/  ACPI_DEBUG_BUFFER_SIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_LV_RESOURCES ; 
 int /*<<< orphan*/  ACPI_RESOURCE ; 
 scalar_t__ ACPI_TYPE_BUFFER ; 
 int /*<<< orphan*/  ACPI_UINT32_MAX ; 
 TYPE_2__* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AcpiDbgLevel ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AcpiGbl_DbBuffer ; 
 TYPE_2__* AcpiGbl_RootNode ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DB_BYTE_DISPLAY ; 

void
FUNC9 (
    char                    *BufferArg)
{
    ACPI_NAMESPACE_NODE     *Node;
    ACPI_STATUS             Status;
    ACPI_BUFFER             ReturnBuffer;


    /* Translate BufferArg to an Named object */

    Node = FUNC2 (BufferArg);
    if (!Node || (Node == AcpiGbl_RootNode))
    {
        FUNC5 ("Invalid argument: %s\n", BufferArg);
        return;
    }

    /* We must have a buffer object */

    if (Node->Type != ACPI_TYPE_BUFFER)
    {
        FUNC5 ("Not a Buffer object, cannot be a template: %s\n",
            BufferArg);
        return;
    }

    ReturnBuffer.Length = ACPI_DEBUG_BUFFER_SIZE;
    ReturnBuffer.Pointer = AcpiGbl_DbBuffer;

    /* Attempt to convert the raw buffer to a resource list */

    Status = FUNC6 (Node->Object, &ReturnBuffer);

    FUNC3 (ACPI_DB_REDIRECTABLE_OUTPUT);
    AcpiDbgLevel |= ACPI_LV_RESOURCES;

    if (FUNC1 (Status))
    {
        FUNC5 (
            "Could not convert Buffer to a resource list: %s, %s\n",
            BufferArg, FUNC4 (Status));
        goto DumpBuffer;
    }

    /* Now we can dump the resource list */

    FUNC7 (FUNC0 (ACPI_RESOURCE,
        ReturnBuffer.Pointer));

DumpBuffer:
    FUNC5 ("\nRaw data buffer:\n");
    FUNC8 ((UINT8 *) Node->Object->Buffer.Pointer,
        Node->Object->Buffer.Length,
        DB_BYTE_DISPLAY, ACPI_UINT32_MAX);

    FUNC3 (ACPI_DB_CONSOLE_OUTPUT);
    return;
}