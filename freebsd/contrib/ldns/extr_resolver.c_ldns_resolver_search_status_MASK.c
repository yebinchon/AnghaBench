#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
typedef  scalar_t__ ldns_status ;
typedef  int /*<<< orphan*/  ldns_rr_type ;
typedef  int /*<<< orphan*/  ldns_rr_class ;
typedef  int /*<<< orphan*/  ldns_resolver ;
struct TYPE_10__ {int member_0; void* member_2; int /*<<< orphan*/  member_1; } ;
typedef  TYPE_1__ const ldns_rdf ;
typedef  int /*<<< orphan*/  ldns_pkt ;

/* Variables and functions */
 scalar_t__ LDNS_RCODE_NOERROR ; 
 int /*<<< orphan*/  LDNS_RDF_TYPE_DNAME ; 
 scalar_t__ LDNS_STATUS_OK ; 
 scalar_t__ FUNC0 (TYPE_1__ const*) ; 
 TYPE_1__ const* FUNC1 (TYPE_1__ const*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,TYPE_1__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ const** FUNC7 (int /*<<< orphan*/ *) ; 
 size_t FUNC8 (int /*<<< orphan*/ *) ; 

ldns_status
FUNC9(ldns_pkt** pkt,
		ldns_resolver *r, const  ldns_rdf *name,
		ldns_rr_type t, ldns_rr_class c, uint16_t flags)
{
	ldns_rdf *new_name;
	ldns_rdf **search_list;
	size_t i;
	ldns_status s = LDNS_STATUS_OK;
	ldns_rdf root_dname = { 1, LDNS_RDF_TYPE_DNAME, (void *)"" };

	if (FUNC0(name)) {
		/* query as-is */
		return FUNC6(pkt, r, name, t, c, flags);
	} else if (FUNC5(r)) {
		search_list = FUNC7(r);
		for (i = 0; i <= FUNC8(r); i++) {
			if (i == FUNC8(r)) {
				new_name = FUNC1(name,
						&root_dname);
			} else {
				new_name = FUNC1(name,
						search_list[i]);
			}

			s = FUNC6(pkt, r,
					new_name, t, c, flags);
			FUNC4(new_name);
			if (pkt && *pkt) {
				if (s == LDNS_STATUS_OK && 
						FUNC3(*pkt) ==
						LDNS_RCODE_NOERROR) {

					return LDNS_STATUS_OK;
				}
				FUNC2(*pkt);
				*pkt = NULL;
			}
		}
	}
	return s;
}