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
typedef  int /*<<< orphan*/  ldns_rr_class ;
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  ldns_rdf ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RDF_TYPE_INT32 ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_SOA ; 
 scalar_t__ LDNS_STATUS_OK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ **,char*) ; 

__attribute__((used)) static ldns_rr*
FUNC10(const ldns_rdf* rr_name, ldns_rr_class rr_class)
{
	ldns_rr* soa_rr = FUNC3();
	ldns_rdf *owner_rdf;
	ldns_rdf *mname_rdf;
	ldns_rdf *rname_rdf;
	ldns_rdf *serial_rdf;
	ldns_rdf *refresh_rdf;
	ldns_rdf *retry_rdf;
	ldns_rdf *expire_rdf;
	ldns_rdf *minimum_rdf;

	if (!soa_rr) {
		return NULL;
	}
	owner_rdf = FUNC1(rr_name);
	if (!owner_rdf) {
		FUNC2(soa_rr);
		return NULL;
	}

	FUNC6(soa_rr, owner_rdf);
	FUNC8(soa_rr, LDNS_RR_TYPE_SOA);
	FUNC5(soa_rr, rr_class);
	FUNC7(soa_rr, false);

	if (FUNC9(&mname_rdf, ".") != LDNS_STATUS_OK) {
		FUNC2(soa_rr);
		return NULL;
	} else {
		FUNC4(soa_rr, mname_rdf);
	}
	if (FUNC9(&rname_rdf, ".") != LDNS_STATUS_OK) {
		FUNC2(soa_rr);
		return NULL;
	} else {
		FUNC4(soa_rr, rname_rdf);
	}
	serial_rdf = FUNC0(LDNS_RDF_TYPE_INT32, 0);
	if (!serial_rdf) {
		FUNC2(soa_rr);
		return NULL;
	} else {
		FUNC4(soa_rr, serial_rdf);
	}
	refresh_rdf = FUNC0(LDNS_RDF_TYPE_INT32, 0);
	if (!refresh_rdf) {
		FUNC2(soa_rr);
		return NULL;
	} else {
		FUNC4(soa_rr, refresh_rdf);
	}
	retry_rdf = FUNC0(LDNS_RDF_TYPE_INT32, 0);
	if (!retry_rdf) {
		FUNC2(soa_rr);
		return NULL;
	} else {
		FUNC4(soa_rr, retry_rdf);
	}
	expire_rdf = FUNC0(LDNS_RDF_TYPE_INT32, 0);
	if (!expire_rdf) {
		FUNC2(soa_rr);
		return NULL;
	} else {
		FUNC4(soa_rr, expire_rdf);
	}
	minimum_rdf = FUNC0(LDNS_RDF_TYPE_INT32, 0);
	if (!minimum_rdf) {
		FUNC2(soa_rr);
		return NULL;
	} else {
		FUNC4(soa_rr, minimum_rdf);
	}
	return soa_rr;
}