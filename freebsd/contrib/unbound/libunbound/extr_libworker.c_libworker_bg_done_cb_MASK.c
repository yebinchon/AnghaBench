#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ub_ctx {int /*<<< orphan*/  cfglock; int /*<<< orphan*/  num_async; int /*<<< orphan*/  queries; } ;
struct TYPE_6__ {int /*<<< orphan*/  key; } ;
struct ctx_query {int msg_security; TYPE_4__* w; TYPE_2__ node; scalar_t__ cancelled; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;
typedef  enum sec_status { ____Placeholder_sec_status } sec_status ;
struct TYPE_8__ {TYPE_3__* env; struct ub_ctx* ctx; scalar_t__ is_bg_thread; TYPE_1__* back; } ;
struct TYPE_7__ {int /*<<< orphan*/ * scratch_buffer; } ;
struct TYPE_5__ {scalar_t__ want_to_quit; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIT_RD ; 
 int /*<<< orphan*/  UB_NOERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,struct ctx_query*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ctx_query*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC6(void* arg, int rcode, sldns_buffer* buf, enum sec_status s,
	char* why_bogus, int was_ratelimited)
{
	struct ctx_query* q = (struct ctx_query*)arg;

	if(q->cancelled || q->w->back->want_to_quit) {
		if(q->w->is_bg_thread) {
			/* delete it now */
			struct ub_ctx* ctx = q->w->ctx;
			FUNC3(&ctx->cfglock);
			(void)FUNC5(&ctx->queries, q->node.key);
			ctx->num_async--;
			FUNC1(q);
			FUNC4(&ctx->cfglock);
		}
		/* cancelled, do not give answer */
		return;
	}
	q->msg_security = s;
	if(!buf) {
		buf = q->w->env->scratch_buffer;
	}
	if(rcode != 0) {
		FUNC2(buf, rcode, NULL, 0, BIT_RD, NULL);
	}
	FUNC0(q->w, q, buf, UB_NOERROR, why_bogus, was_ratelimited);
}