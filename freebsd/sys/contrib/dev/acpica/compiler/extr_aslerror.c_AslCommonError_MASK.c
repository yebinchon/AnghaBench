#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  UINT32 ;
typedef  int /*<<< orphan*/  UINT16 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC2 (
    UINT8                   Level,
    UINT16                  MessageId,
    UINT32                  CurrentLineNumber,
    UINT32                  LogicalLineNumber,
    UINT32                  LogicalByteOffset,
    UINT32                  Column,
    char                    *Filename,
    char                    *ExtraMessage)
{
    /* Check if user wants to ignore this exception */

    if (FUNC0 (Level, MessageId))
    {
        return;
    }

    FUNC1 (Level, MessageId, CurrentLineNumber, LogicalLineNumber,
        LogicalByteOffset, Column, Filename, ExtraMessage,
        NULL, NULL);
}