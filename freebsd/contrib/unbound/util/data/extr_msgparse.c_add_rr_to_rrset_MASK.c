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
typedef  scalar_t__ uint16_t ;
struct rrset_parse {scalar_t__ section; scalar_t__ type; int /*<<< orphan*/  size; int /*<<< orphan*/  rr_count; struct rr_parse* rr_last; struct rr_parse* rr_first; int /*<<< orphan*/  rrsig_count; struct rr_parse* rrsig_last; struct rr_parse* rrsig_first; } ;
struct rr_parse {scalar_t__ size; struct rr_parse* next; int /*<<< orphan*/  ttl_data; scalar_t__ outside_packet; } ;
struct regional {int dummy; } ;
struct msg_parse {scalar_t__ qtype; } ;
typedef  scalar_t__ sldns_pkt_section ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 int LDNS_RCODE_FORMERR ; 
 int LDNS_RCODE_SERVFAIL ; 
 scalar_t__ LDNS_RR_TYPE_ANY ; 
 scalar_t__ LDNS_RR_TYPE_RRSIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,struct rr_parse*) ; 
 scalar_t__ FUNC1 (struct regional*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,struct rrset_parse*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct rrset_parse* rrset, sldns_buffer* pkt, 
	struct msg_parse* msg, struct regional* region, 
	sldns_pkt_section section, uint16_t type)
{
	struct rr_parse* rr;
	/* check section of rrset. */
	if(rrset->section != section && type != LDNS_RR_TYPE_RRSIG &&
		rrset->type != LDNS_RR_TYPE_RRSIG) {
		/* silently drop it - we drop the last part, since
		 * trust in rr data depends on the section it is in. 
		 * the less trustworthy part is discarded. 
		 * also the last part is more likely to be incomplete.
		 * RFC 2181: must put RRset only once in response. */
		/*
		verbose(VERB_QUERY, "Packet contains rrset data in "
			"multiple sections, dropped last part.");
		log_buf(VERB_QUERY, "packet was", pkt);
		*/
		/* forwards */
		if(!FUNC3(pkt))
			return LDNS_RCODE_FORMERR;
		return 0;
	} 

	if( (msg->qtype == LDNS_RR_TYPE_RRSIG ||
	     msg->qtype == LDNS_RR_TYPE_ANY) 
	    && FUNC2(pkt, rrset, FUNC4(pkt))) {
		if(!FUNC3(pkt))
			return LDNS_RCODE_FORMERR;
		return 0;
	}
	
	/* create rr */
	if(!(rr = (struct rr_parse*)FUNC1(region, sizeof(*rr))))
		return LDNS_RCODE_SERVFAIL;
	rr->outside_packet = 0;
	rr->ttl_data = FUNC4(pkt);
	rr->next = 0;
	if(type == LDNS_RR_TYPE_RRSIG && rrset->type != LDNS_RR_TYPE_RRSIG) {
		if(rrset->rrsig_last) 
			rrset->rrsig_last->next = rr;
		else	rrset->rrsig_first = rr;
		rrset->rrsig_last = rr;
		rrset->rrsig_count++;
	} else {
		if(rrset->rr_last)
			rrset->rr_last->next = rr;
		else	rrset->rr_first = rr;
		rrset->rr_last = rr;
		rrset->rr_count++;
	}

	/* calc decompressed size */
	if(!FUNC0(pkt, type, rr))
		return LDNS_RCODE_FORMERR;
	rrset->size += rr->size;

	return 0;
}