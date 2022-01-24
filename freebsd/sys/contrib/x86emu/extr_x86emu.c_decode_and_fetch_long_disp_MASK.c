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
struct TYPE_2__ {int mode; } ;
struct x86emu {int cur_mod; int cur_offset; TYPE_1__ x86; } ;
typedef  int int16_t ;

/* Variables and functions */
 int SYSMODE_PREFIX_ADDR ; 
 int FUNC0 (struct x86emu*) ; 
 int /*<<< orphan*/ * FUNC1 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC2 (struct x86emu*,int) ; 

__attribute__((used)) static uint32_t
FUNC3(struct x86emu *emu, int16_t disp)
{
	if (emu->cur_mod != 3) {
		/* TODO: A20 gate emulation */
		emu->cur_offset = FUNC0(emu) + disp;
		if ((emu->x86.mode & SYSMODE_PREFIX_ADDR) == 0)
			emu->cur_offset &= 0xffff;
		return FUNC2(emu, emu->cur_offset);
	} else {
		return *FUNC1(emu);
	}
}