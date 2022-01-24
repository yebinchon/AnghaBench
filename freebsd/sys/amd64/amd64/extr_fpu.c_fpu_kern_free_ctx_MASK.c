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
struct fpu_kern_ctx {int flags; } ;

/* Variables and functions */
 int FPU_KERN_CTX_INUSE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_FPUKERN_CTX ; 
 int /*<<< orphan*/  FUNC1 (struct fpu_kern_ctx*,int /*<<< orphan*/ ) ; 

void
FUNC2(struct fpu_kern_ctx *ctx)
{

	FUNC0((ctx->flags & FPU_KERN_CTX_INUSE) == 0, ("free'ing inuse ctx"));
	/* XXXKIB clear the memory ? */
	FUNC1(ctx, M_FPUKERN_CTX);
}