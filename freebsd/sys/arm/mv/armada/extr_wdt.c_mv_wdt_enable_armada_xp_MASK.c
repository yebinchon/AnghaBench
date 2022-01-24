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

/* Variables and functions */
 int /*<<< orphan*/  BRIDGE_IRQ_CAUSE_ARMADAXP ; 
 int CPU_TIMER2_AUTO ; 
 int CPU_TIMER2_EN ; 
 int CPU_TIMER_WD_25MHZ_EN ; 
 int IRQ_TIMER_WD_CLR_ARMADAXP ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(void)
{
	uint32_t val, irq_cause;
	irq_cause = FUNC3(BRIDGE_IRQ_CAUSE_ARMADAXP);
	irq_cause &= IRQ_TIMER_WD_CLR_ARMADAXP;
	FUNC4(BRIDGE_IRQ_CAUSE_ARMADAXP, irq_cause);

	FUNC2();

	val = FUNC0();
	val |= CPU_TIMER2_EN | CPU_TIMER2_AUTO | CPU_TIMER_WD_25MHZ_EN;
	FUNC1(val);
}