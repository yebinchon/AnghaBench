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
typedef  int uint32_t ;
struct TYPE_2__ {int* key; } ;
struct ub_result {int querynum; int async; int qtype; int qclass; TYPE_1__ node; struct ub_result* res; int /*<<< orphan*/  qname; } ;
struct ub_ctx {int /*<<< orphan*/  queries; int /*<<< orphan*/  num_async; } ;
struct ctx_query {int querynum; int async; int qtype; int qclass; TYPE_1__ node; struct ctx_query* res; int /*<<< orphan*/  qname; } ;

/* Variables and functions */
 scalar_t__ UB_LIBCMD_NEWQUERY ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ub_result*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

struct ctx_query* 
FUNC6(struct ub_ctx* ctx, uint8_t* p, uint32_t len)
{
	struct ctx_query* q = (struct ctx_query*)FUNC0(1, sizeof(*q));
	if(!q) return NULL;
	if(len < 4*sizeof(uint32_t)+1) {
		FUNC1(q);
		return NULL;
	}
	FUNC2( FUNC4(p) == UB_LIBCMD_NEWQUERY);
	q->querynum = (int)FUNC4(p+sizeof(uint32_t));
	q->node.key = &q->querynum;
	q->async = 1;
	q->res = (struct ub_result*)FUNC0(1, sizeof(*q->res));
	if(!q->res) {
		FUNC1(q);
		return NULL;
	}
	q->res->qtype = (int)FUNC4(p+2*sizeof(uint32_t));
	q->res->qclass = (int)FUNC4(p+3*sizeof(uint32_t));
	q->res->qname = FUNC5((char*)(p+4*sizeof(uint32_t)));
	if(!q->res->qname) {
		FUNC1(q->res);
		FUNC1(q);
		return NULL;
	}

	/** add to query list */
	ctx->num_async++;
	(void)FUNC3(&ctx->queries, &q->node);
	return q;
}