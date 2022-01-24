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
typedef  int /*<<< orphan*/  vmmsi ;
typedef  void* uint64_t ;
struct vmctx {int /*<<< orphan*/  fd; } ;
struct vm_lapic_msi {void* msg; void* addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  VM_LAPIC_MSI ; 
 int /*<<< orphan*/  FUNC0 (struct vm_lapic_msi*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vm_lapic_msi*) ; 

int
FUNC2(struct vmctx *ctx, uint64_t addr, uint64_t msg)
{
	struct vm_lapic_msi vmmsi;

	FUNC0(&vmmsi, sizeof(vmmsi));
	vmmsi.addr = addr;
	vmmsi.msg = msg;

	return (FUNC1(ctx->fd, VM_LAPIC_MSI, &vmmsi));
}