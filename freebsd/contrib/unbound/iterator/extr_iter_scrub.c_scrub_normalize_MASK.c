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
struct rrset_parse {scalar_t__ section; scalar_t__ type; int rr_count; int flags; struct rrset_parse* rrset_all_next; scalar_t__ rrsig_count; int /*<<< orphan*/ * dname; } ;
struct regional {int dummy; } ;
struct query_info {size_t qname_len; scalar_t__ qtype; int /*<<< orphan*/ * qname; } ;
struct msg_parse {int an_rrsets; int rrset_count; struct rrset_parse* rrset_last; struct rrset_parse* rrset_first; scalar_t__ ar_rrsets; scalar_t__ ns_rrsets; scalar_t__ arcount; scalar_t__ nscount; scalar_t__ ancount; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LDNS_MAX_DOMAINLEN ; 
 scalar_t__ LDNS_RCODE_NOERROR ; 
 scalar_t__ LDNS_RCODE_NXDOMAIN ; 
 scalar_t__ LDNS_RR_TYPE_A ; 
 scalar_t__ LDNS_RR_TYPE_AAAA ; 
 scalar_t__ LDNS_RR_TYPE_ANY ; 
 scalar_t__ LDNS_RR_TYPE_CNAME ; 
 scalar_t__ LDNS_RR_TYPE_DNAME ; 
 scalar_t__ LDNS_RR_TYPE_DS ; 
 scalar_t__ LDNS_RR_TYPE_NS ; 
 scalar_t__ LDNS_SECTION_ADDITIONAL ; 
 scalar_t__ LDNS_SECTION_ANSWER ; 
 scalar_t__ LDNS_SECTION_AUTHORITY ; 
 int RRSET_SCRUB_OK ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct msg_parse*,struct rrset_parse*) ; 
 scalar_t__ FUNC4 (struct rrset_parse*,int /*<<< orphan*/ **,size_t*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *,struct msg_parse*,struct rrset_parse*,struct rrset_parse**) ; 
 scalar_t__ FUNC7 (struct msg_parse*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,size_t,struct rrset_parse*,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ *) ; 
 struct rrset_parse* FUNC10 (int /*<<< orphan*/ **,size_t*,int /*<<< orphan*/ *,size_t,struct regional*,struct msg_parse*,struct rrset_parse*,struct rrset_parse*,struct rrset_parse*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int
FUNC12(sldns_buffer* pkt, struct msg_parse* msg, 
	struct query_info* qinfo, struct regional* region)
{
	uint8_t* sname = qinfo->qname;
	size_t snamelen = qinfo->qname_len;
	struct rrset_parse* rrset, *prev, *nsset=NULL;

	if(FUNC0(msg->flags) != LDNS_RCODE_NOERROR &&
		FUNC0(msg->flags) != LDNS_RCODE_NXDOMAIN)
		return 1;

	/* For the ANSWER section, remove all "irrelevant" records and add
	 * synthesized CNAMEs from DNAMEs
	 * This will strip out-of-order CNAMEs as well. */

	/* walk through the parse packet rrset list, keep track of previous
	 * for insert and delete ease, and examine every RRset */
	prev = NULL;
	rrset = msg->rrset_first;
	while(rrset && rrset->section == LDNS_SECTION_ANSWER) {
		if(rrset->type == LDNS_RR_TYPE_DNAME && 
			FUNC5(pkt, sname, rrset->dname)) {
			/* check if next rrset is correct CNAME. else,
			 * synthesize a CNAME */
			struct rrset_parse* nx = rrset->rrset_all_next;
			uint8_t alias[LDNS_MAX_DOMAINLEN+1];
			size_t aliaslen = 0;
			if(rrset->rr_count != 1) {
				FUNC11(VERB_ALGO, "Found DNAME rrset with "
					"size > 1: %u", 
					(unsigned)rrset->rr_count);
				return 0;
			}
			if(!FUNC9(sname, snamelen, rrset, alias, 
				&aliaslen, pkt)) {
				FUNC11(VERB_ALGO, "synthesized CNAME "
					"too long");
				return 0;
			}
			if(nx && nx->type == LDNS_RR_TYPE_CNAME && 
			   FUNC1(pkt, sname, nx->dname) == 0) {
				/* check next cname */
				uint8_t* t = NULL;
				size_t tlen = 0;
				if(!FUNC4(nx, &t, &tlen))
					return 0;
				if(FUNC1(pkt, alias, t) == 0) {
					/* it's OK and better capitalized */
					prev = rrset;
					rrset = nx;
					continue;
				}
				/* synth ourselves */
			}
			/* synth a CNAME rrset */
			prev = FUNC10(&sname, &snamelen, alias, 
				aliaslen, region, msg, rrset, rrset, nx, pkt);
			if(!prev) {
				FUNC2("out of memory synthesizing CNAME");
				return 0;
			}
			/* FIXME: resolve the conflict between synthesized 
			 * CNAME ttls and the cache. */
			rrset = nx;
			continue;

		}

		/* The only records in the ANSWER section not allowed to */
		if(FUNC1(pkt, sname, rrset->dname) != 0) {
			FUNC6("normalize: removing irrelevant RRset:", 
				pkt, msg, prev, &rrset);
			continue;
		}

		/* Follow the CNAME chain. */
		if(rrset->type == LDNS_RR_TYPE_CNAME) {
			struct rrset_parse* nx = rrset->rrset_all_next;
			uint8_t* oldsname = sname;
			/* see if the next one is a DNAME, if so, swap them */
			if(nx && nx->section == LDNS_SECTION_ANSWER &&
				nx->type == LDNS_RR_TYPE_DNAME &&
				nx->rr_count == 1 &&
				FUNC5(pkt, sname, nx->dname)) {
				/* there is a DNAME after this CNAME, it 
				 * is in the ANSWER section, and the DNAME
				 * applies to the name we cover */
				/* check if the alias of the DNAME equals
				 * this CNAME */
				uint8_t alias[LDNS_MAX_DOMAINLEN+1];
				size_t aliaslen = 0;
				uint8_t* t = NULL;
				size_t tlen = 0;
				if(FUNC9(sname, snamelen, nx, alias,
					&aliaslen, pkt) &&
					FUNC4(rrset, &t, &tlen) &&
			   		FUNC1(pkt, alias, t) == 0) {
					/* the synthesized CNAME equals the
					 * current CNAME.  This CNAME is the
					 * one that the DNAME creates, and this
					 * CNAME is better capitalised */
					FUNC11(VERB_ALGO, "normalize: re-order of DNAME and its CNAME");
					if(prev) prev->rrset_all_next = nx;
					else msg->rrset_first = nx;
					if(nx->rrset_all_next == NULL)
						msg->rrset_last = rrset;
					rrset->rrset_all_next =
						nx->rrset_all_next;
					nx->rrset_all_next = rrset;
					/* prev = nx; unused, enable if there
					 * is other rrset removal code after
					 * this */
				}
			}

			/* move to next name in CNAME chain */
			if(!FUNC4(rrset, &sname, &snamelen))
				return 0;
			prev = rrset;
			rrset = rrset->rrset_all_next;
			/* in CNAME ANY response, can have data after CNAME */
			if(qinfo->qtype == LDNS_RR_TYPE_ANY) {
				while(rrset && rrset->section ==
					LDNS_SECTION_ANSWER &&
					FUNC1(pkt, oldsname,
					rrset->dname) == 0) {
					prev = rrset;
					rrset = rrset->rrset_all_next;
				}
			}
			continue;
		}

		/* Otherwise, make sure that the RRset matches the qtype. */
		if(qinfo->qtype != LDNS_RR_TYPE_ANY && 
			qinfo->qtype != rrset->type) {
			FUNC6("normalize: removing irrelevant RRset:", 
				pkt, msg, prev, &rrset);
			continue;
		}

		/* Mark the additional names from relevant rrset as OK. */
		/* only for RRsets that match the query name, other ones
		 * will be removed by sanitize, so no additional for them */
		if(FUNC1(pkt, qinfo->qname, rrset->dname) == 0)
			FUNC3(pkt, msg, rrset);
		
		prev = rrset;
		rrset = rrset->rrset_all_next;
	}

	/* Mark additional names from AUTHORITY */
	while(rrset && rrset->section == LDNS_SECTION_AUTHORITY) {
		if(rrset->type==LDNS_RR_TYPE_DNAME ||
			rrset->type==LDNS_RR_TYPE_CNAME ||
			rrset->type==LDNS_RR_TYPE_A ||
			rrset->type==LDNS_RR_TYPE_AAAA) {
			FUNC6("normalize: removing irrelevant "
				"RRset:", pkt, msg, prev, &rrset);
			continue;
		}
		/* only one NS set allowed in authority section */
		if(rrset->type==LDNS_RR_TYPE_NS) {
			/* NS set must be pertinent to the query */
			if(!FUNC8(pkt, qinfo->qname, rrset->dname)) {
				FUNC6("normalize: removing irrelevant "
					"RRset:", pkt, msg, prev, &rrset);
				continue;
			}
			/* we don't want NS sets for NXDOMAIN answers,
			 * because they could contain poisonous contents,
			 * from. eg. fragmentation attacks, inserted after
			 * long RRSIGs in the packet get to the packet
			 * border and such */
			/* also for NODATA answers */
			if(FUNC0(msg->flags) == LDNS_RCODE_NXDOMAIN ||
			   (FUNC0(msg->flags) == LDNS_RCODE_NOERROR
			    && FUNC7(msg) && msg->an_rrsets == 0)) {
				FUNC6("normalize: removing irrelevant "
					"RRset:", pkt, msg, prev, &rrset);
				continue;
			}
			if(nsset == NULL) {
				nsset = rrset;
			} else {
				FUNC6("normalize: removing irrelevant "
					"RRset:", pkt, msg, prev, &rrset);
				continue;
			}
		}
		/* if this is type DS and we query for type DS we just got
		 * a referral answer for our type DS query, fix packet */
		if(rrset->type==LDNS_RR_TYPE_DS &&
			qinfo->qtype == LDNS_RR_TYPE_DS &&
			FUNC1(pkt, qinfo->qname, rrset->dname) == 0) {
			rrset->section = LDNS_SECTION_ANSWER;
			msg->ancount = rrset->rr_count + rrset->rrsig_count;
			msg->nscount = 0;
			msg->arcount = 0;
			msg->an_rrsets = 1;
			msg->ns_rrsets = 0;
			msg->ar_rrsets = 0;
			msg->rrset_count = 1;
			msg->rrset_first = rrset;
			msg->rrset_last = rrset;
			rrset->rrset_all_next = NULL;
			return 1;
		}
		FUNC3(pkt, msg, rrset);
		prev = rrset;
		rrset = rrset->rrset_all_next;
	}

	/* For each record in the additional section, remove it if it is an
	 * address record and not in the collection of additional names 
	 * found in ANSWER and AUTHORITY. */
	/* These records have not been marked OK previously */
	while(rrset && rrset->section == LDNS_SECTION_ADDITIONAL) {
		/* FIXME: what about other types? */
		if(rrset->type==LDNS_RR_TYPE_A || 
			rrset->type==LDNS_RR_TYPE_AAAA) 
		{
			if((rrset->flags & RRSET_SCRUB_OK)) {
				/* remove flag to clean up flags variable */
				rrset->flags &= ~RRSET_SCRUB_OK;
			} else {
				FUNC6("normalize: removing irrelevant "
					"RRset:", pkt, msg, prev, &rrset);
				continue;
			}
		}
		if(rrset->type==LDNS_RR_TYPE_DNAME || 
			rrset->type==LDNS_RR_TYPE_CNAME ||
			rrset->type==LDNS_RR_TYPE_NS) {
			FUNC6("normalize: removing irrelevant "
				"RRset:", pkt, msg, prev, &rrset);
			continue;
		}
		prev = rrset;
		rrset = rrset->rrset_all_next;
	}
	
	return 1;
}