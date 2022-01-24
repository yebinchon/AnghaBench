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
typedef  int /*<<< orphan*/  zname ;
typedef  int /*<<< orphan*/  tpstr ;
struct regional {int dummy; } ;
struct query_info {int /*<<< orphan*/  qtype; int /*<<< orphan*/  qname_len; int /*<<< orphan*/  qname; } ;
struct dns_msg {int dummy; } ;
struct auth_zone {int fallback_enabled; int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; } ;
struct auth_rrset {int /*<<< orphan*/  type; } ;
struct auth_data {int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  rrstr ;
typedef  int /*<<< orphan*/  qname ;
typedef  int /*<<< orphan*/  nname ;
typedef  int /*<<< orphan*/  cename ;

/* Variables and functions */
 scalar_t__ VERB_ALGO ; 
 int FUNC0 (struct auth_zone*,struct query_info*,struct auth_data*,int,struct auth_data**,struct auth_rrset**) ; 
 int /*<<< orphan*/  FUNC1 (struct auth_zone*,struct query_info*,int*,struct auth_data**) ; 
 int FUNC2 (struct auth_zone*,struct query_info*,struct regional*,struct dns_msg*,struct auth_data*,struct auth_rrset*,struct auth_data*) ; 
 int FUNC3 (struct auth_zone*,struct query_info*,struct regional*,struct dns_msg*,struct auth_data*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,char*,char*,char*,char*,char*,char*) ; 
 struct dns_msg* FUNC5 (struct regional*,struct query_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*) ; 
 scalar_t__ verbosity ; 

__attribute__((used)) static int
FUNC9(struct auth_zone* z, struct query_info* qinfo,
	struct regional* region, struct dns_msg** msg, int* fallback)
{
	struct auth_data* node, *ce;
	struct auth_rrset* rrset;
	int node_exact, node_exists;
	/* does the zone want fallback in case of failure? */
	*fallback = z->fallback_enabled;
	if(!(*msg=FUNC5(region, qinfo))) return 0;

	/* lookup if there is a matching domain name for the query */
	FUNC1(z, qinfo, &node_exact, &node);

	/* see if node exists for generating answers from (i.e. not glue and
	 * obscured by NS or DNAME or NSEC3-only), and also return the
	 * closest-encloser from that, closest node that should be used
	 * to generate answers from that is above the query */
	node_exists = FUNC0(z, qinfo, node, node_exact, &ce, &rrset);

	if(verbosity >= VERB_ALGO) {
		char zname[256], qname[256], nname[256], cename[256],
			tpstr[32], rrstr[32];
		FUNC6(qinfo->qname, qinfo->qname_len, qname,
			sizeof(qname));
		FUNC7(qinfo->qtype, tpstr, sizeof(tpstr));
		FUNC6(z->name, z->namelen, zname,
			sizeof(zname));
		if(node)
			FUNC6(node->name, node->namelen,
				nname, sizeof(nname));
		else	FUNC8(nname, sizeof(nname), "NULL");
		if(ce)
			FUNC6(ce->name, ce->namelen,
				cename, sizeof(cename));
		else	FUNC8(cename, sizeof(cename), "NULL");
		if(rrset) FUNC7(rrset->type, rrstr,
			sizeof(rrstr));
		else	FUNC8(rrstr, sizeof(rrstr), "NULL");
		FUNC4("auth_zone %s query %s %s, domain %s %s %s, "
			"ce %s, rrset %s", zname, qname, tpstr, nname,
			(node_exact?"exact":"notexact"),
			(node_exists?"exist":"notexist"), cename, rrstr);
	}

	if(node_exists) {
		/* the node is fine, generate answer from node */
		return FUNC3(z, qinfo, region, *msg,
			node);
	}
	return FUNC2(z, qinfo, region, *msg,
		ce, rrset, node);
}