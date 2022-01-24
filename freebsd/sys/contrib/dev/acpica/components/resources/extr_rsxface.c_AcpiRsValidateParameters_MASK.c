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
struct TYPE_4__ {scalar_t__ Type; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_1__ ACPI_NAMESPACE_NODE ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;
typedef  int /*<<< orphan*/  ACPI_BUFFER ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_TYPE_DEVICE ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  AE_TYPE ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RsValidateParameters ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ACPI_STATUS
FUNC5 (
    ACPI_HANDLE             DeviceHandle,
    ACPI_BUFFER             *Buffer,
    ACPI_NAMESPACE_NODE     **ReturnNode)
{
    ACPI_STATUS             Status;
    ACPI_NAMESPACE_NODE     *Node;


    FUNC1 (RsValidateParameters);


    /*
     * Must have a valid handle to an ACPI device
     */
    if (!DeviceHandle)
    {
        FUNC4 (AE_BAD_PARAMETER);
    }

    Node = FUNC2 (DeviceHandle);
    if (!Node)
    {
        FUNC4 (AE_BAD_PARAMETER);
    }

    if (Node->Type != ACPI_TYPE_DEVICE)
    {
        FUNC4 (AE_TYPE);
    }

    /*
     * Validate the user buffer object
     *
     * if there is a non-zero buffer length we also need a valid pointer in
     * the buffer. If it's a zero buffer length, we'll be returning the
     * needed buffer size (later), so keep going.
     */
    Status = FUNC3 (Buffer);
    if (FUNC0 (Status))
    {
        FUNC4 (Status);
    }

    *ReturnNode = Node;
    FUNC4 (AE_OK);
}