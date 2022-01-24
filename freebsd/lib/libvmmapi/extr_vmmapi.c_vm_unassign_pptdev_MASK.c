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
struct vmctx {int /*<<< orphan*/  fd; } ;
struct vm_pptdev {int bus; int slot; int func; } ;
typedef  int /*<<< orphan*/  pptdev ;

/* Variables and functions */
 int /*<<< orphan*/  VM_UNBIND_PPTDEV ; 
 int /*<<< orphan*/  FUNC0 (struct vm_pptdev*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vm_pptdev*) ; 

int
FUNC2(struct vmctx *ctx, int bus, int slot, int func)
{
	struct vm_pptdev pptdev;

	FUNC0(&pptdev, sizeof(pptdev));
	pptdev.bus = bus;
	pptdev.slot = slot;
	pptdev.func = func;

	return (FUNC1(ctx->fd, VM_UNBIND_PPTDEV, &pptdev));
}