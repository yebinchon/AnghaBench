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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  void* uint16_t ;
struct TYPE_2__ {int mode; void* R_IP; void* R_CS; } ;
struct x86emu {int cur_mod; int cur_rh; TYPE_1__ x86; } ;

/* Variables and functions */
 int SYSMODE_PREFIX_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct x86emu*) ; 
 void** FUNC1 (struct x86emu*) ; 
 void* FUNC2 (struct x86emu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC4 (struct x86emu*,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC6 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC7 (struct x86emu*) ; 

__attribute__((used)) static void
FUNC8(struct x86emu *emu)
{
	uint32_t destoffset = 0;
	uint16_t destval, destval2;

	/* Yet another special case instruction. */
	FUNC3(emu);
	if ((emu->cur_mod == 3 && (emu->cur_rh == 3 || emu->cur_rh == 5)) ||
	    emu->cur_rh == 7)
		FUNC7(emu);
	if (emu->cur_rh == 0 || emu->cur_rh == 1 || emu->cur_rh == 6) {
		if (emu->x86.mode & SYSMODE_PREFIX_DATA)
			FUNC6(emu);
		else
			FUNC5(emu);
		return;
	}

	if (emu->cur_mod != 3) {
		destoffset = FUNC0(emu);
		destval = FUNC2(emu, destoffset);
		switch (emu->cur_rh) {
		case 3:	/* call far ptr ... */
			destval2 = FUNC2(emu, destoffset + 2);
			FUNC4(emu, emu->x86.R_CS);
			emu->x86.R_CS = destval2;
			FUNC4(emu, emu->x86.R_IP);
			emu->x86.R_IP = destval;
			break;
		case 5:	/* jmp far ptr ... */
			destval2 = FUNC2(emu, destoffset + 2);
			emu->x86.R_IP = destval;
			emu->x86.R_CS = destval2;
			break;
		}
	} else {
		destval = *FUNC1(emu);
	}

	switch (emu->cur_rh) {
	case 2: /* call word ptr */
		FUNC4(emu, emu->x86.R_IP);
		emu->x86.R_IP = destval;
		break;
	case 4: /* jmp */
		emu->x86.R_IP = destval;
		break;
	}
}