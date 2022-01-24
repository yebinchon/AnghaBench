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
struct vcpu {int hostcpu; scalar_t__ state; int /*<<< orphan*/  vlapic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int NOCPU ; 
 scalar_t__ VCPU_RUNNING ; 
 scalar_t__ VCPU_SLEEPING ; 
 int curcpu ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vmm_ipinum ; 
 int /*<<< orphan*/  FUNC3 (struct vcpu*) ; 

__attribute__((used)) static void
FUNC4(struct vcpu *vcpu, bool lapic_intr)
{
	int hostcpu;

	hostcpu = vcpu->hostcpu;
	if (vcpu->state == VCPU_RUNNING) {
		FUNC0(hostcpu != NOCPU, ("vcpu running on invalid hostcpu"));
		if (hostcpu != curcpu) {
			if (lapic_intr) {
				FUNC2(vcpu->vlapic, hostcpu,
				    vmm_ipinum);
			} else {
				FUNC1(hostcpu, vmm_ipinum);
			}
		} else {
			/*
			 * If the 'vcpu' is running on 'curcpu' then it must
			 * be sending a notification to itself (e.g. SELF_IPI).
			 * The pending event will be picked up when the vcpu
			 * transitions back to guest context.
			 */
		}
	} else {
		FUNC0(hostcpu == NOCPU, ("vcpu state %d not consistent "
		    "with hostcpu %d", vcpu->state, hostcpu));
		if (vcpu->state == VCPU_SLEEPING)
			FUNC3(vcpu);
	}
}