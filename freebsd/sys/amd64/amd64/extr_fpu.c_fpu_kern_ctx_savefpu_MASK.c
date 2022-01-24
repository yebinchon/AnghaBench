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
typedef  scalar_t__ vm_offset_t ;
struct savefpu {int dummy; } ;
struct fpu_kern_ctx {int /*<<< orphan*/  hwstate1; } ;

/* Variables and functions */
 int /*<<< orphan*/  XSAVE_AREA_ALIGN ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct savefpu *
FUNC1(struct fpu_kern_ctx *ctx)
{
	vm_offset_t p;

	p = (vm_offset_t)&ctx->hwstate1;
	p = FUNC0(p, XSAVE_AREA_ALIGN);
	return ((struct savefpu *)p);
}