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
struct dtsec_regs {int* gaddr; int* igaddr; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int,int*) ; 

void FUNC2(struct dtsec_regs *regs, int bucket, bool enable)
{
	int reg_idx = (bucket >> 5) & 0xf;
	int bit_idx = bucket & 0x1f;
	uint32_t bit_mask = 0x80000000 >> bit_idx;
	uint32_t *reg;

	if (reg_idx > 7)
		reg = &regs->gaddr[reg_idx-8];
	else
		reg = &regs->igaddr[reg_idx];

	if (enable)
		FUNC1(FUNC0(reg) | bit_mask, reg);
	else
		FUNC1(FUNC0(reg) & (~bit_mask), reg);
}