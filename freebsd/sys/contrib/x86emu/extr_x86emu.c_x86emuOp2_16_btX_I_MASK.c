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
typedef  int uint8_t ;
typedef  int uint16_t ;
struct x86emu {int cur_rh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_CF ; 
 int FUNC1 (struct x86emu*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC3 (struct x86emu*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct x86emu*) ; 

__attribute__((used)) static void
FUNC5(struct x86emu *emu)
{
	int bit;

	uint16_t srcval, mask;
	uint8_t shift;

	FUNC2(emu);
	if (emu->cur_rh < 4)
		FUNC4(emu);

	srcval = FUNC1(emu, &shift);
	bit = shift & 0xF;
	mask = (0x1 << bit);
	switch (emu->cur_rh) {
	case 5:
		FUNC3(emu, srcval | mask);
		break;
	case 6:
		FUNC3(emu, srcval & ~mask);
		break;
	case 7:
		FUNC3(emu, srcval ^ mask);
		break;
	}
	FUNC0(srcval & mask, F_CF);
}