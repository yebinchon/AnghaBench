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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  scalar_t__ time_t ;
struct rrset_ref {TYPE_3__* key; int /*<<< orphan*/  id; } ;
struct reply_info {size_t rrset_count; int flags; TYPE_3__** rrsets; } ;
struct regional {int dummy; } ;
struct query_info {struct reply_info* qname; int /*<<< orphan*/  qname_len; } ;
struct packed_rrset_data {int dummy; } ;
struct module_env {int /*<<< orphan*/  alloc; scalar_t__* now; int /*<<< orphan*/  rrset_cache; } ;
typedef  int /*<<< orphan*/  hashvalue_type ;
struct TYPE_5__ {int /*<<< orphan*/  type; } ;
struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_6__ {TYPE_2__ rk; int /*<<< orphan*/  id; TYPE_1__ entry; } ;

/* Variables and functions */
 int BIT_AA ; 
 int BIT_CD ; 
 int BIT_QR ; 
 int BIT_RA ; 
 scalar_t__ LDNS_RR_TYPE_NS ; 
 int /*<<< orphan*/  FUNC0 (struct module_env*,struct query_info*,int /*<<< orphan*/ ,struct reply_info*,scalar_t__,int,struct reply_info*,scalar_t__,struct regional*) ; 
 int /*<<< orphan*/  FUNC1 (struct reply_info*) ; 
 struct reply_info* FUNC2 (struct reply_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct packed_rrset_data*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct query_info*,int /*<<< orphan*/ ) ; 
 struct reply_info* FUNC6 (struct reply_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct reply_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct rrset_ref*,int /*<<< orphan*/ ,scalar_t__) ; 

int
FUNC9(struct module_env* env, struct query_info* msgqinf,
        struct reply_info* msgrep, int is_referral, time_t leeway, int pside,
	struct regional* region, uint32_t flags)
{
	struct reply_info* rep = NULL;
	/* alloc, malloc properly (not in region, like msg is) */
	rep = FUNC6(msgrep, env->alloc, NULL);
	if(!rep)
		return 0;
	/* ttl must be relative ;i.e. 0..86400 not  time(0)+86400.
	 * the env->now is added to message and RRsets in this routine. */
	/* the leeway is used to invalidate other rrsets earlier */

	if(is_referral) {
		/* store rrsets */
		struct rrset_ref ref;
		size_t i;
		for(i=0; i<rep->rrset_count; i++) {
			FUNC4((struct packed_rrset_data*)
				rep->rrsets[i]->entry.data, *env->now);
			ref.key = rep->rrsets[i];
			ref.id = rep->rrsets[i]->id;
			/*ignore ret: it was in the cache, ref updated */
			/* no leeway for typeNS */
			(void)FUNC8(env->rrset_cache, &ref, 
				env->alloc, *env->now + 
				((FUNC3(ref.key->rk.type)==LDNS_RR_TYPE_NS
				 && !pside) ? 0:leeway));
		}
		FUNC1(rep);
		return 1;
	} else {
		/* store msg, and rrsets */
		struct query_info qinf;
		hashvalue_type h;

		qinf = *msgqinf;
		qinf.qname = FUNC2(msgqinf->qname, msgqinf->qname_len);
		if(!qinf.qname) {
			FUNC7(rep, env->alloc);
			return 0;
		}
		/* fixup flags to be sensible for a reply based on the cache */
		/* this module means that RA is available. It is an answer QR. 
		 * Not AA from cache. Not CD in cache (depends on client bit). */
		rep->flags |= (BIT_RA | BIT_QR);
		rep->flags &= ~(BIT_AA | BIT_CD);
		h = FUNC5(&qinf, (uint16_t)flags);
		FUNC0(env, &qinf, h, rep, leeway, pside, msgrep,
			flags, region);
		/* qname is used inside query_info_entrysetup, and set to 
		 * NULL. If it has not been used, free it. free(0) is safe. */
		FUNC1(qinf.qname);
	}
	return 1;
}