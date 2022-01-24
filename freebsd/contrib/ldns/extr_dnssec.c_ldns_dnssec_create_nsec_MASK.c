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
typedef  scalar_t__ ldns_rr_type ;
typedef  int /*<<< orphan*/  ldns_rr ;
struct TYPE_7__ {scalar_t__ type; struct TYPE_7__* next; } ;
typedef  TYPE_1__ ldns_dnssec_rrsets ;
struct TYPE_8__ {TYPE_1__* rrsets; } ;
typedef  TYPE_2__ ldns_dnssec_name ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_DS ; 
 scalar_t__ LDNS_RR_TYPE_NS ; 
 scalar_t__ LDNS_RR_TYPE_NSEC ; 
 scalar_t__ LDNS_RR_TYPE_RRSIG ; 
 scalar_t__ LDNS_RR_TYPE_SOA ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__ const*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 

ldns_rr *
FUNC8(const ldns_dnssec_name *from,
                        const ldns_dnssec_name *to,
                        ldns_rr_type nsec_type)
{
	ldns_rr *nsec_rr;
	ldns_rr_type types[65536];
	size_t type_count = 0;
	ldns_dnssec_rrsets *cur_rrsets;
	int on_delegation_point;

	if (!from || !to || (nsec_type != LDNS_RR_TYPE_NSEC)) {
		return NULL;
	}

	nsec_rr = FUNC4();
	FUNC7(nsec_rr, nsec_type);
	FUNC6(nsec_rr, FUNC3(FUNC1(from)));
	FUNC5(nsec_rr, FUNC3(FUNC1(to)));

	on_delegation_point = FUNC2(
			from->rrsets, LDNS_RR_TYPE_NS)
		&& !FUNC2(
			from->rrsets, LDNS_RR_TYPE_SOA);

	cur_rrsets = from->rrsets;
	while (cur_rrsets) {
		/* Do not include non-authoritative rrsets on the delegation point
		 * in the type bitmap */
		if ((on_delegation_point && (
				cur_rrsets->type == LDNS_RR_TYPE_NS 
			     || cur_rrsets->type == LDNS_RR_TYPE_DS))
			|| (!on_delegation_point &&
				cur_rrsets->type != LDNS_RR_TYPE_RRSIG
			     && cur_rrsets->type != LDNS_RR_TYPE_NSEC)) {

			types[type_count] = cur_rrsets->type;
			type_count++;
		}
		cur_rrsets = cur_rrsets->next;

	}
	types[type_count] = LDNS_RR_TYPE_RRSIG;
	type_count++;
	types[type_count] = LDNS_RR_TYPE_NSEC;
	type_count++;

	FUNC5(nsec_rr, FUNC0(types,
	                               type_count,
	                               nsec_type));

	return nsec_rr;
}