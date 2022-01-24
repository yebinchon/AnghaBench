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
struct TYPE_2__ {int mode; scalar_t__ R_CX; int R_DI; int /*<<< orphan*/  R_AL; int /*<<< orphan*/  R_ES; } ;
struct x86emu {TYPE_1__ x86; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_DF ; 
 int SYSMODE_PREFIX_REPE ; 
 int SYSMODE_PREFIX_REPNE ; 
 int /*<<< orphan*/  FUNC1 (struct x86emu*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct x86emu *emu)
{
	int inc;

	if (FUNC0(F_DF))	/* down */
		inc = -1;
	else
		inc = 1;
	if (emu->x86.mode & (SYSMODE_PREFIX_REPE | SYSMODE_PREFIX_REPNE)) {
		/* dont care whether REPE or REPNE */
		/* move them until CX is ZERO. */
		while (emu->x86.R_CX != 0) {
			FUNC1(emu, emu->x86.R_ES, emu->x86.R_DI,
			    emu->x86.R_AL);
			emu->x86.R_CX -= 1;
			emu->x86.R_DI += inc;
		}
		emu->x86.mode &= ~(SYSMODE_PREFIX_REPE | SYSMODE_PREFIX_REPNE);
	} else {
		FUNC1(emu, emu->x86.R_ES, emu->x86.R_DI, emu->x86.R_AL);
		emu->x86.R_DI += inc;
	}
}