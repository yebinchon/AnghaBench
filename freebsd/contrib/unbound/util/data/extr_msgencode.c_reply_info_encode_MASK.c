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
typedef  scalar_t__ uint16_t ;
typedef  size_t time_t ;
struct reply_info {scalar_t__ qdcount; int an_numrrsets; int rrset_count; int ns_numrrsets; int ar_numrrsets; int /*<<< orphan*/ * rrsets; int /*<<< orphan*/  flags; } ;
struct regional {int dummy; } ;
struct query_info {int /*<<< orphan*/  qtype; TYPE_1__* local_alias; } ;
struct compress_tree_node {int dummy; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;
typedef  int /*<<< orphan*/  arep ;
struct TYPE_2__ {int /*<<< orphan*/  rrset; } ;

/* Variables and functions */
 scalar_t__ BIT_AA ; 
 scalar_t__ LDNS_HEADER_SIZE ; 
 int /*<<< orphan*/  LDNS_SECTION_ADDITIONAL ; 
 int /*<<< orphan*/  LDNS_SECTION_ANSWER ; 
 int /*<<< orphan*/  LDNS_SECTION_AUTHORITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MINIMAL_RESPONSES ; 
 int RETVAL_OK ; 
 int RETVAL_TRUNC ; 
 scalar_t__ RRSET_ROUNDROBIN ; 
 int FUNC1 (struct query_info*,struct compress_tree_node**,int /*<<< orphan*/ *,struct regional*) ; 
 int FUNC2 (struct reply_info*,int,scalar_t__*,int /*<<< orphan*/ *,int,size_t,struct regional*,struct compress_tree_node**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct reply_info*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (struct reply_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 size_t FUNC15 (int /*<<< orphan*/ *) ; 

int 
FUNC16(struct query_info* qinfo, struct reply_info* rep, 
	uint16_t id, uint16_t flags, sldns_buffer* buffer, time_t timenow, 
	struct regional* region, uint16_t udpsize, int dnssec)
{
	uint16_t ancount=0, nscount=0, arcount=0;
	struct compress_tree_node* tree = 0;
	int r;
	size_t rr_offset; 

	FUNC7(buffer);
	if(udpsize < FUNC9(buffer))
		FUNC11(buffer, udpsize);
	if(FUNC10(buffer) < LDNS_HEADER_SIZE)
		return 0;

	FUNC12(buffer, &id, sizeof(uint16_t));
	FUNC13(buffer, flags);
	FUNC13(buffer, rep->qdcount);
	/* set an, ns, ar counts to zero in case of small packets */
	FUNC12(buffer, "\000\000\000\000\000\000", 6);

	/* insert query section */
	if(rep->qdcount) {
		if((r=FUNC1(qinfo, &tree, buffer, region)) != 
			RETVAL_OK) {
			if(r == RETVAL_TRUNC) {
				/* create truncated message */
				FUNC14(buffer, 4, 0);
				FUNC0(FUNC6(buffer));
				FUNC8(buffer);
				return 1;
			}
			return 0;
		}
	}
	/* roundrobin offset. using query id for random number.  With ntohs
	 * for different roundrobins for sequential id client senders. */
	rr_offset = RRSET_ROUNDROBIN?FUNC4(id)+(timenow?timenow:FUNC15(NULL)):0;

	/* "prepend" any local alias records in the answer section if this
	 * response is supposed to be authoritative.  Currently it should
	 * be a single CNAME record (sanity-checked in worker_handle_request())
	 * but it can be extended if and when we support more variations of
	 * aliases. */
	if(qinfo->local_alias && (flags & BIT_AA)) {
		struct reply_info arep;
		time_t timezero = 0; /* to use the 'authoritative' TTL */
		FUNC3(&arep, 0, sizeof(arep));
		arep.flags = rep->flags;
		arep.an_numrrsets = 1;
		arep.rrset_count = 1;
		arep.rrsets = &qinfo->local_alias->rrset;
		if((r=FUNC2(&arep, 1, &ancount, buffer, 0,
			timezero, region, &tree, LDNS_SECTION_ANSWER,
			qinfo->qtype, dnssec, rr_offset)) != RETVAL_OK) {
			if(r == RETVAL_TRUNC) {
				/* create truncated message */
				FUNC14(buffer, 6, ancount);
				FUNC0(FUNC6(buffer));
				FUNC8(buffer);
				return 1;
			}
			return 0;
		}
	}

	/* insert answer section */
	if((r=FUNC2(rep, rep->an_numrrsets, &ancount, buffer, 
		0, timenow, region, &tree, LDNS_SECTION_ANSWER, qinfo->qtype, 
		dnssec, rr_offset)) != RETVAL_OK) {
		if(r == RETVAL_TRUNC) {
			/* create truncated message */
			FUNC14(buffer, 6, ancount);
			FUNC0(FUNC6(buffer));
			FUNC8(buffer);
			return 1;
		}
		return 0;
	}
	FUNC14(buffer, 6, ancount);

	/* if response is positive answer, auth/add sections are not required */
	if( ! (MINIMAL_RESPONSES && FUNC5(rep, qinfo->qtype)) ) {
		/* insert auth section */
		if((r=FUNC2(rep, rep->ns_numrrsets, &nscount, buffer, 
			rep->an_numrrsets, timenow, region, &tree,
			LDNS_SECTION_AUTHORITY, qinfo->qtype,
			dnssec, rr_offset)) != RETVAL_OK) {
			if(r == RETVAL_TRUNC) {
				/* create truncated message */
				FUNC14(buffer, 8, nscount);
				FUNC0(FUNC6(buffer));
				FUNC8(buffer);
				return 1;
			}
			return 0;
		}
		FUNC14(buffer, 8, nscount);

		/* insert add section */
		if((r=FUNC2(rep, rep->ar_numrrsets, &arcount, buffer, 
			rep->an_numrrsets + rep->ns_numrrsets, timenow, region, 
			&tree, LDNS_SECTION_ADDITIONAL, qinfo->qtype, 
			dnssec, rr_offset)) != RETVAL_OK) {
			if(r == RETVAL_TRUNC) {
				/* no need to set TC bit, this is the additional */
				FUNC14(buffer, 10, arcount);
				FUNC8(buffer);
				return 1;
			}
			return 0;
		}
		FUNC14(buffer, 10, arcount);
	}
	FUNC8(buffer);
	return 1;
}