#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  scalar_t__ time_t ;
struct reply_info {scalar_t__ ttl; size_t rrset_count; TYPE_2__** rrsets; TYPE_1__* ref; } ;
struct regional {int dummy; } ;
struct query_info {int dummy; } ;
struct msgreply_entry {int /*<<< orphan*/  entry; } ;
struct module_env {int /*<<< orphan*/  alloc; int /*<<< orphan*/  msg_cache; int /*<<< orphan*/ * now; } ;
typedef  int /*<<< orphan*/  hashvalue_type ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;
struct TYPE_3__ {int /*<<< orphan*/  id; TYPE_2__* key; } ;

/* Variables and functions */
 int DNSCACHE_STORE_ZEROTTL ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (struct reply_info*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct module_env*,struct query_info*,int) ; 
 struct msgreply_entry* FUNC3 (struct query_info*,struct reply_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct reply_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct reply_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct reply_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct module_env*,struct reply_info*,int /*<<< orphan*/ ,scalar_t__,int,struct reply_info*,struct regional*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

void 
FUNC9(struct module_env* env, struct query_info* qinfo,
	hashvalue_type hash, struct reply_info* rep, time_t leeway, int pside,
	struct reply_info* qrep, uint32_t flags, struct regional* region)
{
	struct msgreply_entry* e;
	time_t ttl = rep->ttl;
	size_t i;

	/* store RRsets */
        for(i=0; i<rep->rrset_count; i++) {
		rep->ref[i].key = rep->rrsets[i];
		rep->ref[i].id = rep->rrsets[i]->id;
	}

	/* there was a reply_info_sortref(rep) here but it seems to be
	 * unnecessary, because the cache gets locked per rrset. */
	FUNC4(rep, *env->now);
	FUNC7(env, rep, *env->now, leeway, pside, qrep, region);
	if(ttl == 0 && !(flags & DNSCACHE_STORE_ZEROTTL)) {
		/* we do not store the message, but we did store the RRs,
		 * which could be useful for delegation information */
		FUNC8(VERB_ALGO, "TTL 0: dropped msg from cache");
		FUNC0(rep);
		/* if the message is SERVFAIL in cache, remove that SERVFAIL,
		 * so that the TTL 0 response can be returned for future
		 * responses (i.e. don't get answered by the servfail from
		 * cache, but instead go to recursion to get this TTL0
		 * response). */
		FUNC2(env, qinfo, flags);
		return;
	}

	/* store msg in the cache */
	FUNC5(rep);
	if(!(e = FUNC3(qinfo, rep, hash))) {
		FUNC1("store_msg: malloc failed");
		return;
	}
	FUNC6(env->msg_cache, hash, &e->entry, rep, env->alloc);
}