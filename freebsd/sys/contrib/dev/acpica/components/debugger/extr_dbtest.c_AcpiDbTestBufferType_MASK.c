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
typedef  int UINT8 ;
typedef  int UINT32 ;
struct TYPE_6__ {int Length; int* Pointer; } ;
struct TYPE_7__ {TYPE_1__ Buffer; int /*<<< orphan*/  Type; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_2__ ACPI_OBJECT ;
typedef  int /*<<< orphan*/  ACPI_NAMESPACE_NODE ;

/* Variables and functions */
 int* FUNC0 (int) ; 
 int /*<<< orphan*/  ACPI_DEBUG_LENGTH_FORMAT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  ACPI_TYPE_BUFFER ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  BUFFER_FILL_VALUE ; 
 scalar_t__ FUNC9 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC10 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ACPI_STATUS
FUNC11 (
    ACPI_NAMESPACE_NODE     *Node,
    UINT32                  BitLength)
{
    ACPI_OBJECT             *Temp1 = NULL;
    ACPI_OBJECT             *Temp2 = NULL;
    ACPI_OBJECT             *Temp3 = NULL;
    UINT8                   *Buffer;
    ACPI_OBJECT             WriteValue;
    ACPI_STATUS             Status;
    UINT32                  ByteLength;
    UINT32                  i;
    UINT8                   ExtraBits;


    ByteLength = FUNC4 (BitLength);
    if (ByteLength == 0)
    {
        FUNC8 (" Ignoring zero length buffer");
        return (AE_OK);
    }

    /* Allocate a local buffer */

    Buffer = FUNC0 (ByteLength);
    if (!Buffer)
    {
        return (AE_NO_MEMORY);
    }

    /* Read the original value */

    Status = FUNC5 (Node, ACPI_TYPE_BUFFER, &Temp1);
    if (FUNC1 (Status))
    {
        goto Exit;
    }

    /* Emit a few bytes of the buffer */

    FUNC8 (ACPI_DEBUG_LENGTH_FORMAT, BitLength, Temp1->Buffer.Length);
    for (i = 0; ((i < 8) && (i < ByteLength)); i++)
    {
        FUNC8 (" %2.2X", Temp1->Buffer.Pointer[i]);
    }
    FUNC8 ("...  ");

    /*
     * Write a new value.
     *
     * Handle possible extra bits at the end of the buffer. Can
     * happen for FieldUnits larger than an integer, but the bit
     * count is not an integral number of bytes. Zero out the
     * unused bits.
     */
    FUNC10 (Buffer, BUFFER_FILL_VALUE, ByteLength);
    ExtraBits = BitLength % 8;
    if (ExtraBits)
    {
        Buffer [ByteLength - 1] = FUNC3 (ExtraBits);
    }

    WriteValue.Type = ACPI_TYPE_BUFFER;
    WriteValue.Buffer.Length = ByteLength;
    WriteValue.Buffer.Pointer = Buffer;

    Status = FUNC6 (Node, &WriteValue);
    if (FUNC1 (Status))
    {
        goto Exit;
    }

    /* Ensure that we can read back the new value */

    Status = FUNC5 (Node, ACPI_TYPE_BUFFER, &Temp2);
    if (FUNC1 (Status))
    {
        goto Exit;
    }

    if (FUNC9 (Temp2->Buffer.Pointer, Buffer, ByteLength))
    {
        FUNC8 (" MISMATCH 2: New buffer value");
    }

    /* Write back the original value */

    WriteValue.Buffer.Length = ByteLength;
    WriteValue.Buffer.Pointer = Temp1->Buffer.Pointer;

    Status = FUNC6 (Node, &WriteValue);
    if (FUNC1 (Status))
    {
        goto Exit;
    }

    /* Ensure that we can read back the original value */

    Status = FUNC5 (Node, ACPI_TYPE_BUFFER, &Temp3);
    if (FUNC1 (Status))
    {
        goto Exit;
    }

    if (FUNC9 (Temp1->Buffer.Pointer,
            Temp3->Buffer.Pointer, ByteLength))
    {
        FUNC8 (" MISMATCH 3: While restoring original buffer");
    }

Exit:
    FUNC2 (Buffer);
    if (Temp1) {FUNC7 (Temp1);}
    if (Temp2) {FUNC7 (Temp2);}
    if (Temp3) {FUNC7 (Temp3);}
    return (Status);
}