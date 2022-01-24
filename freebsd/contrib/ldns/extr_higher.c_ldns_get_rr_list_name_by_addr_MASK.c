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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_rr_class ;
typedef  int /*<<< orphan*/  ldns_resolver ;
typedef  int /*<<< orphan*/  ldns_rdf ;
typedef  int /*<<< orphan*/  ldns_pkt ;

/* Variables and functions */
 int LDNS_RD ; 
 scalar_t__ LDNS_RDF_TYPE_A ; 
 scalar_t__ LDNS_RDF_TYPE_AAAA ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_PTR ; 
 int /*<<< orphan*/  LDNS_SECTION_ANSWER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

ldns_rr_list *
FUNC6(ldns_resolver *res, const ldns_rdf *addr,
		ldns_rr_class c, uint16_t flags)
{
	ldns_pkt *pkt;
	ldns_rr_list *names;
	ldns_rdf *name;

	names = NULL;

	if (!res || !addr) {
		return NULL;
	}

	if (FUNC4(addr) != LDNS_RDF_TYPE_A &&
			FUNC4(addr) != LDNS_RDF_TYPE_AAAA) {
		return NULL;
	}

	name = FUNC2(addr);
	
	/* add the RD flags, because we want an answer */
	pkt = FUNC5(res, name, LDNS_RR_TYPE_PTR, c, flags | LDNS_RD);
	FUNC3(name);
	if (pkt) {
		/* extract the data we need */
		names = FUNC1(pkt, 
				LDNS_RR_TYPE_PTR, LDNS_SECTION_ANSWER);
		FUNC0(pkt);
	}
	return names;
}