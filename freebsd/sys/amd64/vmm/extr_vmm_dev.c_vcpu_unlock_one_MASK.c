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
struct vmmdev_softc {int /*<<< orphan*/  vm; } ;
typedef  enum vcpu_state { ____Placeholder_vcpu_state } vcpu_state ;

/* Variables and functions */
 int VCPU_FROZEN ; 
 int /*<<< orphan*/  VCPU_IDLE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct vmmdev_softc *sc, int vcpu)
{
	enum vcpu_state state;

	state = FUNC1(sc->vm, vcpu, NULL);
	if (state != VCPU_FROZEN) {
		FUNC0("vcpu %s(%d) has invalid state %d", FUNC3(sc->vm),
		    vcpu, state);
	}

	FUNC2(sc->vm, vcpu, VCPU_IDLE, false);
}