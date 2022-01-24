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
struct timeval {scalar_t__ tv_usec; int /*<<< orphan*/  tv_sec; } ;
typedef  scalar_t__ ldns_status ;
typedef  scalar_t__ ldns_rr_type ;
typedef  int /*<<< orphan*/  ldns_rr_class ;
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  ldns_resolver ;
typedef  int /*<<< orphan*/  ldns_rdf ;
typedef  int /*<<< orphan*/  ldns_pkt ;

/* Variables and functions */
 int LDNS_CD ; 
 int /*<<< orphan*/  LDNS_RDF_TYPE_INT32 ; 
 scalar_t__ LDNS_RR_TYPE_IXFR ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_SOA ; 
 scalar_t__ LDNS_STATUS_ERR ; 
 scalar_t__ LDNS_STATUS_OK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct timeval) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 

ldns_status
FUNC26(ldns_pkt **query_pkt, ldns_resolver *r,
                                const ldns_rdf *name, ldns_rr_type t,
                                ldns_rr_class c, uint16_t flags)
{
	struct timeval now;
	ldns_rr* soa = NULL;

	/* prepare a question pkt from the parameters
	 * and then send this */
	if (t == LDNS_RR_TYPE_IXFR) {
		ldns_rdf *owner_rdf;
		ldns_rdf *mname_rdf;
		ldns_rdf *rname_rdf;
		ldns_rdf *serial_rdf;
		ldns_rdf *refresh_rdf;
		ldns_rdf *retry_rdf;
		ldns_rdf *expire_rdf;
		ldns_rdf *minimum_rdf;
		soa = FUNC18();

		if (!soa) {
			return LDNS_STATUS_ERR;
		}
		owner_rdf = FUNC10(name);
		if (!owner_rdf) {
			FUNC17(soa);
			return LDNS_STATUS_ERR;
		}
		FUNC21(soa, owner_rdf);
		FUNC23(soa, LDNS_RR_TYPE_SOA);
		FUNC20(soa, c);
		FUNC22(soa, false);
		if (FUNC24(&mname_rdf, ".") != LDNS_STATUS_OK) {
			FUNC17(soa);
			return LDNS_STATUS_ERR;
		} else	FUNC19(soa, mname_rdf);
		if (FUNC24(&rname_rdf, ".") != LDNS_STATUS_OK) {
			FUNC17(soa);
			return LDNS_STATUS_ERR;
		} else	FUNC19(soa, rname_rdf);
		serial_rdf = FUNC0(LDNS_RDF_TYPE_INT32, FUNC15(r));
		if (!serial_rdf) {
			FUNC17(soa);
			return LDNS_STATUS_ERR;
		} else	FUNC19(soa, serial_rdf);
		refresh_rdf = FUNC0(LDNS_RDF_TYPE_INT32, 0);
		if (!refresh_rdf) {
			FUNC17(soa);
			return LDNS_STATUS_ERR;
		} else	FUNC19(soa, refresh_rdf);
		retry_rdf = FUNC0(LDNS_RDF_TYPE_INT32, 0);
		if (!retry_rdf) {
			FUNC17(soa);
			return LDNS_STATUS_ERR;
		} else	FUNC19(soa, retry_rdf);
		expire_rdf = FUNC0(LDNS_RDF_TYPE_INT32, 0);
		if (!expire_rdf) {
			FUNC17(soa);
			return LDNS_STATUS_ERR;
		} else	FUNC19(soa, expire_rdf);
		minimum_rdf = FUNC0(LDNS_RDF_TYPE_INT32, 0);
		if (!minimum_rdf) {
			FUNC17(soa);
			return LDNS_STATUS_ERR;
		} else	FUNC19(soa, minimum_rdf);

		*query_pkt = FUNC2(FUNC10(name),
			c, flags, soa);
	} else {
		*query_pkt = FUNC4(FUNC10(name), t, c, flags);
	}
	if (!*query_pkt) {
		FUNC17(soa);
		return LDNS_STATUS_ERR;
	}

	/* set DO bit if necessary */
	if (FUNC12(r)) {
		if (FUNC14(r) == 0) {
			FUNC16(r, 4096);
		}
		FUNC6(*query_pkt, true);
		if (FUNC13(r) || (flags & LDNS_CD)) {
			FUNC5(*query_pkt, true);
		}
	}

	/* transfer the udp_edns_size from the resolver to the packet */
	if (FUNC14(r) != 0) {
		FUNC7(*query_pkt, FUNC14(r));
	}

	/* set the timestamp */
	now.tv_sec = FUNC25(NULL);
	now.tv_usec = 0;
	FUNC9(*query_pkt, now);


	if (FUNC11(r)) {
		FUNC3(stdout, *query_pkt);
	}

	/* only set the id if it is not set yet */
	if (FUNC1(*query_pkt) == 0) {
		FUNC8(*query_pkt);
	}

	return LDNS_STATUS_OK;
}