#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct vmx {TYPE_1__* state; int /*<<< orphan*/  vm; } ;
struct TYPE_2__ {int /*<<< orphan*/  vpid; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_APIC_BASE ; 
 int /*<<< orphan*/  M_VMX ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC0 (struct vmx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vmx*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	int i;
	struct vmx *vmx = arg;
	uint16_t maxcpus;

	if (FUNC0(vmx, 0))
		FUNC3(vmx->vm, DEFAULT_APIC_BASE, PAGE_SIZE);

	maxcpus = FUNC2(vmx->vm);
	for (i = 0; i < maxcpus; i++)
		FUNC4(vmx->state[i].vpid);

	FUNC1(vmx, M_VMX);

	return;
}