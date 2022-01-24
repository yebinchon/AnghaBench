#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_4__ {int /*<<< orphan*/ * Pointer; } ;
typedef  int /*<<< orphan*/  BOOLEAN ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  scalar_t__ ACPI_SIZE ;
typedef  int /*<<< orphan*/  ACPI_NAMESPACE_NODE ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;
typedef  TYPE_1__ ACPI_BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_OK ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  NsHandleToPathname ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC7 (
    ACPI_HANDLE             TargetHandle,
    ACPI_BUFFER             *Buffer,
    BOOLEAN                 NoTrailing)
{
    ACPI_STATUS             Status;
    ACPI_NAMESPACE_NODE     *Node;
    ACPI_SIZE               RequiredSize;


    FUNC2 (NsHandleToPathname, TargetHandle);


    Node = FUNC4 (TargetHandle);
    if (!Node)
    {
        FUNC6 (AE_BAD_PARAMETER);
    }

    /* Determine size required for the caller buffer */

    RequiredSize = FUNC3 (Node, NULL, 0, NoTrailing);
    if (!RequiredSize)
    {
        FUNC6 (AE_BAD_PARAMETER);
    }

    /* Validate/Allocate/Clear caller buffer */

    Status = FUNC5 (Buffer, RequiredSize);
    if (FUNC1 (Status))
    {
        FUNC6 (Status);
    }

    /* Build the path in the caller buffer */

    (void) FUNC3 (Node, Buffer->Pointer,
        RequiredSize, NoTrailing);

    FUNC0 ((ACPI_DB_EXEC, "%s [%X]\n",
        (char *) Buffer->Pointer, (UINT32) RequiredSize));
    FUNC6 (AE_OK);
}