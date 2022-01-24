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
struct TYPE_7__ {int /*<<< orphan*/  _tried; } ;
struct TYPE_6__ {TYPE_2__* csp; } ;
typedef  TYPE_1__ TERMINAL_CONTROL_BLOCK ;
typedef  TYPE_2__ SCREEN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ERR ; 
 int OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ keypad_local ; 
 scalar_t__ keypad_xmit ; 

__attribute__((used)) static int
FUNC3(TERMINAL_CONTROL_BLOCK * TCB, int flag)
{
    int ret = ERR;
    SCREEN *sp;

    FUNC0();

    sp = TCB->csp;

    if (sp) {
	if (flag) {
	    (void) FUNC1(sp, "keypad_xmit", keypad_xmit);
	} else if (!flag && keypad_local) {
	    (void) FUNC1(sp, "keypad_local", keypad_local);
	}
	if (flag && !sp->_tried) {
	    FUNC2(sp);
	    sp->_tried = TRUE;
	}
	ret = OK;
    }

    return ret;
}