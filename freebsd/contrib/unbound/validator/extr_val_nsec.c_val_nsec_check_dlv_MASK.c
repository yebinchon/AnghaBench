#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct reply_info {scalar_t__ an_numrrsets; size_t ns_numrrsets; TYPE_2__** rrsets; int /*<<< orphan*/  flags; } ;
struct query_info {int /*<<< orphan*/  qname; } ;
struct TYPE_6__ {int /*<<< orphan*/  type; int /*<<< orphan*/  dname; } ;
struct TYPE_7__ {TYPE_1__ rk; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ LDNS_RCODE_NOERROR ; 
 scalar_t__ LDNS_RCODE_NXDOMAIN ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_DLV ; 
 scalar_t__ LDNS_RR_TYPE_NSEC ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,size_t*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,size_t*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ **,size_t*) ; 
 scalar_t__ FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 

int FUNC11(struct query_info* qinfo,
        struct reply_info* rep, uint8_t** nm, size_t* nm_len)
{
	uint8_t* next;
	size_t i, nlen;
	int c;
	/* we should now have a NOERROR/NODATA or NXDOMAIN message */
	if(rep->an_numrrsets != 0) {
		return 0;
	}
	/* is this NOERROR ? */
	if(FUNC0(rep->flags) == LDNS_RCODE_NOERROR) {
		/* it can be a plain NSEC match - go up one more level. */
		/* or its an empty nonterminal - go up to nonempty level */
		for(i=0; i<rep->ns_numrrsets; i++) {
			if(FUNC5(rep->rrsets[i]->rk.type)!=LDNS_RR_TYPE_NSEC ||
				!FUNC7(rep->rrsets[i], &next, &nlen))
				continue;
			c = FUNC2(
				rep->rrsets[i]->rk.dname, qinfo->qname);
			if(c == 0) {
				/* plain match */
				if(FUNC8(rep->rrsets[i],
					LDNS_RR_TYPE_DLV))
					return 0;
				FUNC3(nm, nm_len);
				return 1;
			} else if(c < 0 && 
				FUNC4(next, qinfo->qname)) {
				/* ENT */
				FUNC1(rep->rrsets[i], qinfo->qname,
					nm, nm_len);
				return 1;
			}
		}
		return 0;
	}

	/* is this NXDOMAIN ? */
	if(FUNC0(rep->flags) == LDNS_RCODE_NXDOMAIN) {
		/* find the qname denial NSEC record. It can tell us
		 * a closest encloser name; or that we not need bother */
		for(i=0; i<rep->ns_numrrsets; i++) {
			if(FUNC5(rep->rrsets[i]->rk.type) != LDNS_RR_TYPE_NSEC)
				continue;
			if(FUNC10(rep->rrsets[i], 
				qinfo->qname)) {
				FUNC6(VERB_ALGO, "topdomain on",
					rep->rrsets[i]->rk.dname, 
					FUNC9(rep->rrsets[i]->rk.type), 0);
				FUNC1(rep->rrsets[i], qinfo->qname,
					nm, nm_len);
				return 1;
			}
		}
		return 0;
	}
	return 0;
}