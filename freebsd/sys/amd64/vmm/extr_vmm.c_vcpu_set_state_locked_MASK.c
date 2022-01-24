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
struct vm {struct vcpu* vcpu; } ;
struct vcpu {int state; int reqidle; scalar_t__ hostcpu; int /*<<< orphan*/  mtx; } ;
typedef  enum vcpu_state { ____Placeholder_vcpu_state } vcpu_state ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ NOCPU ; 
 int /*<<< orphan*/  FUNC1 (struct vm*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vm*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  VCPU_FROZEN 131 
#define  VCPU_IDLE 130 
#define  VCPU_RUNNING 129 
#define  VCPU_SLEEPING 128 
 scalar_t__ curcpu ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct vcpu*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 

__attribute__((used)) static int
FUNC8(struct vm *vm, int vcpuid, enum vcpu_state newstate,
    bool from_idle)
{
	struct vcpu *vcpu;
	int error;

	vcpu = &vm->vcpu[vcpuid];
	FUNC4(vcpu);

	/*
	 * State transitions from the vmmdev_ioctl() must always begin from
	 * the VCPU_IDLE state. This guarantees that there is only a single
	 * ioctl() operating on a vcpu at any point.
	 */
	if (from_idle) {
		while (vcpu->state != VCPU_IDLE) {
			vcpu->reqidle = 1;
			FUNC5(vcpu, false);
			FUNC1(vm, vcpuid, "vcpu state change from %s to "
			    "idle requested", FUNC6(vcpu->state));
			FUNC3(&vcpu->state, &vcpu->mtx, "vmstat", hz);
		}
	} else {
		FUNC0(vcpu->state != VCPU_IDLE, ("invalid transition from "
		    "vcpu idle state"));
	}

	if (vcpu->state == VCPU_RUNNING) {
		FUNC0(vcpu->hostcpu == curcpu, ("curcpu %d and hostcpu %d "
		    "mismatch for running vcpu", curcpu, vcpu->hostcpu));
	} else {
		FUNC0(vcpu->hostcpu == NOCPU, ("Invalid hostcpu %d for a "
		    "vcpu that is not running", vcpu->hostcpu));
	}

	/*
	 * The following state transitions are allowed:
	 * IDLE -> FROZEN -> IDLE
	 * FROZEN -> RUNNING -> FROZEN
	 * FROZEN -> SLEEPING -> FROZEN
	 */
	switch (vcpu->state) {
	case VCPU_IDLE:
	case VCPU_RUNNING:
	case VCPU_SLEEPING:
		error = (newstate != VCPU_FROZEN);
		break;
	case VCPU_FROZEN:
		error = (newstate == VCPU_FROZEN);
		break;
	default:
		error = 1;
		break;
	}

	if (error)
		return (EBUSY);

	FUNC2(vm, vcpuid, "vcpu state changed from %s to %s",
	    FUNC6(vcpu->state), FUNC6(newstate));

	vcpu->state = newstate;
	if (newstate == VCPU_RUNNING)
		vcpu->hostcpu = curcpu;
	else
		vcpu->hostcpu = NOCPU;

	if (newstate == VCPU_IDLE)
		FUNC7(&vcpu->state);

	return (0);
}