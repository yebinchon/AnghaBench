#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT8 ;
typedef  scalar_t__ UINT32 ;
struct TYPE_7__ {scalar_t__ Length; int /*<<< orphan*/ * Pointer; int /*<<< orphan*/  Flags; } ;
struct TYPE_8__ {TYPE_1__ Buffer; } ;
typedef  scalar_t__ ACPI_SIZE ;
typedef  TYPE_2__ ACPI_OPERAND_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  ACPI_TYPE_BUFFER ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AOPOBJ_DATA_VALID ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  UtCreateBufferObject ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

ACPI_OPERAND_OBJECT *
FUNC6 (
    ACPI_SIZE               BufferSize)
{
    ACPI_OPERAND_OBJECT     *BufferDesc;
    UINT8                   *Buffer = NULL;


    FUNC2 (UtCreateBufferObject, BufferSize);


    /* Create a new Buffer object */

    BufferDesc = FUNC3 (ACPI_TYPE_BUFFER);
    if (!BufferDesc)
    {
        FUNC5 (NULL);
    }

    /* Create an actual buffer only if size > 0 */

    if (BufferSize > 0)
    {
        /* Allocate the actual buffer */

        Buffer = FUNC0 (BufferSize);
        if (!Buffer)
        {
            FUNC1 ((AE_INFO, "Could not allocate size %u",
                (UINT32) BufferSize));

            FUNC4 (BufferDesc);
            FUNC5 (NULL);
        }
    }

    /* Complete buffer object initialization */

    BufferDesc->Buffer.Flags |= AOPOBJ_DATA_VALID;
    BufferDesc->Buffer.Pointer = Buffer;
    BufferDesc->Buffer.Length = (UINT32) BufferSize;

    /* Return the new buffer descriptor */

    FUNC5 (BufferDesc);
}