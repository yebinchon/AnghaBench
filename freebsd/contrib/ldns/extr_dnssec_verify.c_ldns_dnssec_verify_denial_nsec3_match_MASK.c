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
typedef  int /*<<< orphan*/  ldns_rr_type ;
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  ldns_rdf ;
typedef  scalar_t__ ldns_pkt_rcode ;

/* Variables and functions */
 scalar_t__ LDNS_RCODE_NXDOMAIN ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_CNAME ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_DS ; 
 scalar_t__ LDNS_STATUS_DNSSEC_NSEC_RR_NOT_COVERED ; 
 scalar_t__ LDNS_STATUS_DNSSEC_NSEC_WILDCARD_NOT_COVERED ; 
 scalar_t__ LDNS_STATUS_NSEC3_ERR ; 
 scalar_t__ LDNS_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * next_closer ; 

ldns_status
FUNC17( ldns_rr *rr
				     , ldns_rr_list *nsecs
				     , ATTR_UNUSED(ldns_rr_list *rrsigs)
				     , ldns_pkt_rcode packet_rcode
				     , ldns_rr_type packet_qtype
				     , bool packet_nodata
				     , ldns_rr **match
				     )
{
	ldns_rdf *closest_encloser;
	ldns_rdf *wildcard;
	ldns_rdf *hashed_wildcard_name;
	bool wildcard_covered = false;
	ldns_rdf *zone_name;
	ldns_rdf *hashed_name;
	/* self assignment to suppress uninitialized warning */
	ldns_rdf *next_closer = next_closer;
	ldns_rdf *hashed_next_closer;
	size_t i;
	ldns_status result = LDNS_STATUS_DNSSEC_NSEC_RR_NOT_COVERED;

	if (match) {
		*match = NULL;
	}

	zone_name = FUNC4(FUNC16(FUNC14(nsecs,0)));

	/* section 8.4 */
	if (packet_rcode == LDNS_RCODE_NXDOMAIN) {
		closest_encloser = FUNC6(
						   FUNC16(rr),
						   FUNC13(rr),
						   nsecs);
                if(!closest_encloser) {
                        result = LDNS_STATUS_DNSSEC_NSEC_RR_NOT_COVERED;
                        goto done;
                }

		wildcard = FUNC5("*");
		(void) FUNC0(wildcard, closest_encloser);

		for (i = 0; i < FUNC15(nsecs); i++) {
			hashed_wildcard_name =
				FUNC8(FUNC14(nsecs, 0),
										 wildcard
										 );
			(void) FUNC0(hashed_wildcard_name, zone_name);

			if (FUNC11(FUNC14(nsecs, i),
								 hashed_wildcard_name)) {
				wildcard_covered = true;
				if (match) {
					*match = FUNC14(nsecs, i);
				}
			}
			FUNC12(hashed_wildcard_name);
		}

		if (! wildcard_covered) {
			result = LDNS_STATUS_DNSSEC_NSEC_WILDCARD_NOT_COVERED;
		} else {
			result = LDNS_STATUS_OK;
		}
		FUNC12(closest_encloser);
		FUNC12(wildcard);

	} else if (packet_nodata && packet_qtype != LDNS_RR_TYPE_DS) {
		/* section 8.5 */
		hashed_name = FUNC8(
		                   FUNC14(nsecs, 0),
		                   FUNC16(rr));
		(void) FUNC0(hashed_name, zone_name);
		for (i = 0; i < FUNC15(nsecs); i++) {
			if (FUNC2(hashed_name,
			         FUNC16(FUNC14(nsecs, i)))
			    == 0) {
				if (!FUNC10(
					    FUNC7(FUNC14(nsecs, i)),
					    packet_qtype)
				    &&
				    !FUNC10(
					    FUNC7(FUNC14(nsecs, i)),
					    LDNS_RR_TYPE_CNAME)) {
					result = LDNS_STATUS_OK;
					if (match) {
						*match = FUNC14(nsecs, i);
					}
					goto done;
				}
			}
		}
		result = LDNS_STATUS_DNSSEC_NSEC_RR_NOT_COVERED;
		/* wildcard no data? section 8.7 */
		closest_encloser = FUNC6(
				   FUNC16(rr),
				   FUNC13(rr),
				   nsecs);
		if(!closest_encloser) {
			result = LDNS_STATUS_NSEC3_ERR;
			goto done;
		}
		wildcard = FUNC5("*");
		(void) FUNC0(wildcard, closest_encloser);
		for (i = 0; i < FUNC15(nsecs); i++) {
			hashed_wildcard_name =
				FUNC8(FUNC14(nsecs, 0),
					 wildcard);
			(void) FUNC0(hashed_wildcard_name, zone_name);

			if (FUNC2(hashed_wildcard_name,
			         FUNC16(FUNC14(nsecs, i)))
			    == 0) {
				if (!FUNC10(
					    FUNC7(FUNC14(nsecs, i)),
					    packet_qtype)
				    &&
				    !FUNC10(
					    FUNC7(FUNC14(nsecs, i)),
					    LDNS_RR_TYPE_CNAME)) {
					result = LDNS_STATUS_OK;
					if (match) {
						*match = FUNC14(nsecs, i);
					}
				}
			}
			FUNC12(hashed_wildcard_name);
			if (result == LDNS_STATUS_OK) {
				break;
			}
		}
		FUNC12(closest_encloser);
		FUNC12(wildcard);
	} else if (packet_nodata && packet_qtype == LDNS_RR_TYPE_DS) {
		/* section 8.6 */
		/* note: up to XXX this is the same as for 8.5 */
		hashed_name = FUNC8(FUNC14(nsecs,
														 0),
											FUNC16(rr)
											);
		(void) FUNC0(hashed_name, zone_name);
		for (i = 0; i < FUNC15(nsecs); i++) {
			if (FUNC2(hashed_name,
							   FUNC16(FUNC14(nsecs,
													   i)))
			    == 0) {
				if (!FUNC10(
					    FUNC7(FUNC14(nsecs, i)),
					    LDNS_RR_TYPE_DS)
				    && 
				    !FUNC10(
					    FUNC7(FUNC14(nsecs, i)),
					    LDNS_RR_TYPE_CNAME)) {
					result = LDNS_STATUS_OK;
					if (match) {
						*match = FUNC14(nsecs, i);
					}
					goto done;
				}
			}
		}

		/* XXX see note above */
		result = LDNS_STATUS_DNSSEC_NSEC_RR_NOT_COVERED;

		closest_encloser = FUNC6(
				   FUNC16(rr),
				   FUNC13(rr),
				   nsecs);
		if(!closest_encloser) {
			result = LDNS_STATUS_NSEC3_ERR;
			goto done;
		}
		/* Now check if we have a Opt-Out NSEC3 that covers the "next closer"*/

		if (FUNC3(closest_encloser) + 1
		    >= FUNC3(FUNC16(rr))) {
			
			/* Query name *is* the "next closer". */
			hashed_next_closer = hashed_name;
		} else {

			/* "next closer" has less labels than the query name.
			 * Create the name and hash it.
			 */
			next_closer = FUNC1(
					FUNC16(rr),
					FUNC3(FUNC16(rr))
					- (FUNC3(closest_encloser) + 1)
					);
			hashed_next_closer = FUNC8(
					FUNC14(nsecs, 0),
					next_closer
					);
			(void) FUNC0(hashed_next_closer, zone_name);
		}
		/* Find the NSEC3 that covers the "next closer" */
		for (i = 0; i < FUNC15(nsecs); i++) {
			if (FUNC11(FUNC14(nsecs, i),
			                          hashed_next_closer) && 
				FUNC9(FUNC14(nsecs, i))) {

				result = LDNS_STATUS_OK;
				if (match) {
					*match = FUNC14(nsecs, i);
				}
				break;
			}
		}
		if (FUNC3(closest_encloser) + 1
		    < FUNC3(FUNC16(rr))) {

			/* "next closer" has less labels than the query name.
			 * Dispose of the temporary variables that held that name.
			 */
			FUNC12(hashed_next_closer);
			FUNC12(next_closer);
		}
		FUNC12(closest_encloser);
	}

 done:
	FUNC12(zone_name);
	return result;
}