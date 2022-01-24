#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_8__ {int /*<<< orphan*/  qclass; } ;
struct module_qstate {TYPE_1__ qinfo; TYPE_2__* env; scalar_t__ prefetch_leeway; int /*<<< orphan*/  region; int /*<<< orphan*/  blacklist; scalar_t__* minfo; } ;
struct iter_qstate {int query_for_pside_glue; int refetch_glue; TYPE_3__* dp; void* dnssec_expected; int /*<<< orphan*/  deleg_msg; } ;
struct TYPE_10__ {int /*<<< orphan*/  name; } ;
struct TYPE_9__ {scalar_t__* now; } ;

/* Variables and functions */
 int /*<<< orphan*/  FINISHED_STATE ; 
 int /*<<< orphan*/  INIT_REQUEST_STATE ; 
 int /*<<< orphan*/  VERB_QUERY ; 
 TYPE_3__* FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct module_qstate*,int,struct iter_qstate*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct module_qstate**,int /*<<< orphan*/ ) ; 
 void* FUNC4 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct module_qstate* qstate, 
	struct iter_qstate* iq, int id, uint8_t* name, size_t namelen, 
	uint16_t qtype, uint16_t qclass)
{
	struct module_qstate* subq;
	if(!FUNC3(name, namelen, qtype, qclass, qstate, 
		id, iq, INIT_REQUEST_STATE, FINISHED_STATE, &subq, 0))
		return 0;
	if(subq) {
		struct iter_qstate* subiq = 
			(struct iter_qstate*)subq->minfo[id];
		/* blacklist the cache - we want to fetch parent stuff */
		FUNC6(&subq->blacklist, NULL, 0, subq->region);
		subiq->query_for_pside_glue = 1;
		if(FUNC1(name, iq->dp->name)) {
			subiq->dp = FUNC0(iq->dp, subq->region);
			subiq->dnssec_expected = FUNC4(
				qstate->env, subiq->dp, NULL, 
				subq->qinfo.qclass);
			subiq->refetch_glue = 1;
		} else {
			subiq->dp = FUNC2(qstate->env, 
				name, namelen, qtype, qclass, subq->region,
				&subiq->deleg_msg,
				*qstate->env->now+subq->prefetch_leeway); 
			/* if no dp, then it's from root, refetch unneeded */
			if(subiq->dp) { 
				subiq->dnssec_expected = FUNC4(
					qstate->env, subiq->dp, NULL, 
					subq->qinfo.qclass);
				subiq->refetch_glue = 1;
			}
		}
	}
	FUNC5(VERB_QUERY, "new pside target", name, qtype, qclass);
	return 1;
}