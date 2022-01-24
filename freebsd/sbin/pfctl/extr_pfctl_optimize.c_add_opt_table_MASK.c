#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pfctl {int opts; } ;
struct TYPE_5__ {int /*<<< orphan*/  mask; int /*<<< orphan*/  addr; } ;
struct TYPE_6__ {TYPE_1__ a; } ;
struct TYPE_7__ {TYPE_2__ v; } ;
struct pf_rule_addr {TYPE_3__ addr; } ;
struct pf_opt_tbl {scalar_t__ pt_rulecount; int /*<<< orphan*/  pt_name; int /*<<< orphan*/  pt_nodes; TYPE_4__* pt_buf; } ;
struct node_tinit {int /*<<< orphan*/ * host; } ;
struct node_host {TYPE_3__ addr; int /*<<< orphan*/  af; } ;
typedef  int /*<<< orphan*/  sa_family_t ;
typedef  int /*<<< orphan*/  node_host ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_8__ {int /*<<< orphan*/  pfrb_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  PFRB_ADDRS ; 
 char* PF_OPT_TABLE_PREFIX ; 
 int PF_OPT_VERBOSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct node_tinit*,int /*<<< orphan*/ ) ; 
 scalar_t__ TABLE_THRESHOLD ; 
 scalar_t__ FUNC3 (TYPE_4__*,struct node_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int,int) ; 
 int /*<<< orphan*/  entries ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct node_host*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct node_host*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

int
FUNC13(struct pfctl *pf, struct pf_opt_tbl **tbl, sa_family_t af,
    struct pf_rule_addr *addr)
{
#ifdef OPT_DEBUG
	char buf[128];
#endif /* OPT_DEBUG */
	static int tablenum = 0;
	struct node_host node_host;

	if (*tbl == NULL) {
		if ((*tbl = FUNC4(1, sizeof(**tbl))) == NULL ||
		    ((*tbl)->pt_buf = FUNC4(1, sizeof(*(*tbl)->pt_buf))) ==
		    NULL)
			FUNC5(1, "calloc");
		(*tbl)->pt_buf->pfrb_type = PFRB_ADDRS;
		FUNC1(&(*tbl)->pt_nodes);

		/* This is just a temporary table name */
		FUNC10((*tbl)->pt_name, sizeof((*tbl)->pt_name), "%s%d",
		    PF_OPT_TABLE_PREFIX, tablenum++);
		FUNC0("creating table <%s>", (*tbl)->pt_name);
	}

	FUNC9(&node_host, 0, sizeof(node_host));
	node_host.af = af;
	node_host.addr = addr->addr;

#ifdef OPT_DEBUG
	DEBUG("<%s> adding %s/%d", (*tbl)->pt_name, inet_ntop(af,
	    &node_host.addr.v.a.addr, buf, sizeof(buf)),
	    unmask(&node_host.addr.v.a.mask, af));
#endif /* OPT_DEBUG */

	if (FUNC3((*tbl)->pt_buf, &node_host, 0, 0)) {
		FUNC12("failed to add host");
		return (1);
	}
	if (pf->opts & PF_OPT_VERBOSE) {
		struct node_tinit *ti;

		if ((ti = FUNC4(1, sizeof(*ti))) == NULL)
			FUNC5(1, "malloc");
		if ((ti->host = FUNC7(sizeof(*ti->host))) == NULL)
			FUNC5(1, "malloc");
		FUNC8(ti->host, &node_host, sizeof(*ti->host));
		FUNC2(&(*tbl)->pt_nodes, ti, entries);
	}

	(*tbl)->pt_rulecount++;
	if ((*tbl)->pt_rulecount == TABLE_THRESHOLD)
		FUNC0("table <%s> now faster than skip steps", (*tbl)->pt_name);

	return (0);
}