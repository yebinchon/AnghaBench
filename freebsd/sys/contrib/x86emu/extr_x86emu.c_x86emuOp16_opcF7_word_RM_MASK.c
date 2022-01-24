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
struct x86emu {int cur_rh; int cur_mod; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC1 (struct x86emu*) ; 
 int /*<<< orphan*/ * FUNC2 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC3 (struct x86emu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct x86emu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC6 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC7 (struct x86emu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct x86emu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct x86emu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct x86emu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct x86emu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct x86emu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct x86emu*) ; 

__attribute__((used)) static void
FUNC14(struct x86emu *emu)
{
	uint16_t destval, srcval;

	/* long, drawn out code follows.  Double switch for a total of 32
	 * cases.  */
	FUNC5(emu);
	if (emu->cur_rh == 1)
		FUNC13(emu);

	if (emu->cur_rh == 0) {
		if (emu->cur_mod != 3) {
			uint32_t destoffset;

			destoffset = FUNC1(emu);
			srcval = FUNC6(emu);
			destval = FUNC4(emu, destoffset);
		} else {
			srcval = FUNC6(emu);
			destval = *FUNC2(emu);
		}
		FUNC11(emu, destval, srcval);
		return;
	}
	destval = FUNC0(emu);
	switch (emu->cur_rh) {
	case 2:
		destval = ~destval;
		FUNC12(emu, destval);
		break;
	case 3:
		destval = FUNC10(emu, destval);
		FUNC12(emu, destval);
		break;
	case 4:
		FUNC9(emu, destval);
		break;
	case 5:
		FUNC8(emu, destval);
		break;
	case 6:
		FUNC3(emu, destval);
		break;
	case 7:
		FUNC7(emu, destval);
		break;
	}
}