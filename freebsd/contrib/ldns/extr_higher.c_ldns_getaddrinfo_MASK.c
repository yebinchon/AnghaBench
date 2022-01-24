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
typedef  scalar_t__ uint16_t ;
typedef  scalar_t__ ldns_status ;
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_rr_class ;
typedef  int /*<<< orphan*/  ldns_resolver ;
typedef  scalar_t__ ldns_rdf_type ;
typedef  int /*<<< orphan*/  ldns_rdf ;

/* Variables and functions */
 scalar_t__ LDNS_RDF_TYPE_A ; 
 scalar_t__ LDNS_RDF_TYPE_AAAA ; 
 scalar_t__ LDNS_RDF_TYPE_DNAME ; 
 scalar_t__ LDNS_STATUS_OK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

uint16_t
FUNC6(ldns_resolver *res, const ldns_rdf *node,
		ldns_rr_class c, ldns_rr_list **ret)
{
	ldns_rdf_type t;
	uint16_t names_found;
	ldns_resolver *r;
	ldns_status s;

	t = FUNC2(node);
	names_found = 0;
	r = res;

	if (res == NULL) {
		/* prepare a new resolver, using /etc/resolv.conf as a guide  */
		s = FUNC4(&r, NULL);
		if (s != LDNS_STATUS_OK) {
			return 0;
		} 
	}

	if (t == LDNS_RDF_TYPE_DNAME) {
		/* we're asked to query for a name */
		*ret = FUNC0(r, node, c, 0);
		names_found = FUNC5(*ret);
	}

	if (t == LDNS_RDF_TYPE_A || t == LDNS_RDF_TYPE_AAAA) {
		/* an address */
		*ret = FUNC1(r, node, c, 0);
		names_found = FUNC5(*ret);
	}

	if (res == NULL) {
		FUNC3(r);
	}
	
	return names_found;
}