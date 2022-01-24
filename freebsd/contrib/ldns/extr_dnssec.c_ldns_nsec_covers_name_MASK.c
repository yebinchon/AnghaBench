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
typedef  int /*<<< orphan*/  ldns_status ;
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  const ldns_rdf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ LDNS_RR_TYPE_NSEC ; 
 scalar_t__ LDNS_RR_TYPE_NSEC3 ; 
 int /*<<< orphan*/  LDNS_STATUS_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC4 (char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC6 (int /*<<< orphan*/  const*) ; 
 char* FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC11 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 

bool
FUNC14(const ldns_rr *nsec, const ldns_rdf *name)
{
	ldns_rdf *nsec_owner = FUNC11(nsec);
	ldns_rdf *hash_next;
	char *next_hash_str;
	ldns_rdf *nsec_next = NULL;
	ldns_status status;
	ldns_rdf *chopped_dname;
	bool result;

	if (FUNC10(nsec) == LDNS_RR_TYPE_NSEC) {
		if (FUNC12(nsec, 0) != NULL) {
			nsec_next = FUNC8(FUNC12(nsec, 0));
		} else {
			return false;
		}
	} else if (FUNC10(nsec) == LDNS_RR_TYPE_NSEC3) {
		hash_next = FUNC6(nsec);
		next_hash_str = FUNC7(hash_next);
		nsec_next = FUNC4(next_hash_str);
		FUNC0(next_hash_str);
		chopped_dname = FUNC3(nsec_owner);
		status = FUNC1(nsec_next, chopped_dname);
		FUNC9(chopped_dname);
		if (status != LDNS_STATUS_OK) {
			FUNC13("error catting: %s\n", FUNC5(status));
		}
	} else {
		FUNC9(nsec_next);
		return false;
	}

	/* in the case of the last nsec */
	if(FUNC2(nsec_owner, nsec_next) > 0) {
		result = (FUNC2(nsec_owner, name) <= 0 ||
				FUNC2(name, nsec_next) < 0);
	} else if(FUNC2(nsec_owner, nsec_next) < 0) {
		result = (FUNC2(nsec_owner, name) <= 0 &&
		          FUNC2(name, nsec_next) < 0);
	} else {
		result = true;
	}

	FUNC9(nsec_next);
	return result;
}