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
 int /*<<< orphan*/  MIN_READY_MARK ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  own_pool_ready ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(void)
{
	own_pool_ready++;
	FUNC1(MSG_DEBUG, "random: Mark internal entropy pool to be "
		   "ready (count=%u/%u)", own_pool_ready, MIN_READY_MARK);
	FUNC0();
}