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
 int FMAN_RTC_TMR_CTRL_PP1L ; 
 int FMAN_RTC_TMR_CTRL_PP2L ; 
 int FMAN_RTC_TMR_TEVENT_ETS1 ; 
 int FMAN_RTC_TMR_TEVENT_ETS2 ; 
 int /*<<< orphan*/  FUNC0 (struct rtc_regs*,int) ; 
 int FUNC1 (struct rtc_regs*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtc_regs*,int) ; 

void FUNC3(struct rtc_regs *regs, int id, bool enable,
						bool use_pulse_as_input)
{
	uint32_t    tmpReg;
	if (enable) {
		if (id == 0)
			tmpReg = FMAN_RTC_TMR_TEVENT_ETS1;
		else
			tmpReg = FMAN_RTC_TMR_TEVENT_ETS2;
		FUNC0(regs, tmpReg);
	}
	if (use_pulse_as_input)	{
		if (id == 0)
			tmpReg = FMAN_RTC_TMR_CTRL_PP1L;
		else
			tmpReg = FMAN_RTC_TMR_CTRL_PP2L;
		FUNC2(regs, FUNC1(regs) | tmpReg);
	}
}