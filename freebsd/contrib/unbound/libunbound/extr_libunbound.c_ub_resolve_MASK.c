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
struct ub_result {int answer_len; int /*<<< orphan*/ * answer_packet; } ;
struct ub_ctx {int /*<<< orphan*/  cfglock; int /*<<< orphan*/  queries; int /*<<< orphan*/  finalized; } ;
struct TYPE_2__ {int /*<<< orphan*/  key; } ;
struct ctx_query {TYPE_1__ node; struct ub_result* res; int /*<<< orphan*/ * msg; scalar_t__ msg_len; } ;

/* Variables and functions */
 int UB_NOERROR ; 
 int UB_NOMEM ; 
 int FUNC0 (struct ub_ctx*) ; 
 struct ctx_query* FUNC1 (struct ub_ctx*,char const*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ctx_query*) ; 
 int FUNC3 (struct ub_ctx*,struct ctx_query*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int 
FUNC7(struct ub_ctx* ctx, const char* name, int rrtype, 
	int rrclass, struct ub_result** result)
{
	struct ctx_query* q;
	int r;
	*result = NULL;

	FUNC4(&ctx->cfglock);
	if(!ctx->finalized) {
		r = FUNC0(ctx);
		if(r) {
			FUNC5(&ctx->cfglock);
			return r;
		}
	}
	/* create new ctx_query and attempt to add to the list */
	FUNC5(&ctx->cfglock);
	q = FUNC1(ctx, name, rrtype, rrclass, NULL, NULL, NULL);
	if(!q)
		return UB_NOMEM;
	/* become a resolver thread for a bit */

	r = FUNC3(ctx, q);
	if(r) {
		FUNC4(&ctx->cfglock);
		(void)FUNC6(&ctx->queries, q->node.key);
		FUNC2(q);
		FUNC5(&ctx->cfglock);
		return r;
	}
	q->res->answer_packet = q->msg;
	q->res->answer_len = (int)q->msg_len;
	q->msg = NULL;
	*result = q->res;
	q->res = NULL;

	FUNC4(&ctx->cfglock);
	(void)FUNC6(&ctx->queries, q->node.key);
	FUNC2(q);
	FUNC5(&ctx->cfglock);
	return UB_NOERROR;
}