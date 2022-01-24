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
struct x86regs {scalar_t__ X86BIOS_R_SP; int /*<<< orphan*/  X86BIOS_R_SS; } ;

/* Variables and functions */
 scalar_t__ X86BIOS_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct x86regs*,int) ; 
 int /*<<< orphan*/  x86bios_seg_phys ; 

void
FUNC2(struct x86regs *regs)
{

	FUNC1(regs, sizeof(*regs));
	regs->X86BIOS_R_SS = FUNC0(x86bios_seg_phys);
	regs->X86BIOS_R_SP = X86BIOS_PAGE_SIZE - 2;
}