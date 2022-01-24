#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_4__ {TYPE_1__* config; } ;
struct TYPE_3__ {int irq_timer_wd_clr; int /*<<< orphan*/  bridge_irq_cause; } ;

/* Variables and functions */
 int CPU_TIMER2_AUTO ; 
 int CPU_TIMER2_EN ; 
 int /*<<< orphan*/  RSTOUTn_MASK_ARMV7 ; 
 int RSTOUTn_MASK_WD ; 
 int WD_CPU0_MASK ; 
 int WD_GLOBAL_MASK ; 
 int /*<<< orphan*/  WD_RSTOUTn_MASK ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_2__* timer_softc ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC8(void)
{
	uint32_t val, irq_cause;

	val = FUNC4(WD_RSTOUTn_MASK);
	val &= ~(WD_GLOBAL_MASK | WD_CPU0_MASK);
	FUNC7(WD_RSTOUTn_MASK, val);

	val = FUNC3(RSTOUTn_MASK_ARMV7);
	val |= RSTOUTn_MASK_WD;
	FUNC6(RSTOUTn_MASK_ARMV7, RSTOUTn_MASK_WD);

	irq_cause = FUNC2(timer_softc->config->bridge_irq_cause);
	irq_cause &= timer_softc->config->irq_timer_wd_clr;
	FUNC5(timer_softc->config->bridge_irq_cause, irq_cause);

	val = FUNC0();
	val &= ~(CPU_TIMER2_EN | CPU_TIMER2_AUTO);
	FUNC1(val);
}