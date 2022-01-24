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
typedef  int /*<<< orphan*/  uint32_t ;
struct reply_info {int /*<<< orphan*/  flags; } ;
struct query_info {int /*<<< orphan*/  qclass; int /*<<< orphan*/  qtype; int /*<<< orphan*/  qname_len; int /*<<< orphan*/  qname; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; scalar_t__ data; } ;
struct msgreply_entry {TYPE_1__ entry; } ;
struct module_env {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ LDNS_RCODE_SERVFAIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct msgreply_entry* FUNC2 (struct module_env*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct module_env*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct module_env* env, struct query_info* qinfo,
	uint32_t flags)
{
	struct msgreply_entry* e;
	/* see if the entry is servfail, and then remove it, so that
	 * lookups move from the cacheresponse stage to the recursionresponse
	 * stage */
	e = FUNC2(env, qinfo->qname, qinfo->qname_len,
		qinfo->qtype, qinfo->qclass, flags, 0, 0);
	if(!e) return;
	/* we don't check for the ttl here, also expired servfail entries
	 * are removed.  If the user uses serve-expired, they would still be
	 * used to answer from cache */
	if(FUNC0(((struct reply_info*)e->entry.data)->flags)
		!= LDNS_RCODE_SERVFAIL) {
		FUNC1(&e->entry.lock);
		return;
	}
	FUNC1(&e->entry.lock);
	FUNC3(env, qinfo->qname, qinfo->qname_len, qinfo->qtype,
		qinfo->qclass, flags);
}