#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * Filename; int /*<<< orphan*/  Column; int /*<<< orphan*/  LogicalByteOffset; int /*<<< orphan*/  LogicalLineNumber; int /*<<< orphan*/  LineNumber; } ;
struct TYPE_5__ {TYPE_1__ Asl; } ;
typedef  scalar_t__ BOOLEAN ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_2__ ACPI_PARSE_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  ASL_ERROR ; 
 int /*<<< orphan*/  ASL_MSG_CORE_EXCEPTION ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AslGbl_MsgBuffer ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,char*) ; 

void
FUNC4 (
    ACPI_PARSE_OBJECT       *Op,
    ACPI_STATUS             Status,
    char                    *ExtraMessage,
    BOOLEAN                 Abort)
{

    FUNC3 (AslGbl_MsgBuffer, "%s %s", FUNC0 (Status), ExtraMessage);

    if (Op)
    {
        FUNC2 (ASL_ERROR, ASL_MSG_CORE_EXCEPTION,
            Op->Asl.LineNumber,
            Op->Asl.LogicalLineNumber,
            Op->Asl.LogicalByteOffset,
            Op->Asl.Column,
            Op->Asl.Filename, AslGbl_MsgBuffer);
    }
    else
    {
        FUNC2 (ASL_ERROR, ASL_MSG_CORE_EXCEPTION,
            0, 0, 0, 0, NULL, AslGbl_MsgBuffer);
    }

    if (Abort)
    {
        FUNC1 ();
    }
}