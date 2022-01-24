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
typedef  scalar_t__ ldns_status ;
typedef  int /*<<< orphan*/  ldns_rr_class ;
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  ldns_resolver ;
typedef  int /*<<< orphan*/  ldns_rdf ;
typedef  int /*<<< orphan*/  ldns_pkt ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RD ; 
 scalar_t__ LDNS_RR_TYPE_SOA ; 
 scalar_t__ LDNS_STATUS_ERR ; 
 scalar_t__ LDNS_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

ldns_status
FUNC9(ldns_rdf *zone, ldns_resolver *r,
    ldns_rr_class c, ldns_rdf **mname)
{
	ldns_rr		*soa_rr;
	ldns_pkt	*query, *resp;

	/* Nondestructive, so clone 'zone' here */
	query = FUNC2(FUNC4(zone), LDNS_RR_TYPE_SOA,
	    c, LDNS_RD);
	if (!query) {
		return LDNS_STATUS_ERR;
	}

	FUNC3(query);
	if (FUNC5(&resp, r, query) != LDNS_STATUS_OK) {
		FUNC1(query);
		return LDNS_STATUS_ERR;
	}
	FUNC1(query);
	if (!resp) {
		return LDNS_STATUS_ERR;
	}

	/* Expect a SOA answer. */
	*mname = NULL;
	while ((soa_rr = FUNC7(FUNC0(resp)))) {
		if (FUNC6(soa_rr) != LDNS_RR_TYPE_SOA
				|| FUNC8(soa_rr, 0) == NULL)
			continue;
		/* [RFC1035 3.3.13] */
		*mname = FUNC4(FUNC8(soa_rr, 0));
		break;
	}
	FUNC1(resp);

	return *mname ? LDNS_STATUS_OK : LDNS_STATUS_ERR;
}