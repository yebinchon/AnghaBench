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
struct ub_ctx {int /*<<< orphan*/  cfglock; TYPE_1__* env; scalar_t__ finalized; } ;
struct TYPE_2__ {int /*<<< orphan*/  cfg; } ;

/* Variables and functions */
 int UB_AFTERFINAL ; 
 int UB_NOERROR ; 
 int UB_SYNTAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int 
FUNC3(struct ub_ctx* ctx, const char* opt, const char* val)
{
	FUNC1(&ctx->cfglock);
	if(ctx->finalized) {
		FUNC2(&ctx->cfglock);
		return UB_AFTERFINAL;
	}
	if(!FUNC0(ctx->env->cfg, opt, val)) {
		FUNC2(&ctx->cfglock);
		return UB_SYNTAX;
	}
	FUNC2(&ctx->cfglock);
	return UB_NOERROR;
}