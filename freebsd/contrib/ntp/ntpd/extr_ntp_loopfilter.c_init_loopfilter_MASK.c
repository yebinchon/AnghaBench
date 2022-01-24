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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  clock_jitter ; 
 scalar_t__ clock_minstep ; 
 int freq_cnt ; 
 int /*<<< orphan*/  ntp_minpoll ; 
 int /*<<< orphan*/  sys_poll ; 
 int /*<<< orphan*/  sys_precision ; 

void
FUNC1(void)
{
	/*
	 * Initialize state variables.
	 */
	sys_poll = ntp_minpoll;
	clock_jitter = FUNC0(sys_precision);
	freq_cnt = (int)clock_minstep;
}