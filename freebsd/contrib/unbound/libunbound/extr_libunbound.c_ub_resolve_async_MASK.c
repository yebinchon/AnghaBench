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
typedef  int /*<<< orphan*/  ub_callback_type ;
struct ub_ctx {int created_bg; int /*<<< orphan*/  qqpipe_lock; int /*<<< orphan*/  qq_pipe; int /*<<< orphan*/  cfglock; int /*<<< orphan*/  num_async; int /*<<< orphan*/  queries; int /*<<< orphan*/  finalized; } ;
struct TYPE_2__ {int /*<<< orphan*/  key; } ;
struct ctx_query {int querynum; TYPE_1__ node; } ;

/* Variables and functions */
 int UB_NOERROR ; 
 int UB_NOMEM ; 
 int UB_PIPE ; 
 int FUNC0 (struct ub_ctx*) ; 
 struct ctx_query* FUNC1 (struct ub_ctx*,char const*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct ctx_query*) ; 
 int /*<<< orphan*/ * FUNC3 (struct ctx_query*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct ub_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int 
FUNC10(struct ub_ctx* ctx, const char* name, int rrtype, 
	int rrclass, void* mydata, ub_callback_type callback, int* async_id)
{
	struct ctx_query* q;
	uint8_t* msg = NULL;
	uint32_t len = 0;

	if(async_id)
		*async_id = 0;
	FUNC6(&ctx->cfglock);
	if(!ctx->finalized) {
		int r = FUNC0(ctx);
		if(r) {
			FUNC7(&ctx->cfglock);
			return r;
		}
	}
	if(!ctx->created_bg) {
		int r;
		ctx->created_bg = 1;
		FUNC7(&ctx->cfglock);
		r = FUNC5(ctx);
		if(r) {
			FUNC6(&ctx->cfglock);
			ctx->created_bg = 0;
			FUNC7(&ctx->cfglock);
			return r;
		}
	} else {
		FUNC7(&ctx->cfglock);
	}

	/* create new ctx_query and attempt to add to the list */
	q = FUNC1(ctx, name, rrtype, rrclass, callback, NULL, mydata);
	if(!q)
		return UB_NOMEM;

	/* write over pipe to background worker */
	FUNC6(&ctx->cfglock);
	msg = FUNC3(q, &len);
	if(!msg) {
		(void)FUNC8(&ctx->queries, q->node.key);
		ctx->num_async--;
		FUNC2(q);
		FUNC7(&ctx->cfglock);
		return UB_NOMEM;
	}
	if(async_id)
		*async_id = q->querynum;
	FUNC7(&ctx->cfglock);
	
	FUNC6(&ctx->qqpipe_lock);
	if(!FUNC9(ctx->qq_pipe, msg, len, 0)) {
		FUNC7(&ctx->qqpipe_lock);
		FUNC4(msg);
		return UB_PIPE;
	}
	FUNC7(&ctx->qqpipe_lock);
	FUNC4(msg);
	return UB_NOERROR;
}