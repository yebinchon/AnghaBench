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
struct x86emu {int cur_rh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC1 (struct x86emu*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct x86emu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct x86emu*) ; 
 int /*<<< orphan*/  FUNC4 (struct x86emu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct x86emu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct x86emu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct x86emu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct x86emu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct x86emu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct x86emu*) ; 

__attribute__((used)) static void
FUNC11(struct x86emu *emu)
{
	uint8_t destval, srcval;

	/* long, drawn out code follows.  Double switch for a total of 32
	 * cases.  */
	FUNC3(emu);
	if (emu->cur_rh == 1)
		FUNC10(emu);

	if (emu->cur_rh == 0) {
		destval = FUNC1(emu, &srcval);
		FUNC8(emu, destval, srcval);
		return;
	}
	destval = FUNC0(emu);
	switch (emu->cur_rh) {
	case 2:
		destval = ~destval;
		FUNC9(emu, destval);
		break;
	case 3:
		destval = FUNC7(emu, destval);
		FUNC9(emu, destval);
		break;
	case 4:
		FUNC6(emu, destval);
		break;
	case 5:
		FUNC5(emu, destval);
		break;
	case 6:
		FUNC2(emu, destval);
		break;
	case 7:
		FUNC4(emu, destval);
		break;
	}
}