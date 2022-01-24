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
typedef  int uint64_t ;
typedef  scalar_t__ uint32_t ;
struct x86emu {int cur_mod; } ;
typedef  int int8_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_CF ; 
 int /*<<< orphan*/  F_OF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC2 (struct x86emu*) ; 
 scalar_t__ FUNC3 (struct x86emu*) ; 
 scalar_t__* FUNC4 (struct x86emu*) ; 
 scalar_t__ FUNC5 (struct x86emu*) ; 
 scalar_t__ FUNC6 (struct x86emu*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct x86emu*) ; 
 int FUNC8 (struct x86emu*) ; 

__attribute__((used)) static void
FUNC9(struct x86emu *emu, int byte_imm)
{
	uint32_t srcoffset;
	uint32_t *destreg, srcval;
	int32_t imm;
	uint64_t res;

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
	res = (int32_t)srcval * imm;

	if (res > 0xffffffff) {
		FUNC1(F_CF);
		FUNC1(F_OF);
	} else {
		FUNC0(F_CF);
		FUNC0(F_OF);
	}
	*destreg = (uint32_t)res;
}