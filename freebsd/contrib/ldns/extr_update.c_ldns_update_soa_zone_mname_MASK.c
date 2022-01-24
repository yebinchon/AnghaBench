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
 scalar_t__ LDNS_RR_TYPE_A ; 
 scalar_t__ LDNS_RR_TYPE_SOA ; 
 scalar_t__ LDNS_STATUS_ERR ; 
 scalar_t__ LDNS_STATUS_MEM_ERR ; 
 scalar_t__ LDNS_STATUS_OK ; 
 int /*<<< orphan*/ * FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

ldns_status
FUNC20(const char *fqdn, ldns_resolver *r,
    ldns_rr_class c, ldns_rdf **zone_rdf, ldns_rdf **mname_rdf)
{
	ldns_rr		*soa_rr, *rr;
	ldns_rdf	*soa_zone = NULL, *soa_mname = NULL;
	ldns_rdf	*ipaddr, *fqdn_rdf, *tmp;
	ldns_rdf	**nslist;
	ldns_pkt	*query, *resp;
	ldns_resolver   *tmp_r;
	size_t		i;

	/* 
	 * XXX Ok, this cannot be the best way to find this...?
	 * XXX (I run into weird cache-related stuff here)
	 */

	/* Step 1 - first find a nameserver that should know *something* */
	fqdn_rdf = FUNC0(fqdn);
	query = FUNC5(fqdn_rdf, LDNS_RR_TYPE_SOA, c, LDNS_RD);
	if (!query) {
		return LDNS_STATUS_ERR;
	}
	fqdn_rdf = NULL;

	FUNC6(query);
	if (FUNC14(&resp, r, query) != LDNS_STATUS_OK) {
		FUNC4(query);
		return LDNS_STATUS_ERR;
	}
	FUNC4(query);
	if (!resp) {
		return LDNS_STATUS_ERR;
	}

	/* XXX Is it safe to only look in authority section here? */
	while ((soa_rr = FUNC17(FUNC3(resp)))) {
		if (FUNC16(soa_rr) != LDNS_RR_TYPE_SOA
				|| FUNC19(soa_rr, 0) == NULL)
			continue;
		/* [RFC1035 3.3.13] */
		soa_mname = FUNC7(FUNC19(soa_rr, 0));
		break;
	}
	FUNC4(resp);
	if (!soa_rr) {
		return LDNS_STATUS_ERR;
	}

	/* Step 2 - find SOA MNAME IP address, add to resolver */
	query = FUNC5(soa_mname, LDNS_RR_TYPE_A, c, LDNS_RD);
	if (!query) {
		return LDNS_STATUS_ERR;
	}
	soa_mname = NULL;

	FUNC6(query);
	if (FUNC14(&resp, r, query) != LDNS_STATUS_OK) {
		FUNC4(query);
		return LDNS_STATUS_ERR;
	}
	FUNC4(query);
	if (!resp) {
		return LDNS_STATUS_ERR;
	}

	if (FUNC1(resp) == 0) {
		FUNC4(resp);
		return LDNS_STATUS_ERR;
	}

	/* XXX There may be more than one answer RR here. */
	rr = FUNC17(FUNC2(resp));
	ipaddr = FUNC19(rr, 0);

	/* Put the SOA mname IP first in the nameserver list. */
	if (!(tmp_r = FUNC9(r))) {
		return LDNS_STATUS_MEM_ERR;
	}
	nslist = FUNC12(tmp_r);
	for (i = 0; i < FUNC11(tmp_r); i++) {
		if (FUNC8(ipaddr, nslist[i]) == 0) {
			if (i) {
				tmp = nslist[0];
				nslist[0] = nslist[i];
				nslist[i] = tmp;
			}
			break;
		}
	}
	if (i >= FUNC11(tmp_r)) {
		/* SOA mname was not part of the resolver so add it first. */
		(void) FUNC13(tmp_r, ipaddr);
		nslist = FUNC12(tmp_r);
		i = FUNC11(tmp_r) - 1;
		tmp = nslist[0];
		nslist[0] = nslist[i];
		nslist[i] = tmp;
	}
	FUNC4(resp);

	/* Make sure to ask the first in the list, i.e SOA mname */
	FUNC15(tmp_r, false);

	/* Step 3 - Redo SOA query, sending to SOA MNAME directly. */
	fqdn_rdf = FUNC0(fqdn);
	query = FUNC5(fqdn_rdf, LDNS_RR_TYPE_SOA, c, LDNS_RD);
	if (!query) {
		FUNC10(tmp_r);
		return LDNS_STATUS_ERR;
	}
	fqdn_rdf = NULL;

	FUNC6(query);
	if (FUNC14(&resp, tmp_r, query) != LDNS_STATUS_OK) {
		FUNC4(query);
		FUNC10(tmp_r);
		return LDNS_STATUS_ERR;
	}
	FUNC10(tmp_r);
	FUNC4(query);
	if (!resp) {
		return LDNS_STATUS_ERR;
	}

	/* XXX Is it safe to only look in authority section here, too? */
	while ((soa_rr = FUNC17(FUNC3(resp)))) {
		if (FUNC16(soa_rr) != LDNS_RR_TYPE_SOA
				|| FUNC19(soa_rr, 0) == NULL)
			continue;
		/* [RFC1035 3.3.13] */
		soa_mname = FUNC7(FUNC19(soa_rr, 0));
		soa_zone = FUNC7(FUNC18(soa_rr));
		break;
	}
	FUNC4(resp);
	if (!soa_rr) {
		return LDNS_STATUS_ERR;
	}

	/* That seems to have worked, pass results to caller. */
	*zone_rdf = soa_zone;
	*mname_rdf = soa_mname;
	return LDNS_STATUS_OK;
}