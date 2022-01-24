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
struct vcpu {int /*<<< orphan*/  guest_xcr0; int /*<<< orphan*/  guestfpu; } ;

/* Variables and functions */
 int CR4_XSAVE ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 

__attribute__((used)) static void
FUNC6(struct vcpu *vcpu)
{

	/* flush host state to the pcb */
	FUNC2(curthread);

	/* restore guest FPU state */
	FUNC1();
	FUNC3(vcpu->guestfpu);

	/* restore guest XCR0 if XSAVE is enabled in the host */
	if (FUNC5() & CR4_XSAVE)
		FUNC4(0, vcpu->guest_xcr0);

	/*
	 * The FPU is now "dirty" with the guest's state so turn on emulation
	 * to trap any access to the FPU by the host.
	 */
	FUNC0();
}