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
typedef  int /*<<< orphan*/  uint32_t ;
struct x86emu {int cur_mod; int cur_rh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct x86emu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct x86emu*) ; 
 int /*<<< orphan*/ * FUNC2 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC3 (struct x86emu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC5 (struct x86emu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct x86emu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct x86emu *emu)
{
	uint8_t destval;
	uint32_t destoffset;
	uint8_t *destreg;

	/* Yet another special case instruction. */
	FUNC4(emu);
	if (emu->cur_mod != 3) {
		destoffset = FUNC1(emu);
		switch (emu->cur_rh) {
		case 0:	/* inc word ptr ... */
			destval = FUNC3(emu, destoffset);
			destval = FUNC5(emu, destval);
			FUNC6(emu, destoffset, destval);
			break;
		case 1:	/* dec word ptr ... */
			destval = FUNC3(emu, destoffset);
			destval = FUNC0(emu, destval);
			FUNC6(emu, destoffset, destval);
			break;
		}
	} else {
		destreg = FUNC2(emu);
		switch (emu->cur_rh) {
		case 0:
			*destreg = FUNC5(emu, *destreg);
			break;
		case 1:
			*destreg = FUNC0(emu, *destreg);
			break;
		}
	}
}