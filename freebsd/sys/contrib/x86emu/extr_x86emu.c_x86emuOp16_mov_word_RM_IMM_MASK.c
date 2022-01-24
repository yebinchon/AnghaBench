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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct x86emu {scalar_t__ cur_rh; int cur_mod; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct x86emu*) ; 
 int /*<<< orphan*/ * FUNC1 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC2 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC3 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC4 (struct x86emu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct x86emu*) ; 

__attribute__((used)) static void
FUNC6(struct x86emu *emu)
{
	uint32_t destoffset;
	uint16_t imm, *destreg;

	FUNC2(emu);
	if (emu->cur_rh != 0)
		FUNC5(emu);

	if (emu->cur_mod != 3) {
		destoffset = FUNC0(emu);
		imm = FUNC3(emu);
		FUNC4(emu, destoffset, imm);
	} else {
		destreg = FUNC1(emu);
		imm = FUNC3(emu);
		*destreg = imm;
	}
}