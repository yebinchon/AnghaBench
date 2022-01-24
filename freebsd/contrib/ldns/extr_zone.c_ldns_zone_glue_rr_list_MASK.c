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
typedef  int /*<<< orphan*/  ldns_zone ;
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  ldns_rdf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ LDNS_RR_TYPE_A ; 
 scalar_t__ LDNS_RR_TYPE_AAAA ; 
 scalar_t__ LDNS_RR_TYPE_NS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 size_t FUNC11 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/  const*) ; 

ldns_rr_list *
FUNC14(const ldns_zone *z)
{
	/* when do we find glue? It means we find an IP address
	 * (AAAA/A) for a nameserver listed in the zone
	 *
	 * Alg used here:
	 * first find all the zonecuts (NS records)
	 * find all the AAAA or A records (can be done it the 
	 * above loop).
	 *
	 * Check if the aaaa/a list are subdomains under the
	 * NS domains.
	 * If yes -> glue, if no -> not glue
	 */

	ldns_rr_list *zone_cuts;
	ldns_rr_list *addr;
	ldns_rr_list *glue;
	ldns_rr *r, *ns, *a;
	ldns_rdf *dname_a, *ns_owner;
	size_t i,j;

	zone_cuts = NULL;
	addr = NULL;
	glue = NULL;

	/* we cannot determine glue in a 'zone' without a SOA */
	if (!FUNC13(z)) {
		return NULL;
	}

	zone_cuts = FUNC6();
	if (!zone_cuts) goto memory_error;
	addr = FUNC6();
	if (!addr) goto memory_error;
	glue = FUNC6();
	if (!glue) goto memory_error;

	for(i = 0; i < FUNC11(z); i++) {
		r = FUNC8(FUNC12(z), i);
		if (FUNC4(r) == LDNS_RR_TYPE_A ||
				FUNC4(r) == LDNS_RR_TYPE_AAAA) {
			/* possibly glue */
			if (!FUNC7(addr, r)) goto memory_error;
			continue;
		}
		if (FUNC4(r) == LDNS_RR_TYPE_NS) {
			/* multiple zones will end up here -
			 * for now; not a problem
			 */
			/* don't add NS records for the current zone itself */
			if (FUNC3(FUNC10(r), 
						FUNC10(FUNC13(z))) != 0) {
				if (!FUNC7(zone_cuts, r)) goto memory_error;
			}
			continue;
		}
	}

	/* will sorting make it quicker ?? */
	for(i = 0; i < FUNC9(zone_cuts); i++) {
		ns = FUNC8(zone_cuts, i);
		ns_owner = FUNC10(ns);

		for(j = 0; j < FUNC9(addr); j++) {
			a = FUNC8(addr, j);
			dname_a = FUNC10(a);

			if (FUNC2(dname_a, ns_owner) ||
				FUNC1(dname_a, ns_owner) == 0) {
				/* GLUE! */
				if (!FUNC7(glue, a)) goto memory_error;
			}
		}
	}
	
	FUNC5(addr);
	FUNC5(zone_cuts);

	if (FUNC9(glue) == 0) {
		FUNC5(glue);
		return NULL;
	} else {
		return glue;
	}

memory_error:
	if (zone_cuts) {
		FUNC0(zone_cuts);
	}
	if (addr) {
		FUNC5(addr);
	}
	if (glue) {
		FUNC5(glue);
	}
	return NULL;
}