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
struct TYPE_2__ {int mode; } ;
struct x86emu {int cur_mod; TYPE_1__ x86; } ;

/* Variables and functions */
 int SYSMODE_PREFIX_ADDR ; 
 scalar_t__* FUNC0 (struct x86emu*) ; 
 scalar_t__* FUNC1 (struct x86emu*) ; 
 scalar_t__ FUNC2 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC3 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC4 (struct x86emu*) ; 

__attribute__((used)) static void
FUNC5(struct x86emu *emu)
{
	uint32_t destoffset;

	FUNC3(emu);
	if (emu->cur_mod == 3)
		FUNC4(emu);

	destoffset = FUNC2(emu);
	if (emu->x86.mode & SYSMODE_PREFIX_ADDR) {
		uint32_t *srcreg;

		srcreg = FUNC0(emu);
		*srcreg = (uint32_t) destoffset;
	} else {
		uint16_t *srcreg;

		srcreg = FUNC1(emu);
		*srcreg = (uint16_t) destoffset;
	}
}