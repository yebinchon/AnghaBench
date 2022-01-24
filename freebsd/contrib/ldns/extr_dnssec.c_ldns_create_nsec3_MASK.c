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
typedef  scalar_t__ uint16_t ;
typedef  scalar_t__ ldns_status ;
typedef  scalar_t__ ldns_rr_type ;
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  ldns_rdf ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_TYPE_NSEC3 ; 
 scalar_t__ LDNS_RR_TYPE_RRSIG ; 
 scalar_t__ LDNS_RR_TYPE_SOA ; 
 scalar_t__ LDNS_STATUS_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/  const*,size_t) ; 
 size_t FUNC9 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

ldns_rr *
FUNC17(const ldns_rdf *cur_owner,
                  const ldns_rdf *cur_zone,
                  const ldns_rr_list *rrs,
                  uint8_t algorithm,
                  uint8_t flags,
                  uint16_t iterations,
                  uint8_t salt_length,
                  const uint8_t *salt,
                  bool emptynonterminal)
{
	size_t i;
	ldns_rr *i_rr;
	uint16_t i_type;

	ldns_rr *nsec = NULL;
	ldns_rdf *hashed_owner = NULL;

	ldns_status status;

    ldns_rr_type i_type_list[1024];
	size_t type_count = 0;

	hashed_owner = FUNC4(cur_owner,
								 algorithm,
								 iterations,
								 salt_length,
								 salt);
	status = FUNC0(hashed_owner, cur_zone);
        if(status != LDNS_STATUS_OK) {
		FUNC6(hashed_owner);
                return NULL;
	}
	nsec = FUNC10(LDNS_RR_TYPE_NSEC3);
        if(!nsec) {
		FUNC6(hashed_owner);
                return NULL;
	}
	FUNC15(nsec, LDNS_RR_TYPE_NSEC3);
	FUNC13(nsec, hashed_owner);

	FUNC3(nsec,
						 algorithm,
						 flags,
						 iterations,
						 salt_length,
						 salt);
	(void) FUNC14(nsec, NULL, 4);


	for (i = 0; i < FUNC9(rrs); i++) {
		i_rr = FUNC8(rrs, i);
		if (FUNC5(cur_owner,
						 FUNC11(i_rr)) == 0) {
			i_type = FUNC7(i_rr);
			if (type_count == 0 || i_type_list[type_count-1] != i_type) {
				i_type_list[type_count] = i_type;
				type_count++;
			}
		}
	}

	/* add RRSIG anyway, but only if this is not an ENT or
	 * an unsigned delegation */
	if (!emptynonterminal && !FUNC16(cur_zone, rrs)) {
		i_type_list[type_count] = LDNS_RR_TYPE_RRSIG;
		type_count++;
	}

	/* and SOA if owner == zone */
	if (FUNC1(cur_zone, cur_owner) == 0) {
		i_type_list[type_count] = LDNS_RR_TYPE_SOA;
		type_count++;
	}

	FUNC12(nsec,
				  FUNC2(i_type_list,
						type_count, LDNS_RR_TYPE_NSEC3));

	return nsec;
}