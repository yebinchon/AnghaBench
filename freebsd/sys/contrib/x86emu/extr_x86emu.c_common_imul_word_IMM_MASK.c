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
typedef  int uint32_t ;
typedef  scalar_t__ uint16_t ;
struct x86emu {int cur_mod; } ;
typedef  int int8_t ;
typedef  int int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_CF ; 
 int /*<<< orphan*/  F_OF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC2 (struct x86emu*) ; 
 int FUNC3 (struct x86emu*) ; 
 scalar_t__* FUNC4 (struct x86emu*) ; 
 scalar_t__ FUNC5 (struct x86emu*) ; 
 scalar_t__ FUNC6 (struct x86emu*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct x86emu*) ; 
 int FUNC8 (struct x86emu*) ; 

__attribute__((used)) static void
FUNC9(struct x86emu *emu, int byte_imm)
{
	uint32_t srcoffset;
	uint16_t *destreg, srcval;
	int16_t imm;
	uint32_t res;

	FUNC7(emu);
	destreg = FUNC2(emu);
	if (emu->cur_mod != 3) {
		srcoffset = FUNC3(emu);
		srcval = FUNC6(emu, srcoffset);
	} else {
		srcval = *FUNC4(emu);
	}

	if (byte_imm)
		imm = (int8_t)FUNC5(emu);
	else
		imm = FUNC8(emu);
	res = (int16_t)srcval * imm;

	if (res > 0xffff) {
		FUNC1(F_CF);
		FUNC1(F_OF);
	} else {
		FUNC0(F_CF);
		FUNC0(F_OF);
	}
	*destreg = (uint16_t) res;
}