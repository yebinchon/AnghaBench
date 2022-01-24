#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct TYPE_3__* Next; int /*<<< orphan*/  Value; int /*<<< orphan*/  Name; int /*<<< orphan*/  Flags; int /*<<< orphan*/  TableOffset; int /*<<< orphan*/  Column; int /*<<< orphan*/  NameColumn; int /*<<< orphan*/  ByteOffset; int /*<<< orphan*/  Line; } ;
typedef  TYPE_1__ DT_FIELD ;

/* Variables and functions */
 int /*<<< orphan*/  ASL_DEBUG_OUTPUT ; 
 int /*<<< orphan*/  AslGbl_DebugFlag ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 

void
FUNC1 (
    DT_FIELD                *Field)
{

    if (!AslGbl_DebugFlag || !Field)
    {
        return;
    }

    FUNC0 (ASL_DEBUG_OUTPUT,  "\nField List:\n"
        "LineNo   ByteOff  NameCol  Column   TableOff "
        "Flags %32s : %s\n\n", "Name", "Value");

    while (Field)
    {
        FUNC0 (ASL_DEBUG_OUTPUT,
            "%.08X %.08X %.08X %.08X %.08X %2.2X    %32s : %s\n",
            Field->Line, Field->ByteOffset, Field->NameColumn,
            Field->Column, Field->TableOffset, Field->Flags,
            Field->Name, Field->Value);

        Field = Field->Next;
    }

    FUNC0 (ASL_DEBUG_OUTPUT,  "\n\n");
}