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
typedef  int /*<<< orphan*/  ub_event_callback_type ;
struct ub_ctx {TYPE_1__* event_worker; int /*<<< orphan*/  event_base; int /*<<< orphan*/  cfglock; int /*<<< orphan*/  finalized; } ;
struct ctx_query {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int UB_INITFAIL ; 
 int UB_NOERROR ; 
 int UB_NOMEM ; 
 int FUNC0 (struct ub_ctx*) ; 
 struct ctx_query* FUNC1 (struct ub_ctx*,char const*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int FUNC2 (struct ub_ctx*,struct ctx_query*,int*) ; 
 TYPE_1__* FUNC3 (struct ub_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int 
FUNC7(struct ub_ctx* ctx, const char* name, int rrtype, 
	int rrclass, void* mydata, ub_event_callback_type callback,
	int* async_id)
{
	struct ctx_query* q;
	int r;

	if(async_id)
		*async_id = 0;
	FUNC4(&ctx->cfglock);
	if(!ctx->finalized) {
		r = FUNC0(ctx);
		if(r) {
			FUNC5(&ctx->cfglock);
			return r;
		}
	}
	FUNC5(&ctx->cfglock);
	if(!ctx->event_worker) {
		ctx->event_worker = FUNC3(ctx,
			ctx->event_base);
		if(!ctx->event_worker) {
			return UB_INITFAIL;
		}
	}

	/* set time in case answer comes from cache */
	FUNC6(ctx->event_worker->base);

	/* create new ctx_query and attempt to add to the list */
	q = FUNC1(ctx, name, rrtype, rrclass, NULL, callback, mydata);
	if(!q)
		return UB_NOMEM;

	/* attach to mesh */
	if((r=FUNC2(ctx, q, async_id)) != 0)
		return r;
	return UB_NOERROR;
}