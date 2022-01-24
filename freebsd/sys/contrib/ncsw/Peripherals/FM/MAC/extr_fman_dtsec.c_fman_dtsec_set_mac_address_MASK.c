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
typedef  int uint8_t ;
typedef  scalar_t__ uint32_t ;
struct dtsec_regs {int /*<<< orphan*/  macstnaddr2; int /*<<< orphan*/  macstnaddr1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 

void FUNC1(struct dtsec_regs *regs, uint8_t *adr)
{
	uint32_t tmp;

	tmp = (uint32_t)((adr[5] << 24) |
			 (adr[4] << 16) |
			 (adr[3] << 8) |
			  adr[2]);
	FUNC0(tmp, &regs->macstnaddr1);

	tmp = (uint32_t)((adr[1] << 24) |
			 (adr[0] << 16));
	FUNC0(tmp, &regs->macstnaddr2);
}