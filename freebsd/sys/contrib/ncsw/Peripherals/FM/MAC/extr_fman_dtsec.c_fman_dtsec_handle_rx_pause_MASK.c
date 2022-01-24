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
typedef  int /*<<< orphan*/  uint32_t ;
struct dtsec_regs {int /*<<< orphan*/  maccfg1; } ;

/* Variables and functions */
 int /*<<< orphan*/  MACCFG1_RX_FLOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC2(struct dtsec_regs *regs, bool en)
{
	uint32_t tmp;

	/* todo: check if mac is set to full-duplex */

	tmp = FUNC0(&regs->maccfg1);
	if (en)
		tmp |= MACCFG1_RX_FLOW;
	else
		tmp &= ~MACCFG1_RX_FLOW;
	FUNC1(tmp, &regs->maccfg1);
}