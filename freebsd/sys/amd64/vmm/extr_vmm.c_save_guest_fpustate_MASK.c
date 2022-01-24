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
struct vcpu {int /*<<< orphan*/  guestfpu; int /*<<< orphan*/  guest_xcr0; } ;

/* Variables and functions */
 int CR0_TS ; 
 int CR4_XSAVE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 () ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void
FUNC9(struct vcpu *vcpu)
{

	if ((FUNC5() & CR0_TS) == 0)
		FUNC4("fpu emulation not enabled in host!");

	/* save guest XCR0 and restore host XCR0 */
	if (FUNC6() & CR4_XSAVE) {
		vcpu->guest_xcr0 = FUNC7(0);
		FUNC3(0, FUNC8());
	}

	/* save guest FPU state */
	FUNC1();
	FUNC2(vcpu->guestfpu);
	FUNC0();
}