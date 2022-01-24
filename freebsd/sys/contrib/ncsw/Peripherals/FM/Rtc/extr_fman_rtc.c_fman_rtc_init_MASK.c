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
struct rtc_regs {int /*<<< orphan*/  tmr_prsc; } ;
struct rtc_cfg {int src_clk; scalar_t__* alarm_polarity; scalar_t__* trigger_polarity; scalar_t__ bypass; int /*<<< orphan*/  timer_slave_mode; scalar_t__ invert_output_clk_phase; scalar_t__ invert_input_clk_phase; } ;

/* Variables and functions */
 scalar_t__ E_FMAN_RTC_ALARM_POLARITY_ACTIVE_LOW ; 
#define  E_FMAN_RTC_SOURCE_CLOCK_OSCILATOR 129 
#define  E_FMAN_RTC_SOURCE_CLOCK_SYSTEM 128 
 scalar_t__ E_FMAN_RTC_TRIGGER_ON_FALLING_EDGE ; 
 int FMAN_RTC_TMR_CTRL_ALMP1 ; 
 int FMAN_RTC_TMR_CTRL_BYP ; 
 int FMAN_RTC_TMR_CTRL_CIPH ; 
 int FMAN_RTC_TMR_CTRL_CKSEL_EXT_CLK ; 
 int FMAN_RTC_TMR_CTRL_CKSEL_MAC_CLK ; 
 int FMAN_RTC_TMR_CTRL_CKSEL_OSC_CLK ; 
 int FMAN_RTC_TMR_CTRL_COPH ; 
 int FMAN_RTC_TMR_CTRL_ETEP1 ; 
 int FMAN_RTC_TMR_CTRL_TCLK_PERIOD_MASK ; 
 int FMAN_RTC_TMR_CTRL_TCLK_PERIOD_SHIFT ; 
 int /*<<< orphan*/  FMAN_RTC_TMR_TEVENT_ALL ; 
 int /*<<< orphan*/  FUNC0 (struct rtc_regs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtc_regs*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtc_regs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtc_regs*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtc_regs*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtc_regs*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rtc_regs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rtc_regs*) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *) ; 

void FUNC9(struct rtc_cfg *cfg, struct rtc_regs *regs, int num_alarms,
		int num_fipers, int num_ext_triggers, bool init_freq_comp,
		uint32_t freq_compensation, uint32_t output_clock_divisor)
{
	uint32_t            tmr_ctrl;
	int			i;

	FUNC7(regs);

	/* Set the source clock */
	switch (cfg->src_clk) {
	case E_FMAN_RTC_SOURCE_CLOCK_SYSTEM:
		tmr_ctrl = FMAN_RTC_TMR_CTRL_CKSEL_MAC_CLK;
		break;
	case E_FMAN_RTC_SOURCE_CLOCK_OSCILATOR:
		tmr_ctrl = FMAN_RTC_TMR_CTRL_CKSEL_OSC_CLK;
		break;
	default:
		/* Use a clock from the External TMR reference clock.*/
		tmr_ctrl = FMAN_RTC_TMR_CTRL_CKSEL_EXT_CLK;
		break;
	}

	/* whatever period the user picked, the timestamp will advance in '1'
	* every time the period passed. */
	tmr_ctrl |= ((1 << FMAN_RTC_TMR_CTRL_TCLK_PERIOD_SHIFT) &
				FMAN_RTC_TMR_CTRL_TCLK_PERIOD_MASK);

	if (cfg->invert_input_clk_phase)
		tmr_ctrl |= FMAN_RTC_TMR_CTRL_CIPH;
	if (cfg->invert_output_clk_phase)
		tmr_ctrl |= FMAN_RTC_TMR_CTRL_COPH;

	for (i = 0; i < num_alarms; i++) {
		if (cfg->alarm_polarity[i] ==
			E_FMAN_RTC_ALARM_POLARITY_ACTIVE_LOW)
			tmr_ctrl |= (FMAN_RTC_TMR_CTRL_ALMP1 >> i);
	}

	for (i = 0; i < num_ext_triggers; i++)
		if (cfg->trigger_polarity[i] ==
			E_FMAN_RTC_TRIGGER_ON_FALLING_EDGE)
			tmr_ctrl |= (FMAN_RTC_TMR_CTRL_ETEP1 << i);

	if (!cfg->timer_slave_mode && cfg->bypass)
		tmr_ctrl |= FMAN_RTC_TMR_CTRL_BYP;

	FUNC4(regs, tmr_ctrl);
	if (init_freq_comp)
		FUNC1(regs, freq_compensation);

	/* Clear TMR_ALARM registers */
	for (i = 0; i < num_alarms; i++)
		FUNC3(regs, i, 0xFFFFFFFFFFFFFFFFLL);

	/* Clear TMR_TEVENT */
	FUNC0(regs, FMAN_RTC_TMR_TEVENT_ALL);

	/* Initialize TMR_TEMASK */
	FUNC2(regs, 0);

	/* Clear TMR_FIPER registers */
	for (i = 0; i < num_fipers; i++)
		FUNC5(regs, i, 0xFFFFFFFF);

	/* Initialize TMR_PRSC */
	FUNC8(output_clock_divisor, &regs->tmr_prsc);

	/* Clear TMR_OFF */
	FUNC6(regs, 0);
}