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
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  UINT16 ;
struct TYPE_4__ {int /*<<< orphan*/ * Filename; int /*<<< orphan*/  Column; int /*<<< orphan*/  LogicalByteOffset; int /*<<< orphan*/  LogicalLineNumber; int /*<<< orphan*/  LineNumber; } ;
struct TYPE_5__ {TYPE_1__ Asl; } ;
typedef  TYPE_2__ ACPI_PARSE_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 

void
FUNC1 (
    UINT8                   Level,
    UINT16                  MessageId,
    ACPI_PARSE_OBJECT       *Op,
    char                    *ExtraMessage)
{
    if (Op)
    {
        FUNC0 (Level, MessageId, Op->Asl.LineNumber,
            Op->Asl.LogicalLineNumber,
            Op->Asl.LogicalByteOffset,
            Op->Asl.Column,
            Op->Asl.Filename, ExtraMessage);
    }
    else
    {
        FUNC0 (Level, MessageId, 0,
            0, 0, 0, NULL, ExtraMessage);
    }
}