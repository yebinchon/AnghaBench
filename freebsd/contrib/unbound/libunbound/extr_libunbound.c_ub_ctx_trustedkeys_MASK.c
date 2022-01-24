#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ub_ctx {int /*<<< orphan*/  cfglock; TYPE_1__* env; scalar_t__ finalized; } ;
struct TYPE_4__ {int /*<<< orphan*/  trusted_keys_file_list; } ;
struct TYPE_3__ {TYPE_2__* cfg; } ;

/* Variables and functions */
 int UB_AFTERFINAL ; 
 int UB_NOERROR ; 
 int UB_NOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (char const*) ; 

int 
FUNC5(struct ub_ctx* ctx, const char* fname)
{
	char* dup = FUNC4(fname);
	if(!dup) return UB_NOMEM;
	FUNC2(&ctx->cfglock);
	if(ctx->finalized) {
		FUNC3(&ctx->cfglock);
		FUNC1(dup);
		return UB_AFTERFINAL;
	}
	if(!FUNC0(&ctx->env->cfg->trusted_keys_file_list, dup)) {
		FUNC3(&ctx->cfglock);
		return UB_NOMEM;
	}
	FUNC3(&ctx->cfglock);
	return UB_NOERROR;
}