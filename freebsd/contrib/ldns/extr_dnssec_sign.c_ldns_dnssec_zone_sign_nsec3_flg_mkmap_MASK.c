#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  scalar_t__ ldns_status ;
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  ldns_rbtree_t ;
typedef  int /*<<< orphan*/  ldns_key_list ;
struct TYPE_16__ {TYPE_3__* soa; TYPE_2__* names; } ;
typedef  TYPE_4__ ldns_dnssec_zone ;
struct TYPE_17__ {int /*<<< orphan*/ * nsec; } ;
typedef  TYPE_5__ ldns_dnssec_name ;
struct TYPE_15__ {int /*<<< orphan*/  name; } ;
struct TYPE_14__ {TYPE_1__* root; } ;
struct TYPE_13__ {scalar_t__ data; } ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_NSEC3 ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_NSEC3PARAM ; 
 scalar_t__ LDNS_STATUS_OK ; 
 scalar_t__ FUNC0 (TYPE_4__*) ; 
 scalar_t__ FUNC1 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int (*) (ldns_rr*,void*),void*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ldns_status
FUNC15(ldns_dnssec_zone *zone,
		ldns_rr_list *new_rrs,
		ldns_key_list *key_list,
		int (*func)(ldns_rr *, void *),
		void *arg,
		uint8_t algorithm,
		uint8_t flags,
		uint16_t iterations,
		uint8_t salt_length,
		uint8_t *salt,
		int signflags,
		ldns_rbtree_t **map)
{
	ldns_rr *nsec3, *nsec3param;
	ldns_status result = LDNS_STATUS_OK;

	/* zone is already sorted */
	result = FUNC5(zone);
	if (result != LDNS_STATUS_OK) {
		return result;
	}

	/* TODO if there are already nsec3s presents and their
	 * parameters are the same as these, we don't have to recreate
	 */
	if (zone->names) {
		/* add empty nonterminals */
		result = FUNC0(zone);
		if (result != LDNS_STATUS_OK) {
			return result;
		}

		nsec3 = ((ldns_dnssec_name *)zone->names->root->data)->nsec;
		if (nsec3 && FUNC9(nsec3) == LDNS_RR_TYPE_NSEC3) {
			/* no need to recreate */
		} else {
			if (!FUNC4(zone,
									   zone->soa->name,
									   LDNS_RR_TYPE_NSEC3PARAM)) {
				/* create and add the nsec3param rr */
				nsec3param =
					FUNC11(LDNS_RR_TYPE_NSEC3PARAM);
				FUNC13(nsec3param,
							   FUNC7(zone->soa->name));
				FUNC6(nsec3param,
									 algorithm,
									 flags,
									 iterations,
									 salt_length,
									 salt);
				/* always set bit 7 of the flags to zero, according to
				 * rfc5155 section 11. The bits are counted from right to left,
				 * so bit 7 in rfc5155 is bit 0 in ldns */
				FUNC14(FUNC8(FUNC12(nsec3param, 1)), 0, 0);
				result = FUNC1(zone, nsec3param);
				if (result != LDNS_STATUS_OK) {
					return result;
				}
				FUNC10(new_rrs, nsec3param);
			}
			result = FUNC2(zone,
											new_rrs,
											algorithm,
											flags,
											iterations,
											salt_length,
											salt,
											map);
			if (result != LDNS_STATUS_OK) {
				return result;
			}
		}

		result = FUNC3(zone,
						new_rrs,
						key_list,
						func,
						arg,
						signflags);
	}

	return result;
}