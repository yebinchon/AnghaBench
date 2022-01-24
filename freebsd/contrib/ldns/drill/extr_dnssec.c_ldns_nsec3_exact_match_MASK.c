#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int ldns_rr_type ;
typedef  int /*<<< orphan*/  ldns_rr_list ;
struct TYPE_3__ {char* _name; } ;
typedef  TYPE_1__ ldns_rr_descriptor ;
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  ldns_rdf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ LDNS_STATUS_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC12 (int) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 
 int verbosity ; 

ldns_rr *
FUNC17(ldns_rdf *qname, ldns_rr_type qtype, ldns_rr_list *nsec3s) {
	uint8_t algorithm;
	uint32_t iterations;
	uint8_t salt_length;
	uint8_t *salt;
	
	ldns_rdf *sname = NULL, *hashed_sname = NULL;
	
	size_t nsec_i;
	ldns_rr *nsec;
	ldns_rr *result = NULL;
	
	const ldns_rr_descriptor *descriptor;
	
	ldns_rdf *zone_name = NULL;
	
	if (verbosity >= 4) {
		FUNC16(";; finding exact match for ");
		descriptor = FUNC12(qtype);
		if (descriptor && descriptor->_name) {
			FUNC16("%s ", descriptor->_name);
		} else {
			FUNC16("TYPE%d ", qtype);
		}
		FUNC11(stdout, qname);
		FUNC16("\n");
	}
	
	if (!qname || !nsec3s || FUNC14(nsec3s) < 1) {
		if (verbosity >= 4) {
			FUNC16("no qname, nsec3s or list empty\n");
		}
		return NULL;
	}

	nsec = FUNC13(nsec3s, 0);
	algorithm = FUNC4(nsec);
	salt_length = FUNC8(nsec);
	salt = FUNC7(nsec);
	iterations = FUNC6(nsec);
	if (salt == NULL) {
		goto done;
	}

	sname = FUNC9(qname);
	if (sname == NULL) {
		goto done;
	}
	if (verbosity >= 4) {
		FUNC16(";; owner name hashes to: ");
	}
	hashed_sname = FUNC5(sname, algorithm, iterations, salt_length, salt);
	if (hashed_sname == NULL) {
		goto done;
	}
	zone_name = FUNC3(FUNC15(nsec));
	if (zone_name == NULL) {
		goto done;
	}
	if (FUNC1(hashed_sname, zone_name) != LDNS_STATUS_OK) {
		goto done;
	};
	
	if (verbosity >= 4) {
		FUNC11(stdout, hashed_sname);
		FUNC16("\n");
	}

	for (nsec_i = 0; nsec_i < FUNC14(nsec3s); nsec_i++) {
		nsec = FUNC13(nsec3s, nsec_i);
		
		/* check values of iterations etc! */
		
		/* exact match? */
		if (FUNC2(FUNC15(nsec), hashed_sname) == 0) {
			result = nsec;
			goto done;
		}
		
	}

done:
	FUNC10(zone_name);
	FUNC10(sname);
	FUNC10(hashed_sname);
	FUNC0(salt);
	
	if (verbosity >= 4) {
		if (result) {
			FUNC16(";; Found.\n");
		} else {
			FUNC16(";; Not foud.\n");
		}
	}
	return result;
}