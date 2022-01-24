#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  term_names; } ;
struct TYPE_8__ {TYPE_1__ type; } ;
struct TYPE_7__ {int /*<<< orphan*/  _keytry; } ;
typedef  int /*<<< orphan*/  TERMINAL_CONTROL_BLOCK ;
typedef  TYPE_2__ SCREEN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  KEY_MOUSE ; 
 scalar_t__ OK ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_4__* FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ key_mouse ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  xterm_kmous ; 

__attribute__((used)) static void
FUNC7(TERMINAL_CONTROL_BLOCK * TCB)
{
    SCREEN *sp;

    FUNC0();
    FUNC1();

    /* we know how to recognize mouse events under "xterm" */
    if (sp != 0) {
	if (key_mouse != 0) {
	    if (!FUNC5(key_mouse, xterm_kmous)
		|| FUNC6(FUNC2(sp)->type.term_names, "xterm") != 0) {
		FUNC4(sp);
	    }
	} else if (FUNC6(FUNC2(sp)->type.term_names, "xterm") != 0) {
	    if (FUNC3(&(sp->_keytry), xterm_kmous, KEY_MOUSE) == OK)
		FUNC4(sp);
	}
    }
}