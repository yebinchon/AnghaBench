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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {size_t dname_len; int /*<<< orphan*/ * dname; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
struct query_info {scalar_t__ qtype; int /*<<< orphan*/ * qname; } ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_CNAME ; 
 scalar_t__ LDNS_RR_TYPE_DS ; 
 scalar_t__ LDNS_RR_TYPE_NS ; 
 scalar_t__ LDNS_RR_TYPE_SOA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,size_t*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (struct ub_packed_rrset_key*,int /*<<< orphan*/ **,size_t*) ; 
 scalar_t__ FUNC8 (struct ub_packed_rrset_key*,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC10(struct ub_packed_rrset_key* nsec, 
	struct query_info* qinfo, uint8_t** wc)
{
	FUNC6(wc);
	if(FUNC9(nsec->rk.dname, qinfo->qname) != 0) {
		uint8_t* nm;
		size_t ln;

		/* empty-non-terminal checking. 
		 * Done before wildcard, because this is an exact match,
		 * and would prevent a wildcard from matching. */

		/* If the nsec is proving that qname is an ENT, the nsec owner 
		 * will be less than qname, and the next name will be a child 
		 * domain of the qname. */
		if(!FUNC7(nsec, &nm, &ln))
			return 0; /* bad nsec */
		if(FUNC4(nm, qinfo->qname) &&
			FUNC0(nsec->rk.dname, 
				qinfo->qname) < 0) {
			return 1; /* proves ENT */
		}

		/* wildcard checking. */

		/* If this is a wildcard NSEC, make sure that a) it was 
		 * possible to have generated qname from the wildcard and 
		 * b) the type map does not contain qtype. Note that this 
		 * does NOT prove that this wildcard was the applicable 
		 * wildcard. */
		if(FUNC2(nsec->rk.dname)) {
			/* the purported closest encloser. */
			uint8_t* ce = nsec->rk.dname;
			size_t ce_len = nsec->rk.dname_len;
			FUNC3(&ce, &ce_len);

			/* The qname must be a strict subdomain of the 
			 * closest encloser, for the wildcard to apply 
			 */
			if(FUNC4(qinfo->qname, ce)) {
				/* here we have a matching NSEC for the qname,
				 * perform matching NSEC checks */
				if(FUNC8(nsec, LDNS_RR_TYPE_CNAME)) {
				   /* should have gotten the wildcard CNAME */
					return 0;
				}
				if(FUNC8(nsec, LDNS_RR_TYPE_NS) && 
				   !FUNC8(nsec, LDNS_RR_TYPE_SOA)) {
				   /* wrong parentside (wildcard) NSEC used */
					return 0;
				}
				if(FUNC8(nsec, qinfo->qtype)) {
					return 0;
				}
				*wc = ce;
				return 1;
			}
		} else {
			/* See if the next owner name covers a wildcard
			 * empty non-terminal. */
			while (FUNC0(nsec->rk.dname, nm) < 0) {
				/* wildcard does not apply if qname below
				 * the name that exists under the '*' */
				if (FUNC5(qinfo->qname, nm))
					break;
				/* but if it is a wildcard and qname is below
				 * it, then the wildcard applies. The wildcard
				 * is an empty nonterminal. nodata proven. */
				if (FUNC2(nm)) {
					size_t ce_len = ln;
					uint8_t* ce = nm;
					FUNC3(&ce, &ce_len);
					if(FUNC4(qinfo->qname, ce)) {
						*wc = ce;
						return 1;
					}
				}
				FUNC3(&nm, &ln);
			}
		}

		/* Otherwise, this NSEC does not prove ENT and is not a 
		 * wildcard, so it does not prove NODATA. */
		return 0;
	}

	/* If the qtype exists, then we should have gotten it. */
	if(FUNC8(nsec, qinfo->qtype)) {
		return 0;
	}

	/* if the name is a CNAME node, then we should have gotten the CNAME*/
	if(FUNC8(nsec, LDNS_RR_TYPE_CNAME)) {
		return 0;
	}

	/* If an NS set exists at this name, and NOT a SOA (so this is a 
	 * zone cut, not a zone apex), then we should have gotten a 
	 * referral (or we just got the wrong NSEC). 
	 * The reverse of this check is used when qtype is DS, since that
	 * must use the NSEC from above the zone cut. */
	if(qinfo->qtype != LDNS_RR_TYPE_DS &&
		FUNC8(nsec, LDNS_RR_TYPE_NS) && 
		!FUNC8(nsec, LDNS_RR_TYPE_SOA)) {
		return 0;
	} else if(qinfo->qtype == LDNS_RR_TYPE_DS &&
		FUNC8(nsec, LDNS_RR_TYPE_SOA) &&
		!FUNC1(qinfo->qname)) {
		return 0;
	}

	return 1;
}