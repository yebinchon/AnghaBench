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
struct ub_result {int rcode; int havedata; int nxdomain; int secure; int bogus; scalar_t__* data; } ;
struct reply_info {int /*<<< orphan*/  flags; } ;
struct regional {int dummy; } ;
struct query_info {int dummy; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;
typedef  enum sec_status { ____Placeholder_sec_status } sec_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int LDNS_RCODE_NXDOMAIN ; 
 int LDNS_RCODE_SERVFAIL ; 
 int /*<<< orphan*/  FUNC1 (struct ub_result*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct query_info*,struct reply_info*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct reply_info* FUNC3 (int /*<<< orphan*/ *,struct regional*,struct query_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct query_info*,struct reply_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct query_info*,struct reply_info*) ; 
 int sec_status_bogus ; 
 int sec_status_secure ; 
 int sec_status_secure_sentinel_fail ; 

void
FUNC6(struct ub_result* res, sldns_buffer* buf,
	struct regional* temp, enum sec_status msg_security)
{
	struct query_info rq;
	struct reply_info* rep;
	res->rcode = LDNS_RCODE_SERVFAIL;
	rep = FUNC3(buf, temp, &rq);
	if(!rep) {
		FUNC2("cannot parse buf");
		return; /* error parsing buf, or out of memory */
	}
	if(!FUNC1(res, FUNC4(&rq, rep), 
		FUNC5(&rq, rep), &rq, rep))
		return; /* out of memory */
	/* rcode, havedata, nxdomain, secure, bogus */
	res->rcode = (int)FUNC0(rep->flags);
	if(res->data && res->data[0])
		res->havedata = 1;
	if(res->rcode == LDNS_RCODE_NXDOMAIN)
		res->nxdomain = 1;
	if(msg_security == sec_status_secure)
		res->secure = 1;
	if(msg_security == sec_status_bogus ||
		msg_security == sec_status_secure_sentinel_fail)
		res->bogus = 1;
}