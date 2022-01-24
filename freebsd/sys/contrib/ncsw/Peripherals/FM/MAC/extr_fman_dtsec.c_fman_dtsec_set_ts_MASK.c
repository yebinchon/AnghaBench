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
struct dtsec_regs {int /*<<< orphan*/  tctrl; int /*<<< orphan*/  rctrl; } ;

/* Variables and functions */
 int DTSEC_TCTRL_TTSE ; 
 int RCTRL_RTSE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 

void FUNC2(struct dtsec_regs *regs, bool en)
{
	if (en) {
		FUNC1(FUNC0(&regs->rctrl) | RCTRL_RTSE,
				&regs->rctrl);
		FUNC1(FUNC0(&regs->tctrl) | DTSEC_TCTRL_TTSE,
				&regs->tctrl);
	} else {
		FUNC1(FUNC0(&regs->rctrl) & ~RCTRL_RTSE,
				&regs->rctrl);
		FUNC1(FUNC0(&regs->tctrl) & ~DTSEC_TCTRL_TTSE,
				&regs->tctrl);
	}
}