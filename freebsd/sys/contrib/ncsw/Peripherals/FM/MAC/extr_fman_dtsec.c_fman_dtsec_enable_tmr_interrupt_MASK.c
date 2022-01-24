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
struct dtsec_regs {int /*<<< orphan*/  tmr_pemask; } ;

/* Variables and functions */
 int TMR_PEMASK_TSREEN ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 

void FUNC2(struct dtsec_regs *regs)
{
	FUNC1(FUNC0(&regs->tmr_pemask) | TMR_PEMASK_TSREEN,
			&regs->tmr_pemask);
}