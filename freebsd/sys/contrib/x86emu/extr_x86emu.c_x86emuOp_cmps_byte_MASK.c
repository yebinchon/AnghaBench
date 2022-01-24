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
struct TYPE_2__ {int mode; scalar_t__ R_CX; int R_SI; int R_DI; int /*<<< orphan*/  R_ES; } ;
struct x86emu {TYPE_1__ x86; } ;
typedef  int /*<<< orphan*/  int8_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_DF ; 
 int /*<<< orphan*/  F_ZF ; 
 int SYSMODE_PREFIX_REPE ; 
 int SYSMODE_PREFIX_REPNE ; 
 int /*<<< orphan*/  FUNC1 (struct x86emu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct x86emu*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct x86emu*,int) ; 

__attribute__((used)) static void
FUNC4(struct x86emu *emu)
{
	int8_t val1, val2;
	int inc;

	if (FUNC0(F_DF))	/* down */
		inc = -1;
	else
		inc = 1;

	if (emu->x86.mode & SYSMODE_PREFIX_REPE) {
		/* REPE  */
		/* move them until CX is ZERO. */
		while (emu->x86.R_CX != 0) {
			val1 = FUNC3(emu, emu->x86.R_SI);
			val2 = FUNC2(emu, emu->x86.R_ES, emu->x86.R_DI);
			FUNC1(emu, val1, val2);
			emu->x86.R_CX -= 1;
			emu->x86.R_SI += inc;
			emu->x86.R_DI += inc;
			if (FUNC0(F_ZF) == 0)
				break;
		}
		emu->x86.mode &= ~SYSMODE_PREFIX_REPE;
	} else if (emu->x86.mode & SYSMODE_PREFIX_REPNE) {
		/* REPNE  */
		/* move them until CX is ZERO. */
		while (emu->x86.R_CX != 0) {
			val1 = FUNC3(emu, emu->x86.R_SI);
			val2 = FUNC2(emu, emu->x86.R_ES, emu->x86.R_DI);
			FUNC1(emu, val1, val2);
			emu->x86.R_CX -= 1;
			emu->x86.R_SI += inc;
			emu->x86.R_DI += inc;
			if (FUNC0(F_ZF))
				break;	/* zero flag set means equal */
		}
		emu->x86.mode &= ~SYSMODE_PREFIX_REPNE;
	} else {
		val1 = FUNC3(emu, emu->x86.R_SI);
		val2 = FUNC2(emu, emu->x86.R_ES, emu->x86.R_DI);
		FUNC1(emu, val1, val2);
		emu->x86.R_SI += inc;
		emu->x86.R_DI += inc;
	}
}