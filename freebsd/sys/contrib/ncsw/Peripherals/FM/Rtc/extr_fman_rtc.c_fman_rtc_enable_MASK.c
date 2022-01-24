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
typedef  int uint32_t ;
struct rtc_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FMAN_RTC_TMR_CTRL_TE ; 
 int FMAN_RTC_TMR_CTRL_TMSR ; 
 int FUNC1 (struct rtc_regs*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtc_regs*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtc_regs*,int /*<<< orphan*/ ) ; 

void FUNC4(struct rtc_regs *regs, bool reset_clock)
{
	uint32_t tmr_ctrl = FUNC1(regs);

	/* TODO check that no timestamping MACs are working in this stage. */
	if (reset_clock) {
		FUNC2(regs, (tmr_ctrl | FMAN_RTC_TMR_CTRL_TMSR));

		FUNC0(10);
		/* Clear TMR_OFF */
		FUNC3(regs, 0);
	}

	FUNC2(regs, (tmr_ctrl | FMAN_RTC_TMR_CTRL_TE));
}