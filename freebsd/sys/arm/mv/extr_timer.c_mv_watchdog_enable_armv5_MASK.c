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
 int /*<<< orphan*/  BRIDGE_IRQ_MASK ; 
 int CPU_TIMER2_AUTO ; 
 int CPU_TIMER2_EN ; 
 int IRQ_TIMER_WD_MASK ; 
 int /*<<< orphan*/  RSTOUTn_MASK ; 
 int WD_RST_OUT_EN ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* timer_softc ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(void)
{
	uint32_t val, irq_cause, irq_mask;

	irq_cause = FUNC2(timer_softc->config->bridge_irq_cause);
	irq_cause &= timer_softc->config->irq_timer_wd_clr;
	FUNC3(timer_softc->config->bridge_irq_cause, irq_cause);

	irq_mask = FUNC2(BRIDGE_IRQ_MASK);
	irq_mask |= IRQ_TIMER_WD_MASK;
	FUNC3(BRIDGE_IRQ_MASK, irq_mask);

	val = FUNC2(RSTOUTn_MASK);
	val |= WD_RST_OUT_EN;
	FUNC3(RSTOUTn_MASK, val);

	val = FUNC0();
	val |= CPU_TIMER2_EN | CPU_TIMER2_AUTO;
	FUNC1(val);
}