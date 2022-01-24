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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * lineedit_prompt ; 
 int /*<<< orphan*/ * ntp_el ; 
 int /*<<< orphan*/ * ntp_hist ; 
 scalar_t__ ntp_readline_initted ; 

void
FUNC3(
	void
	)
{
#ifdef LE_EDITLINE
	if (ntp_el) {
		el_end(ntp_el);
		ntp_el = NULL;

		history_end(ntp_hist);
		ntp_hist = NULL;
	}
#endif	/* LE_EDITLINE */

	if (lineedit_prompt) {
		FUNC1(lineedit_prompt);
		lineedit_prompt = NULL;
	}

	ntp_readline_initted = 0;
}