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
 int FM_DONE ; 
 int FM_FAIL ; 
 int FM_PEND ; 
 int /*<<< orphan*/ * done ; 
 int dprompt_free_mask ; 
 int /*<<< orphan*/ * fail ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * pend ; 

void
FUNC1(void)
{
	if ((dprompt_free_mask & FM_DONE) != 0) {
		dprompt_free_mask ^= FM_DONE;
		FUNC0(done);
		done = NULL;
	}
	if ((dprompt_free_mask & FM_FAIL) != 0) {
		dprompt_free_mask ^= FM_FAIL;
		FUNC0(fail);
		fail = NULL;
	}
	if ((dprompt_free_mask & FM_PEND) != 0) {
		dprompt_free_mask ^= FM_PEND;
		FUNC0(pend);
		pend = NULL;
	}
}