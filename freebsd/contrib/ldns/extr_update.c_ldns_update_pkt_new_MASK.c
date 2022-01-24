#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  scalar_t__ ldns_rr_class ;
typedef  int /*<<< orphan*/  ldns_rdf ;
struct TYPE_11__ {int /*<<< orphan*/  _additional; int /*<<< orphan*/  _answer; int /*<<< orphan*/  _authority; } ;
typedef  TYPE_1__ ldns_pkt ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_PACKET_UPDATE ; 
 int /*<<< orphan*/  LDNS_RD ; 
 scalar_t__ LDNS_RR_CLASS_IN ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_SOA ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 

ldns_pkt *
FUNC11(ldns_rdf *zone_rdf, ldns_rr_class c,
    const ldns_rr_list *pr_rrlist, const ldns_rr_list *up_rrlist, const ldns_rr_list *ad_rrlist)
{
	ldns_pkt *p;

	if (!zone_rdf || !up_rrlist) {
		return NULL;
	}

	if (c == 0) { 
		c = LDNS_RR_CLASS_IN;
	}

	/* Create packet, fill in Zone Section. */
	p = FUNC0(zone_rdf, LDNS_RR_TYPE_SOA, c, LDNS_RD);
	if (!p) {
		return NULL;
	}
	zone_rdf = NULL; /* No longer safe to use. */

	FUNC4(p, LDNS_PACKET_UPDATE);

	FUNC6(p->_authority);

	FUNC3(p, FUNC5(up_rrlist));

	FUNC10(p, FUNC7(up_rrlist));

	if (pr_rrlist) {
		FUNC6(p->_answer); /*XXX access function */
		FUNC2(p, FUNC5(pr_rrlist));
		FUNC9(p, FUNC7(pr_rrlist));
	}

	if (ad_rrlist) {
		FUNC6(p->_additional);
		FUNC1(p, FUNC5(ad_rrlist));
		FUNC8(p, FUNC7(ad_rrlist));
	}
	return p;
}