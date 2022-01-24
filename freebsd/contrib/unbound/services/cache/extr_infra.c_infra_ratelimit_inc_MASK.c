#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  ts ;
typedef  int /*<<< orphan*/  time_t ;
struct sockaddr_storage {int dummy; } ;
struct query_info {int /*<<< orphan*/  qclass; int /*<<< orphan*/  qtype; int /*<<< orphan*/ * qname; } ;
struct lruhash_entry {int /*<<< orphan*/  lock; int /*<<< orphan*/  data; } ;
struct infra_cache {int dummy; } ;
struct comm_reply {int /*<<< orphan*/  addrlen; int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  ip ;
typedef  int /*<<< orphan*/  cs ;

/* Variables and functions */
 int /*<<< orphan*/  VERB_OPS ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr_storage*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct infra_cache*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  infra_dp_ratelimit ; 
 struct lruhash_entry* FUNC3 (struct infra_cache*,int /*<<< orphan*/ *,size_t,int) ; 
 int FUNC4 (struct infra_cache*,int /*<<< orphan*/ *,size_t) ; 
 int* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,char*,int,char*,char*,char*,...) ; 

int FUNC11(struct infra_cache* infra, uint8_t* name,
	size_t namelen, time_t timenow, struct query_info* qinfo,
	struct comm_reply* replylist)
{
	int lim, max;
	struct lruhash_entry* entry;

	if(!infra_dp_ratelimit)
		return 1; /* not enabled */

	/* find ratelimit */
	lim = FUNC4(infra, name, namelen);
	if(!lim)
		return 1; /* disabled for this domain */
	
	/* find or insert ratedata */
	entry = FUNC3(infra, name, namelen, 1);
	if(entry) {
		int premax = FUNC6(entry->data, timenow);
		int* cur = FUNC5(entry->data, timenow);
		(*cur)++;
		max = FUNC6(entry->data, timenow);
		FUNC7(&entry->lock);

		if(premax < lim && max >= lim) {
			char buf[257], qnm[257], ts[12], cs[12], ip[128];
			FUNC1(name, buf);
			FUNC1(qinfo->qname, qnm);
			FUNC9(qinfo->qtype, ts, sizeof(ts));
			FUNC8(qinfo->qclass, cs, sizeof(cs));
			ip[0]=0;
			if(replylist) {
				FUNC0((struct sockaddr_storage *)&replylist->addr,
					replylist->addrlen, ip, sizeof(ip));
				FUNC10(VERB_OPS, "ratelimit exceeded %s %d query %s %s %s from %s", buf, lim, qnm, cs, ts, ip);
			} else {
				FUNC10(VERB_OPS, "ratelimit exceeded %s %d query %s %s %s", buf, lim, qnm, cs, ts);
			}
		}
		return (max < lim);
	}

	/* create */
	FUNC2(infra, name, namelen, timenow);
	return (1 < lim);
}