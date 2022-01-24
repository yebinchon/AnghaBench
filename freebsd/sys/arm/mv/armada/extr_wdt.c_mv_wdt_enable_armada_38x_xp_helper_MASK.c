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
 int /*<<< orphan*/  BRIDGE_IRQ_CAUSE ; 
 int IRQ_TIMER_WD_CLR ; 
 int /*<<< orphan*/  RSTOUTn_MASK_ARMV7 ; 
 int RSTOUTn_MASK_WD ; 
 int WD_CPU0_MASK ; 
 int WD_GLOBAL_MASK ; 
 int /*<<< orphan*/  WD_RSTOUTn_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void
FUNC6()
{
	uint32_t val, irq_cause;

	irq_cause = FUNC0(BRIDGE_IRQ_CAUSE);
	irq_cause &= IRQ_TIMER_WD_CLR;
	FUNC3(BRIDGE_IRQ_CAUSE, irq_cause);

	val = FUNC2(WD_RSTOUTn_MASK);
	val |= (WD_GLOBAL_MASK | WD_CPU0_MASK);
	FUNC5(WD_RSTOUTn_MASK, val);

	val = FUNC1(RSTOUTn_MASK_ARMV7);
	val &= ~RSTOUTn_MASK_WD;
	FUNC4(RSTOUTn_MASK_ARMV7, val);
}