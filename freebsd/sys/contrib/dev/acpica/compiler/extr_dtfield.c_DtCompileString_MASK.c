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
typedef  int /*<<< orphan*/  UINT8 ;
typedef  scalar_t__ UINT32 ;
struct TYPE_4__ {char* Value; } ;
typedef  TYPE_1__ DT_FIELD ;

/* Variables and functions */
 int /*<<< orphan*/  ASL_ERROR ; 
 int /*<<< orphan*/  ASL_MSG_STRING_LENGTH ; 
 int /*<<< orphan*/  AslGbl_MsgBuffer ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,char*) ; 
 scalar_t__ FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4 (
    UINT8                   *Buffer,
    DT_FIELD                *Field,
    UINT32                  ByteLength)
{
    UINT32                  Length;


    Length = FUNC3 (Field->Value);

    /* Check if the string is too long for the field */

    if (Length > ByteLength)
    {
        FUNC2 (AslGbl_MsgBuffer,
            "Maximum %u characters, found %u characters [%s]",
            ByteLength, Length, Field->Value);
        FUNC0 (ASL_ERROR, ASL_MSG_STRING_LENGTH, Field, AslGbl_MsgBuffer);
        Length = ByteLength;
    }

    FUNC1 (Buffer, Field->Value, Length);
}