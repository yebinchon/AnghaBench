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
struct query_info {scalar_t__ qtype; scalar_t__ qname_len; } ;
struct auth_zone {scalar_t__ namelen; } ;
struct auth_rrset {int dummy; } ;
struct auth_data {scalar_t__ namelen; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_TYPE_DNAME ; 
 scalar_t__ LDNS_RR_TYPE_DS ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_NS ; 
 struct auth_data* FUNC0 (struct auth_zone*,struct auth_data*) ; 
 struct auth_rrset* FUNC1 (struct auth_data*,int /*<<< orphan*/ ) ; 
 struct auth_data* FUNC2 (struct auth_zone*,struct query_info*,struct auth_data*) ; 
 scalar_t__ FUNC3 (struct auth_data*) ; 

__attribute__((used)) static int
FUNC4(struct auth_zone* z, struct query_info* qinfo,
	struct auth_data* node, int node_exact, struct auth_data** ce,
	struct auth_rrset** rrset)
{
	struct auth_data* n = node;
	*ce = NULL;
	*rrset = NULL;
	if(!node_exact) {
		/* if not exact, lookup closest exact match */
		n = FUNC2(z, qinfo, n);
	} else {
		/* if exact, the node itself is the first candidate ce */
		*ce = n;
	}

	/* no direct answer from nsec3-only domains */
	if(n && FUNC3(n)) {
		node_exact = 0;
		*ce = NULL;
	}

	/* with exact matches, walk up the labels until we find the
	 * delegation, or DNAME or zone end */
	while(n) {
		/* see if the current candidate has issues */
		/* not zone apex and has type NS */
		if(n->namelen != z->namelen &&
			(*rrset=FUNC1(n, LDNS_RR_TYPE_NS)) &&
			/* delegate here, but DS at exact the dp has notype */
			(qinfo->qtype != LDNS_RR_TYPE_DS || 
			n->namelen != qinfo->qname_len)) {
			/* referral */
			/* this is ce and the lowernode is nonexisting */
			*ce = n;
			return 0;
		}
		/* not equal to qname and has type DNAME */
		if(n->namelen != qinfo->qname_len &&
			(*rrset=FUNC1(n, LDNS_RR_TYPE_DNAME))) {
			/* this is ce and the lowernode is nonexisting */
			*ce = n;
			return 0;
		}

		if(*ce == NULL && !FUNC3(n)) {
			/* if not found yet, this exact name must be
			 * our lowest match (but not nsec3onlydomain) */
			*ce = n;
		}

		/* walk up the tree by removing labels from name and lookup */
		n = FUNC0(z, n);
	}
	/* found no problems, if it was an exact node, it is fine to use */
	return node_exact;
}