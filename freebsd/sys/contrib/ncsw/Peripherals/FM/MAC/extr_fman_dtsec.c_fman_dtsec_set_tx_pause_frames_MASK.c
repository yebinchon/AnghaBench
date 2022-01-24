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
typedef  int uint16_t ;
struct dtsec_regs {int /*<<< orphan*/  maccfg1; int /*<<< orphan*/  ptv; } ;

/* Variables and functions */
 int MACCFG1_TX_FLOW ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 

void FUNC2(struct dtsec_regs *regs, uint16_t time)
{
	uint32_t ptv = 0;

	/* fixme: don't enable tx pause for half-duplex */

	if (time) {
		ptv = FUNC0(&regs->ptv);
		ptv &= 0xffff0000;
		ptv |= time & 0x0000ffff;
		FUNC1(ptv, &regs->ptv);

		/* trigger the transmission of a flow-control pause frame */
		FUNC1(FUNC0(&regs->maccfg1) | MACCFG1_TX_FLOW,
				&regs->maccfg1);
	} else
		FUNC1(FUNC0(&regs->maccfg1) & ~MACCFG1_TX_FLOW,
				&regs->maccfg1);
}