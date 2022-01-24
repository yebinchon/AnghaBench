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
struct vmx {int /*<<< orphan*/ * vmcs; int /*<<< orphan*/  vm; } ;
struct seg_desc {int dummy; } ;

/* Variables and functions */
 int curcpu ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int,struct seg_desc*) ; 

__attribute__((used)) static int
FUNC4(void *arg, int vcpu, int reg, struct seg_desc *desc)
{
	int hostcpu, running;
	struct vmx *vmx = arg;

	running = FUNC1(vmx->vm, vcpu, &hostcpu);
	if (running && hostcpu != curcpu)
		FUNC0("vmx_getdesc: %s%d is running", FUNC2(vmx->vm), vcpu);

	return (FUNC3(&vmx->vmcs[vcpu], running, reg, desc));
}