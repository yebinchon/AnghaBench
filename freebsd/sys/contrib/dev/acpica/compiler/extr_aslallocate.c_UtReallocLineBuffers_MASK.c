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
typedef  int UINT32 ;

/* Variables and functions */
 int /*<<< orphan*/  ASL_ERROR ; 
 int /*<<< orphan*/  ASL_MSG_BUFFER_ALLOCATION ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 char* FUNC4 (char*,int) ; 

void
FUNC5 (
    char                    **Buffer,
    UINT32                  OldSize,
    UINT32                  NewSize)
{

    *Buffer = FUNC4 (*Buffer, NewSize);
    if (*Buffer)
    {
        FUNC2 (*Buffer + OldSize, 0, NewSize - OldSize);
        return;
    }

    FUNC3 ("Could not increase line buffer size from %u to %u\n",
        OldSize, NewSize);

    FUNC1 (ASL_ERROR, ASL_MSG_BUFFER_ALLOCATION, NULL, NULL);
    FUNC0 ();
}