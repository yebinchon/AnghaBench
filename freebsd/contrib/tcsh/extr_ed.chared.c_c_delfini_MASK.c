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

/* Variables and functions */
 int ActionFlag ; 
 scalar_t__ ActionPos ; 
 scalar_t__ Cursor ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int TCSHOP_INSERT ; 
 int TCSHOP_NOP ; 
 int UndoAction ; 
 scalar_t__ UndoPtr ; 
 int UndoSize ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4(void)		/* Finish up delete action */
{
    int Size;

    if (ActionFlag & TCSHOP_INSERT)
	FUNC1(0);

    ActionFlag = TCSHOP_NOP;

    if (ActionPos == 0) 
	return;

    UndoAction = TCSHOP_INSERT;

    if (Cursor > ActionPos) {
	Size = (int) (Cursor-ActionPos);
	FUNC3(Size); 
	FUNC0();
    }
    else if (Cursor < ActionPos) {
	Size = (int)(ActionPos-Cursor);
	FUNC2(Size);
    }
    else  {
	Size = 1;
	FUNC2(Size);
    }
    UndoPtr = Cursor;
    UndoSize = Size;
}