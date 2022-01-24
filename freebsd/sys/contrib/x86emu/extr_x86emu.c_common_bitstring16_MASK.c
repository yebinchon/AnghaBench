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
typedef  int uint16_t ;
struct x86emu {int dummy; } ;
typedef  int int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_CF ; 
 int FUNC1 (struct x86emu*,int) ; 
 int* FUNC2 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC3 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC4 (struct x86emu*,int) ; 

__attribute__((used)) static void
FUNC5(struct x86emu *emu, int op)
{
	int bit;
	uint16_t srcval, *shiftreg, mask;

	FUNC3(emu);
	shiftreg = FUNC2(emu);
	srcval = FUNC1(emu, (int16_t) *shiftreg >> 4);
	bit = *shiftreg & 0xF;
	mask =  0x1 << bit;
	FUNC0(srcval & mask, F_CF);

	switch (op) {
	case 0:
		break;
	case 1:
		FUNC4(emu, srcval | mask);
		break;
	case 2:
		FUNC4(emu, srcval & ~mask);
		break;
	case 3:
		FUNC4(emu, srcval ^ mask);
		break;
	}
}