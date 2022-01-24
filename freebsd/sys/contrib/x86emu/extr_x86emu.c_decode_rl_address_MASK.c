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
typedef  scalar_t__ uint16_t ;
struct TYPE_2__ {int mode; scalar_t__ R_BX; scalar_t__ R_BP; scalar_t__ R_DI; scalar_t__ R_SI; scalar_t__ R_EDI; scalar_t__ R_ESI; scalar_t__ R_EBP; scalar_t__ R_EBX; scalar_t__ R_EDX; scalar_t__ R_ECX; scalar_t__ R_EAX; } ;
struct x86emu {int cur_rl; int cur_mod; TYPE_1__ x86; } ;
typedef  scalar_t__ int8_t ;

/* Variables and functions */
 int SYSMODE_PREFIX_ADDR ; 
 int SYSMODE_SEG_DS_SS ; 
 scalar_t__ FUNC0 (struct x86emu*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct x86emu*) ; 
 scalar_t__ FUNC2 (struct x86emu*) ; 
 scalar_t__ FUNC3 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC4 (struct x86emu*) ; 

__attribute__((used)) static uint32_t
FUNC5(struct x86emu *emu)
{
	if (emu->x86.mode & SYSMODE_PREFIX_ADDR) {
		uint32_t offset, sib;
		/* 32-bit addressing */
		switch (emu->cur_rl) {
		case 0:
			offset = emu->x86.R_EAX;
			break;
		case 1:
			offset = emu->x86.R_ECX;
			break;
		case 2:
			offset = emu->x86.R_EDX;
			break;
		case 3:
			offset = emu->x86.R_EBX;
			break;
		case 4:
			sib = FUNC1(emu);
			offset = FUNC0(emu, sib, 0);
			break;
		case 5:
			if (emu->cur_mod == 0) {
				offset = FUNC2(emu);
			} else {
				emu->x86.mode |= SYSMODE_SEG_DS_SS;
				offset = emu->x86.R_EBP;
			}
			break;
		case 6:
			offset = emu->x86.R_ESI;
			break;
		case 7:
			offset = emu->x86.R_EDI;
			break;
		default:
			FUNC4(emu);
		}
		if (emu->cur_mod == 1)
			offset += (int8_t)FUNC1(emu);
		else if (emu->cur_mod == 2)
			offset += FUNC2(emu);
		return offset;
	} else {
		uint16_t offset;

		/* 16-bit addressing */
		switch (emu->cur_rl) {
		case 0:
			offset = emu->x86.R_BX + emu->x86.R_SI;
			break;
		case 1:
			offset = emu->x86.R_BX + emu->x86.R_DI;
			break;
		case 2:
			emu->x86.mode |= SYSMODE_SEG_DS_SS;
			offset = emu->x86.R_BP + emu->x86.R_SI;
			break;
		case 3:
			emu->x86.mode |= SYSMODE_SEG_DS_SS;
			offset = emu->x86.R_BP + emu->x86.R_DI;
			break;
		case 4:
			offset = emu->x86.R_SI;
			break;
		case 5:
			offset = emu->x86.R_DI;
			break;
		case 6:
			if (emu->cur_mod == 0) {
				offset = FUNC3(emu);
			} else {
				emu->x86.mode |= SYSMODE_SEG_DS_SS;
				offset = emu->x86.R_BP;
			}
			break;
		case 7:
			offset = emu->x86.R_BX;
			break;
		default:
			FUNC4(emu);
		}
		if (emu->cur_mod == 1)
			offset += (int8_t)FUNC1(emu);
		else if (emu->cur_mod == 2)
			offset += FUNC3(emu);
		return offset;
	}
}