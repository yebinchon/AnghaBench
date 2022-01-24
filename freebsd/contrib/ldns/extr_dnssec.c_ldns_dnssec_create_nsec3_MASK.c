#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  scalar_t__ ldns_status ;
typedef  scalar_t__ ldns_rr_type ;
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  ldns_rdf ;
struct TYPE_7__ {scalar_t__ type; struct TYPE_7__* next; } ;
typedef  TYPE_1__ ldns_dnssec_rrsets ;
struct TYPE_8__ {scalar_t__ hashed_name; TYPE_1__* rrsets; } ;
typedef  TYPE_2__ ldns_dnssec_name ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_DS ; 
 scalar_t__ LDNS_RR_TYPE_NS ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_NSEC3 ; 
 scalar_t__ LDNS_RR_TYPE_RRSIG ; 
 scalar_t__ LDNS_RR_TYPE_SOA ; 
 scalar_t__ LDNS_STATUS_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__ const*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

ldns_rr *
FUNC13(const ldns_dnssec_name *from,
					const ldns_dnssec_name *to,
					const ldns_rdf *zone_name,
					uint8_t algorithm,
					uint8_t flags,
					uint16_t iterations,
					uint8_t salt_length,
					const uint8_t *salt)
{
	ldns_rr *nsec_rr;
	ldns_rr_type types[65536];
	size_t type_count = 0;
	ldns_dnssec_rrsets *cur_rrsets;
	ldns_status status;
	int on_delegation_point;

	if (!from) {
		return NULL;
	}

	nsec_rr = FUNC8(LDNS_RR_TYPE_NSEC3);
	FUNC11(nsec_rr,
	                  FUNC5(FUNC2(from),
	                  algorithm,
	                  iterations,
	                  salt_length,
	                  salt));
	status = FUNC0(FUNC9(nsec_rr), zone_name);
        if(status != LDNS_STATUS_OK) {
                FUNC7(nsec_rr);
                return NULL;
        }
	FUNC4(nsec_rr,
	                          algorithm,
	                          flags,
	                          iterations,
	                          salt_length,
	                          salt);

	on_delegation_point = FUNC3(
			from->rrsets, LDNS_RR_TYPE_NS)
		&& !FUNC3(
			from->rrsets, LDNS_RR_TYPE_SOA);
	cur_rrsets = from->rrsets;
	while (cur_rrsets) {
		/* Do not include non-authoritative rrsets on the delegation point
		 * in the type bitmap. Potentionally not skipping insecure
		 * delegation should have been done earlier, in function
		 * ldns_dnssec_zone_create_nsec3s, or even earlier in:
		 * ldns_dnssec_zone_sign_nsec3_flg .
		 */
		if ((on_delegation_point && (
				cur_rrsets->type == LDNS_RR_TYPE_NS
			     || cur_rrsets->type == LDNS_RR_TYPE_DS))
			|| (!on_delegation_point &&
				cur_rrsets->type != LDNS_RR_TYPE_RRSIG)) {

			types[type_count] = cur_rrsets->type;
			type_count++;
		}
		cur_rrsets = cur_rrsets->next;
	}
	/* always add rrsig type if this is not an unsigned
	 * delegation
	 */
	if (type_count > 0 &&
	    !(type_count == 1 && types[0] == LDNS_RR_TYPE_NS)) {
		types[type_count] = LDNS_RR_TYPE_RRSIG;
		type_count++;
	}

	/* leave next rdata empty if they weren't precomputed yet */
	if (to && to->hashed_name) {
		(void) FUNC12(nsec_rr,
		                       FUNC6(to->hashed_name),
		                       4);
	} else {
		(void) FUNC12(nsec_rr, NULL, 4);
	}

	FUNC10(nsec_rr,
	                 FUNC1(types,
	                 type_count,
	                 LDNS_RR_TYPE_NSEC3));

	return nsec_rr;
}