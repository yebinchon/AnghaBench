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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  ldns_status ;
typedef  int /*<<< orphan*/  ldns_rr_class ;
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  ldns_rdf ;
typedef  int /*<<< orphan*/  ldns_pkt ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_TYPE_IXFR ; 
 scalar_t__ LDNS_STATUS_OK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **,char const*) ; 

ldns_status
FUNC4(ldns_pkt **p, const char *name,
	ldns_rr_class rr_class, uint16_t flags, ldns_rr *soa)
{
	ldns_rr* authsoa_rr = soa;
	if (!authsoa_rr) {
		ldns_rdf *name_rdf;
		if (FUNC3(&name_rdf, name) == LDNS_STATUS_OK) {
			authsoa_rr = FUNC0(name_rdf, rr_class);
		}
		FUNC2(name_rdf);
	}
	return FUNC1(p, name, LDNS_RR_TYPE_IXFR,
		rr_class, flags, authsoa_rr);
}