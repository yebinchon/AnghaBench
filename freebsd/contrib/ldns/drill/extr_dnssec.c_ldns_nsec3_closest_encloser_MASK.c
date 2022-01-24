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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int ldns_rr_type ;
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  ldns_rdf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ LDNS_STATUS_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 
 int verbosity ; 

ldns_rdf *
FUNC18(ldns_rdf *qname, ldns_rr_type qtype, ldns_rr_list *nsec3s)
{
	/* remember parameters, they must match */
	uint8_t algorithm;
	uint32_t iterations;
	uint8_t salt_length;
	uint8_t *salt;

	ldns_rdf *sname = NULL, *hashed_sname = NULL, *tmp;
	bool flag;
	
	bool exact_match_found;
	bool in_range_found;
	
	ldns_rdf *zone_name = NULL;
	
	size_t nsec_i;
	ldns_rr *nsec;
	ldns_rdf *result = NULL;
	
	if (!qname || !nsec3s || FUNC15(nsec3s) < 1) {
		return NULL;
	}

	if (verbosity >= 4) {
		FUNC17(";; finding closest encloser for type %d ", qtype);
		FUNC13(stdout, qname);
		FUNC17("\n");
	}

	nsec = FUNC14(nsec3s, 0);
	algorithm = FUNC5(nsec);
	salt_length = FUNC9(nsec);
	salt = FUNC8(nsec);
	iterations = FUNC7(nsec);
	if (salt == NULL) {
		goto done;
	}

	sname = FUNC11(qname);
	if (sname == NULL) {
		goto done;
	}

	flag = false;
	
	zone_name = FUNC4(FUNC16(nsec));
	if (zone_name == NULL) {
		goto done;
	}

	/* algorithm from nsec3-07 8.3 */
	while (FUNC3(sname) > 0) {
		exact_match_found = false;
		in_range_found = false;
		
		if (verbosity >= 3) {
			FUNC17(";; ");
			FUNC13(stdout, sname);
			FUNC17(" hashes to: ");
		}
		hashed_sname = FUNC6(sname, algorithm, iterations, salt_length, salt);
		if (hashed_sname == NULL) {
			goto done;
		}

		if (FUNC1(hashed_sname, zone_name) != LDNS_STATUS_OK){
			goto done;
		}

		if (verbosity >= 3) {
			FUNC13(stdout, hashed_sname);
			FUNC17("\n");
		}

		for (nsec_i = 0; nsec_i < FUNC15(nsec3s); nsec_i++) {
			nsec = FUNC14(nsec3s, nsec_i);
			
			/* check values of iterations etc! */
			
			/* exact match? */
			if (FUNC2(FUNC16(nsec), hashed_sname) == 0) {
				if (verbosity >= 4) {
					FUNC17(";; exact match found\n");
				}
			 	exact_match_found = true;
			} else if (FUNC10(nsec, hashed_sname)) {
				if (verbosity >= 4) {
					FUNC17(";; in range of an nsec\n");
				}
				in_range_found = true;
			}
			
		}
		if (!exact_match_found && in_range_found) {
			flag = true;
		} else if (exact_match_found && flag) {
			result = FUNC11(sname);
		} else if (exact_match_found && !flag) {
			// error!
			if (verbosity >= 4) {
				FUNC17(";; the closest encloser is the same name (ie. this is an exact match, ie there is no closest encloser)\n");
			}
			FUNC12(hashed_sname);
			goto done;
		} else {
			flag = false;
		}
		
		FUNC12(hashed_sname);
		tmp = sname;
		sname = FUNC4(sname);
		FUNC12(tmp);
		if (sname == NULL) {
			goto done;
		}
	}

done:
	FUNC0(salt);
	FUNC12(zone_name);
	FUNC12(sname);

	if (!result) {
		if (verbosity >= 4) {
			FUNC17(";; no closest encloser found\n");
		}
	}
	
	/* todo checks from end of 6.2. here or in caller? */
	return result;
}