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
struct regional {int dummy; } ;
struct query_info {scalar_t__ qclass; scalar_t__ qtype; int /*<<< orphan*/  qname; } ;
struct msg_parse {int qdcount; int flags; scalar_t__ qtype; scalar_t__ qclass; int /*<<< orphan*/  qname; } ;
struct module_env {int dummy; } ;
struct iter_env {int dummy; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 int BIT_AD ; 
 int BIT_QR ; 
 int BIT_Z ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ LDNS_RCODE_NOERROR ; 
 scalar_t__ LDNS_RCODE_NXDOMAIN ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_NS ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct msg_parse*,struct query_info*,struct regional*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct msg_parse*,struct query_info*,int /*<<< orphan*/ *,struct module_env*,struct iter_env*) ; 

int 
FUNC5(sldns_buffer* pkt, struct msg_parse* msg, 
	struct query_info* qinfo, uint8_t* zonename, struct regional* region,
	struct module_env* env, struct iter_env* ie)
{
	/* basic sanity checks */
	FUNC2(VERB_ALGO, "scrub for", zonename, LDNS_RR_TYPE_NS, 
		qinfo->qclass);
	if(msg->qdcount > 1)
		return 0;
	if( !(msg->flags&BIT_QR) )
		return 0;
	msg->flags &= ~(BIT_AD|BIT_Z); /* force off bit AD and Z */
	
	/* make sure that a query is echoed back when NOERROR or NXDOMAIN */
	/* this is not required for basic operation but is a forgery 
	 * resistance (security) feature */
	if((FUNC0(msg->flags) == LDNS_RCODE_NOERROR ||
		FUNC0(msg->flags) == LDNS_RCODE_NXDOMAIN) &&
		msg->qdcount == 0)
		return 0;

	/* if a query is echoed back, make sure it is correct. Otherwise,
	 * this may be not a reply to our query. */
	if(msg->qdcount == 1) {
		if(FUNC1(pkt, msg->qname, qinfo->qname) != 0)
			return 0;
		if(msg->qtype != qinfo->qtype || msg->qclass != qinfo->qclass)
			return 0;
	}

	/* normalize the response, this cleans up the additional.  */
	if(!FUNC3(pkt, msg, qinfo, region))
		return 0;
	/* delete all out-of-zone information */
	if(!FUNC4(pkt, msg, qinfo, zonename, env, ie))
		return 0;
	return 1;
}