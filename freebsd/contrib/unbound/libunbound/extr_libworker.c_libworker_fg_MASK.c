#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct ub_ctx {TYPE_1__* env; int /*<<< orphan*/  local_zones; } ;
struct query_info {int /*<<< orphan*/  qname; } ;
struct libworker {int /*<<< orphan*/  base; TYPE_2__* back; TYPE_3__* env; } ;
struct edns_data {int dummy; } ;
struct ctx_query {struct libworker* w; } ;
struct TYPE_7__ {int /*<<< orphan*/  mesh; int /*<<< orphan*/  scratch; } ;
struct TYPE_6__ {int /*<<< orphan*/  udp_buff; } ;
struct TYPE_5__ {scalar_t__ auth_zones; } ;

/* Variables and functions */
 scalar_t__ BIT_RD ; 
 int /*<<< orphan*/  LDNS_RCODE_NOERROR ; 
 int UB_INITFAIL ; 
 int UB_NOERROR ; 
 int UB_NOMEM ; 
 int UB_SYNTAX ; 
 scalar_t__ FUNC0 (scalar_t__,TYPE_3__*,struct query_info*,struct edns_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct libworker*) ; 
 int /*<<< orphan*/  libworker_fg_done_cb ; 
 int /*<<< orphan*/  FUNC4 (struct ctx_query*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct libworker* FUNC5 (struct ub_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_3__*,struct query_info*,struct edns_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct query_info*,scalar_t__,struct edns_data*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,struct ctx_query*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sec_status_insecure ; 
 int /*<<< orphan*/  FUNC9 (struct libworker*,struct ctx_query*,struct query_info*,struct edns_data*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,scalar_t__) ; 

int FUNC11(struct ub_ctx* ctx, struct ctx_query* q)
{
	struct libworker* w = FUNC5(ctx, 0, NULL);
	uint16_t qflags, qid;
	struct query_info qinfo;
	struct edns_data edns;
	if(!w)
		return UB_INITFAIL;
	if(!FUNC9(w, q, &qinfo, &edns)) {
		FUNC3(w);
		return UB_SYNTAX;
	}
	qid = 0;
	qflags = BIT_RD;
	q->w = w;
	/* see if there is a fixed answer */
	FUNC10(w->back->udp_buff, 0, qid);
	FUNC10(w->back->udp_buff, 2, qflags);
	if(FUNC6(ctx->local_zones, w->env, &qinfo, &edns, 
		w->back->udp_buff, w->env->scratch, NULL, NULL, 0, NULL, 0,
		NULL, 0, NULL, 0, NULL)) {
		FUNC8(w->env->scratch);
		FUNC4(q, LDNS_RCODE_NOERROR, 
			w->back->udp_buff, sec_status_insecure, NULL, 0);
		FUNC3(w);
		FUNC2(qinfo.qname);
		return UB_NOERROR;
	}
	if(ctx->env->auth_zones && FUNC0(ctx->env->auth_zones,
		w->env, &qinfo, &edns, NULL, w->back->udp_buff, w->env->scratch)) {
		FUNC8(w->env->scratch);
		FUNC4(q, LDNS_RCODE_NOERROR, 
			w->back->udp_buff, sec_status_insecure, NULL, 0);
		FUNC3(w);
		FUNC2(qinfo.qname);
		return UB_NOERROR;
	}
	/* process new query */
	if(!FUNC7(w->env->mesh, &qinfo, qflags, &edns, 
		w->back->udp_buff, qid, libworker_fg_done_cb, q)) {
		FUNC2(qinfo.qname);
		return UB_NOMEM;
	}
	FUNC2(qinfo.qname);

	/* wait for reply */
	FUNC1(w->base);

	FUNC3(w);
	return UB_NOERROR;
}