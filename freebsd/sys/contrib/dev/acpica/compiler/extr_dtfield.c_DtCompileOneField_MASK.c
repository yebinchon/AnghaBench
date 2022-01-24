#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT8 ;
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_9__ {int /*<<< orphan*/  Value; } ;
typedef  TYPE_1__ DT_FIELD ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ASL_MSG_COMPILER_INTERNAL ; 
#define  DT_FIELD_TYPE_BUFFER 133 
#define  DT_FIELD_TYPE_DEVICE_PATH 132 
#define  DT_FIELD_TYPE_INTEGER 131 
#define  DT_FIELD_TYPE_STRING 130 
#define  DT_FIELD_TYPE_UNICODE 129 
#define  DT_FIELD_TYPE_UUID 128 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,char*) ; 

void
FUNC7 (
    UINT8                   *Buffer,
    DT_FIELD                *Field,
    UINT32                  ByteLength,
    UINT8                   Type,
    UINT8                   Flags)
{
    ACPI_STATUS             Status;


    switch (Type)
    {
    case DT_FIELD_TYPE_INTEGER:

        FUNC2 (Buffer, Field, ByteLength, Flags);
        break;

    case DT_FIELD_TYPE_STRING:

        FUNC3 (Buffer, Field, ByteLength);
        break;

    case DT_FIELD_TYPE_UUID:

        Status = FUNC5 (Buffer, Field, ByteLength);
        if (FUNC0 (Status))
        {
            break;
        }

        /* Fall through. */

    case DT_FIELD_TYPE_BUFFER:

        FUNC1 (Buffer, Field->Value, Field, ByteLength);
        break;

    case DT_FIELD_TYPE_UNICODE:

        FUNC4 (Buffer, Field, ByteLength);
        break;

    case DT_FIELD_TYPE_DEVICE_PATH:

        break;

    default:

        FUNC6 (ASL_MSG_COMPILER_INTERNAL, Field, "Invalid field type");
        break;
    }
}