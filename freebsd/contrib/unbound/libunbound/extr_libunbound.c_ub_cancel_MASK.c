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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct ub_ctx {int /*<<< orphan*/  cfglock; int /*<<< orphan*/  qqpipe_lock; int /*<<< orphan*/  qq_pipe; int /*<<< orphan*/  num_async; int /*<<< orphan*/  queries; int /*<<< orphan*/  dothread; } ;
struct TYPE_2__ {int /*<<< orphan*/  key; } ;
struct ctx_query {int cancelled; TYPE_1__ node; int /*<<< orphan*/  async; } ;

/* Variables and functions */
 int UB_NOERROR ; 
 int UB_NOID ; 
 int UB_NOMEM ; 
 int UB_PIPE ; 
 int /*<<< orphan*/  FUNC0 (struct ctx_query*) ; 
 int /*<<< orphan*/ * FUNC1 (struct ctx_query*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int 
FUNC9(struct ub_ctx* ctx, int async_id)
{
	struct ctx_query* q;
	uint8_t* msg = NULL;
	uint32_t len = 0;
	FUNC3(&ctx->cfglock);
	q = (struct ctx_query*)FUNC7(&ctx->queries, &async_id);
	if(!q || !q->async) {
		/* it is not there, so nothing to do */
		FUNC4(&ctx->cfglock);
		return UB_NOID;
	}
	FUNC5(q->async);
	q->cancelled = 1;
	
	/* delete it */
	if(!ctx->dothread) { /* if forked */
		(void)FUNC6(&ctx->queries, q->node.key);
		ctx->num_async--;
		msg = FUNC1(q, &len);
		FUNC0(q);
		FUNC4(&ctx->cfglock);
		if(!msg) {
			return UB_NOMEM;
		}
		/* send cancel to background worker */
		FUNC3(&ctx->qqpipe_lock);
		if(!FUNC8(ctx->qq_pipe, msg, len, 0)) {
			FUNC4(&ctx->qqpipe_lock);
			FUNC2(msg);
			return UB_PIPE;
		}
		FUNC4(&ctx->qqpipe_lock);
		FUNC2(msg);
	} else {
		FUNC4(&ctx->cfglock);
	}
	return UB_NOERROR;
}