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
typedef  int /*<<< orphan*/  uint8_t ;
struct x86emu {int cur_mod; int /*<<< orphan*/  cur_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct x86emu*) ; 
 int /*<<< orphan*/ * FUNC1 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC2 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC3 (struct x86emu*,int /*<<< orphan*/ ) ; 

uint8_t
FUNC4(struct x86emu *emu, uint8_t *imm)
{
	if (emu->cur_mod != 3) {
		emu->cur_offset = FUNC0(emu);
		*imm = FUNC2(emu);
		return FUNC3(emu, emu->cur_offset);
	} else {
		*imm = FUNC2(emu);
		return *FUNC1(emu);
	}
}