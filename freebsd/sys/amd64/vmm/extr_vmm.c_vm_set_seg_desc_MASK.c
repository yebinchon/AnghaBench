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
struct vm {int maxcpus; int /*<<< orphan*/  cookie; } ;
struct seg_desc {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int,struct seg_desc*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

int
FUNC3(struct vm *vm, int vcpu, int reg,
		struct seg_desc *desc)
{
	if (vcpu < 0 || vcpu >= vm->maxcpus)
		return (EINVAL);

	if (!FUNC2(reg) && !FUNC1(reg))
		return (EINVAL);

	return (FUNC0(vm->cookie, vcpu, reg, desc));
}