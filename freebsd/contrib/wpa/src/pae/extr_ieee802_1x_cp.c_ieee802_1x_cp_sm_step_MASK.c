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
struct ieee802_1x_cp_sm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ieee802_1x_cp_sm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ieee802_1x_cp_sm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ieee802_1x_cp_step_cb ; 

void FUNC2(void *cp_ctx)
{
	/*
	 * Run ieee802_1x_cp_step_run from a registered timeout
	 * to make sure that other possible timeouts/events are processed
	 * and to avoid long function call chains.
	 */
	struct ieee802_1x_cp_sm *sm = cp_ctx;
	FUNC0(ieee802_1x_cp_step_cb, sm, NULL);
	FUNC1(0, 0, ieee802_1x_cp_step_cb, sm, NULL);
}