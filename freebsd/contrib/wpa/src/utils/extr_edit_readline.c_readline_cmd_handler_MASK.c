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
struct TYPE_3__ {int /*<<< orphan*/  line; } ;
typedef  TYPE_1__ HIST_ENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  edit_cb_ctx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(char *cmd)
{
	if (cmd && *cmd) {
		HIST_ENTRY *h;
		while (FUNC3())
			;
		h = FUNC5();
		if (h == NULL || FUNC4(cmd, h->line) != 0)
			FUNC0(cmd);
		FUNC3();
	}
	if (cmd == NULL) {
		FUNC2(edit_cb_ctx);
		return;
	}
	FUNC6(cmd);
	FUNC1(edit_cb_ctx, cmd);
}