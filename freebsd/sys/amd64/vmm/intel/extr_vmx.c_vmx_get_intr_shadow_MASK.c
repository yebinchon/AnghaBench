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
struct vmx {int /*<<< orphan*/ * vmcs; } ;

/* Variables and functions */
 int HWINTR_BLOCKING ; 
 int /*<<< orphan*/  VMCS_GUEST_INTERRUPTIBILITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int
FUNC2(struct vmx *vmx, int vcpu, int running, uint64_t *retval)
{
	uint64_t gi;
	int error;

	error = FUNC1(&vmx->vmcs[vcpu], running,
	    FUNC0(VMCS_GUEST_INTERRUPTIBILITY), &gi);
	*retval = (gi & HWINTR_BLOCKING) ? 1 : 0;
	return (error);
}