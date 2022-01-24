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
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_4__ {char* Value; } ;
typedef  TYPE_1__ DT_FIELD ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ASL_ERROR ; 
 int /*<<< orphan*/  ASL_MSG_INVALID_UUID ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  AslGbl_MsgBuffer ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static ACPI_STATUS
FUNC5 (
    UINT8                   *Buffer,
    DT_FIELD                *Field,
    UINT32                  ByteLength)
{
    char                    *InString;
    ACPI_STATUS             Status;


    InString = Field->Value;

    Status = FUNC2 (InString);
    if (FUNC0 (Status))
    {
        FUNC4 (AslGbl_MsgBuffer, "%s", Field->Value);
        FUNC3 (ASL_ERROR, ASL_MSG_INVALID_UUID, Field, AslGbl_MsgBuffer);
    }
    else
    {
        FUNC1 (InString, Buffer);
    }

    return (Status);
}