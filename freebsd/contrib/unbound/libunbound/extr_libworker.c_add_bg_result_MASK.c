#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct libworker {TYPE_3__* ctx; scalar_t__ is_bg_thread; scalar_t__ want_quit; } ;
struct TYPE_5__ {int /*<<< orphan*/  key; } ;
struct ctx_query {TYPE_2__ node; TYPE_1__* res; int /*<<< orphan*/  msg; int /*<<< orphan*/  msg_len; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;
struct TYPE_6__ {int /*<<< orphan*/  rr_pipe; int /*<<< orphan*/  num_async; int /*<<< orphan*/  queries; int /*<<< orphan*/  cfglock; } ;
struct TYPE_4__ {int was_ratelimited; void* why_bogus; } ;

/* Variables and functions */
 int UB_NOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct ctx_query*) ; 
 int /*<<< orphan*/ * FUNC1 (struct ctx_query*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 void* FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(struct libworker* w, struct ctx_query* q, sldns_buffer* pkt, 
	int err, char* reason, int was_ratelimited)
{
	uint8_t* msg = NULL;
	uint32_t len = 0;

	if(w->want_quit) {
		FUNC0(q);
		return;
	}
	/* serialize and delete unneeded q */
	if(w->is_bg_thread) {
		FUNC2(&w->ctx->cfglock);
		if(reason)
			q->res->why_bogus = FUNC9(reason);
		q->res->was_ratelimited = was_ratelimited;
		if(pkt) {
			q->msg_len = FUNC8(pkt);
			q->msg = FUNC5(FUNC7(pkt), q->msg_len);
			if(!q->msg) {
				msg = FUNC1(q, UB_NOMEM, NULL, &len);
			} else {
				msg = FUNC1(q, err, NULL, &len);
			}
		} else {
			msg = FUNC1(q, err, NULL, &len);
		}
		FUNC3(&w->ctx->cfglock);
	} else {
		if(reason)
			q->res->why_bogus = FUNC9(reason);
		q->res->was_ratelimited = was_ratelimited;
		msg = FUNC1(q, err, pkt, &len);
		(void)FUNC6(&w->ctx->queries, q->node.key);
		w->ctx->num_async--;
		FUNC0(q);
	}

	if(!msg) {
		FUNC4("out of memory for async answer");
		return;
	}
	if(!FUNC10(w->ctx->rr_pipe, msg, len)) {
		FUNC4("out of memory for async answer");
		return;
	}
}