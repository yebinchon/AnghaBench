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
struct ub_ctx {int /*<<< orphan*/  cfglock; struct alloc_cache* alloc_list; } ;
struct alloc_cache {struct alloc_cache* super; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void 
FUNC2(struct ub_ctx* ctx, struct alloc_cache* alloc,
	int locking)
{
	if(!ctx || !alloc)
		return;
	if(locking) {
		FUNC0(&ctx->cfglock);
	}
	alloc->super = ctx->alloc_list;
	ctx->alloc_list = alloc;
	if(locking) {
		FUNC1(&ctx->cfglock);
	}
}