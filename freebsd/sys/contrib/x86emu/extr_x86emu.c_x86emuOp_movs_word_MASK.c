#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_2__ {int mode; int R_CX; int R_SI; int R_DI; int /*<<< orphan*/  R_ES; } ;
struct x86emu {TYPE_1__ x86; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_DF ; 
 int SYSMODE_PREFIX_DATA ; 
 int SYSMODE_PREFIX_REPE ; 
 int SYSMODE_PREFIX_REPNE ; 
 int FUNC1 (struct x86emu*,int) ; 
 int FUNC2 (struct x86emu*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct x86emu*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct x86emu*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct x86emu *emu)
{
	uint32_t val;
	int inc;
	uint32_t count;

	if (emu->x86.mode & SYSMODE_PREFIX_DATA)
		inc = 4;
	else
		inc = 2;

	if (FUNC0(F_DF))	/* down */
		inc = -inc;

	count = 1;
	if (emu->x86.mode & (SYSMODE_PREFIX_REPE | SYSMODE_PREFIX_REPNE)) {
		/* dont care whether REPE or REPNE */
		/* move them until CX is ZERO. */
		count = emu->x86.R_CX;
		emu->x86.R_CX = 0;
		emu->x86.mode &= ~(SYSMODE_PREFIX_REPE | SYSMODE_PREFIX_REPNE);
	}
	while (count--) {
		if (emu->x86.mode & SYSMODE_PREFIX_DATA) {
			val = FUNC1(emu, emu->x86.R_SI);
			FUNC3(emu, emu->x86.R_ES, emu->x86.R_DI, val);
		} else {
			val = FUNC2(emu, emu->x86.R_SI);
			FUNC4(emu, emu->x86.R_ES, emu->x86.R_DI,
			    (uint16_t) val);
		}
		emu->x86.R_SI += inc;
		emu->x86.R_DI += inc;
	}
}