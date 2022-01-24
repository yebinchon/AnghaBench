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
typedef  scalar_t__ uint32_t ;
struct TYPE_2__ {int mode; int R_DI; int /*<<< orphan*/  R_DX; int /*<<< orphan*/  R_ES; scalar_t__ R_ECX; scalar_t__ R_CX; } ;
struct x86emu {TYPE_1__ x86; int /*<<< orphan*/  (* emu_inl ) (struct x86emu*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* emu_inw ) (struct x86emu*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* emu_inb ) (struct x86emu*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_DF ; 
 int SYSMODE_PREFIX_DATA ; 
 int SYSMODE_PREFIX_REPE ; 
 int SYSMODE_PREFIX_REPNE ; 
 int /*<<< orphan*/  FUNC1 (struct x86emu*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct x86emu*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct x86emu*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct x86emu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct x86emu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct x86emu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct x86emu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct x86emu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct x86emu*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void 
FUNC10(struct x86emu *emu, int size)
{
	int inc = size;

	if (FUNC0(F_DF)) {
		inc = -size;
	}
	if (emu->x86.mode & (SYSMODE_PREFIX_REPE | SYSMODE_PREFIX_REPNE)) {
		/* dont care whether REPE or REPNE */
		/* in until CX is ZERO. */
		uint32_t count = ((emu->x86.mode & SYSMODE_PREFIX_DATA) ?
		    emu->x86.R_ECX : emu->x86.R_CX);
		switch (size) {
		case 1:
			while (count--) {
				FUNC1(emu, emu->x86.R_ES, emu->x86.R_DI,
				    (*emu->emu_inb) (emu, emu->x86.R_DX));
				emu->x86.R_DI += inc;
			}
			break;

		case 2:
			while (count--) {
				FUNC3(emu, emu->x86.R_ES, emu->x86.R_DI,
				    (*emu->emu_inw) (emu, emu->x86.R_DX));
				emu->x86.R_DI += inc;
			}
			break;
		case 4:
			while (count--) {
				FUNC2(emu, emu->x86.R_ES, emu->x86.R_DI,
				    (*emu->emu_inl) (emu, emu->x86.R_DX));
				emu->x86.R_DI += inc;
				break;
			}
		}
		emu->x86.R_CX = 0;
		if (emu->x86.mode & SYSMODE_PREFIX_DATA) {
			emu->x86.R_ECX = 0;
		}
		emu->x86.mode &= ~(SYSMODE_PREFIX_REPE | SYSMODE_PREFIX_REPNE);
	} else {
		switch (size) {
		case 1:
			FUNC1(emu, emu->x86.R_ES, emu->x86.R_DI,
			    (*emu->emu_inb) (emu, emu->x86.R_DX));
			break;
		case 2:
			FUNC3(emu, emu->x86.R_ES, emu->x86.R_DI,
			    (*emu->emu_inw) (emu, emu->x86.R_DX));
			break;
		case 4:
			FUNC2(emu, emu->x86.R_ES, emu->x86.R_DI,
			    (*emu->emu_inl) (emu, emu->x86.R_DX));
			break;
		}
		emu->x86.R_DI += inc;
	}
}