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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct x86emu {int cur_mod; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct x86emu*) ; 
 scalar_t__ FUNC1 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC2 (struct x86emu*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC4 (struct x86emu*) ; 

__attribute__((used)) static void
FUNC5(struct x86emu *emu, uint16_t *seg)
{
	uint16_t *dstreg;
	uint32_t srcoffset;

	FUNC3(emu);
	if (emu->cur_mod == 3)
		FUNC4(emu);

	dstreg = FUNC0(emu);
	srcoffset = FUNC1(emu);
	*dstreg = FUNC2(emu, srcoffset);
	*seg = FUNC2(emu, srcoffset + 2);
}