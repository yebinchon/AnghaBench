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
struct ub_ctx {int dothread; int /*<<< orphan*/  cfglock; scalar_t__ finalized; } ;

/* Variables and functions */
 int UB_AFTERFINAL ; 
 int UB_NOERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int 
FUNC2(struct ub_ctx* ctx, int dothread)
{
#ifdef THREADS_DISABLED
	if(dothread) /* cannot do threading */
		return UB_NOERROR;
#endif
	FUNC0(&ctx->cfglock);
	if(ctx->finalized) {
		FUNC1(&ctx->cfglock);
		return UB_AFTERFINAL;
	}
	ctx->dothread = dothread;
	FUNC1(&ctx->cfglock);
	return UB_NOERROR;
}