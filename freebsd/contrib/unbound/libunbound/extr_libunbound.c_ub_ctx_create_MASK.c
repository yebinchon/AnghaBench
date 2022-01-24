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
struct ub_ctx {struct ub_ctx* env; int /*<<< orphan*/  mods; int /*<<< orphan*/  cfg; int /*<<< orphan*/  seed_rnd; int /*<<< orphan*/ * qq_pipe; int /*<<< orphan*/ * rr_pipe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ub_ctx*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (struct ub_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct ub_ctx*) ; 
 void* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct ub_ctx* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

struct ub_ctx* 
FUNC8(void)
{
	struct ub_ctx* ctx = FUNC6();
	if(!ctx)
		return NULL;
	if((ctx->qq_pipe = FUNC4()) == NULL) {
		int e = errno;
		FUNC7(ctx->seed_rnd);
		FUNC0(ctx->env->cfg);
		FUNC3(&ctx->mods, ctx->env);
		FUNC1(ctx->env);
		FUNC2(ctx->env);
		FUNC2(ctx);
		errno = e;
		return NULL;
	}
	if((ctx->rr_pipe = FUNC4()) == NULL) {
		int e = errno;
		FUNC5(ctx->qq_pipe);
		FUNC7(ctx->seed_rnd);
		FUNC0(ctx->env->cfg);
		FUNC3(&ctx->mods, ctx->env);
		FUNC1(ctx->env);
		FUNC2(ctx->env);
		FUNC2(ctx);
		errno = e;
		return NULL;
	}
	return ctx;
}