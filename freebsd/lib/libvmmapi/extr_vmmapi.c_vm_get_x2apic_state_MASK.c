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
typedef  int /*<<< orphan*/  x2apic ;
struct vmctx {int /*<<< orphan*/  fd; } ;
struct vm_x2apic {int cpuid; int state; } ;
typedef  enum x2apic_state { ____Placeholder_x2apic_state } x2apic_state ;

/* Variables and functions */
 int /*<<< orphan*/  VM_GET_X2APIC_STATE ; 
 int /*<<< orphan*/  FUNC0 (struct vm_x2apic*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vm_x2apic*) ; 

int
FUNC2(struct vmctx *ctx, int vcpu, enum x2apic_state *state)
{
	int error;
	struct vm_x2apic x2apic;

	FUNC0(&x2apic, sizeof(x2apic));
	x2apic.cpuid = vcpu;

	error = FUNC1(ctx->fd, VM_GET_X2APIC_STATE, &x2apic);
	*state = x2apic.state;
	return (error);
}