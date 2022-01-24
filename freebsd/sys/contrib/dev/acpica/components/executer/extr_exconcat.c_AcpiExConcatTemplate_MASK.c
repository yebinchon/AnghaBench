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
typedef  int UINT8 ;
struct TYPE_8__ {int* Pointer; } ;
struct TYPE_9__ {TYPE_1__ Buffer; } ;
typedef  int /*<<< orphan*/  AML_RESOURCE_END_TAG ;
typedef  int /*<<< orphan*/  ACPI_WALK_STATE ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int ACPI_SIZE ;
typedef  TYPE_2__ ACPI_OPERAND_OBJECT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int*,int*) ; 
 int ACPI_RESOURCE_NAME_END_TAG ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 TYPE_2__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int**) ; 
 int /*<<< orphan*/  ExConcatTemplate ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC7 (
    ACPI_OPERAND_OBJECT     *Operand0,
    ACPI_OPERAND_OBJECT     *Operand1,
    ACPI_OPERAND_OBJECT     **ActualReturnDesc,
    ACPI_WALK_STATE         *WalkState)
{
    ACPI_STATUS             Status;
    ACPI_OPERAND_OBJECT     *ReturnDesc;
    UINT8                   *NewBuf;
    UINT8                   *EndTag;
    ACPI_SIZE               Length0;
    ACPI_SIZE               Length1;
    ACPI_SIZE               NewLength;


    FUNC1 (ExConcatTemplate);


    /*
     * Find the EndTag descriptor in each resource template.
     * Note1: returned pointers point TO the EndTag, not past it.
     * Note2: zero-length buffers are allowed; treated like one EndTag
     */

    /* Get the length of the first resource template */

    Status = FUNC4 (Operand0, &EndTag);
    if (FUNC0 (Status))
    {
        FUNC6 (Status);
    }

    Length0 = FUNC2 (EndTag, Operand0->Buffer.Pointer);

    /* Get the length of the second resource template */

    Status = FUNC4 (Operand1, &EndTag);
    if (FUNC0 (Status))
    {
        FUNC6 (Status);
    }

    Length1 = FUNC2 (EndTag, Operand1->Buffer.Pointer);

    /* Combine both lengths, minimum size will be 2 for EndTag */

    NewLength = Length0 + Length1 + sizeof (AML_RESOURCE_END_TAG);

    /* Create a new buffer object for the result (with one EndTag) */

    ReturnDesc = FUNC3 (NewLength);
    if (!ReturnDesc)
    {
        FUNC6 (AE_NO_MEMORY);
    }

    /*
     * Copy the templates to the new buffer, 0 first, then 1 follows. One
     * EndTag descriptor is copied from Operand1.
     */
    NewBuf = ReturnDesc->Buffer.Pointer;
    FUNC5 (NewBuf, Operand0->Buffer.Pointer, Length0);
    FUNC5 (NewBuf + Length0, Operand1->Buffer.Pointer, Length1);

    /* Insert EndTag and set the checksum to zero, means "ignore checksum" */

    NewBuf[NewLength - 1] = 0;
    NewBuf[NewLength - 2] = ACPI_RESOURCE_NAME_END_TAG | 1;

    /* Return the completed resource template */

    *ActualReturnDesc = ReturnDesc;
    FUNC6 (AE_OK);
}