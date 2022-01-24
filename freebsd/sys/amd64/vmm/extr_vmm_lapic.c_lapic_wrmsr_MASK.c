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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ u_int ;
struct vm {int dummy; } ;
struct vlapic {int dummy; } ;

/* Variables and functions */
 scalar_t__ MSR_APICBASE ; 
 int FUNC0 (struct vlapic*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct vlapic*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int*) ; 
 struct vlapic* FUNC2 (struct vm*,int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

int
FUNC4(struct vm *vm, int cpu, u_int msr, uint64_t val, bool *retu)
{
	int error;
	u_int offset;
	struct vlapic *vlapic;

	vlapic = FUNC2(vm, cpu);

	if (msr == MSR_APICBASE) {
		error = FUNC0(vlapic, val);
	} else {
		offset = FUNC3(msr);
		error = FUNC1(vlapic, 0, offset, val, retu);
	}

	return (error);
}