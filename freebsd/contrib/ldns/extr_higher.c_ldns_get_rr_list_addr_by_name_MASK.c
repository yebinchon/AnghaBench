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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_rr_class ;
typedef  int /*<<< orphan*/  ldns_resolver ;
typedef  int /*<<< orphan*/  ldns_rdf ;
typedef  int /*<<< orphan*/  ldns_pkt ;

/* Variables and functions */
 int LDNS_RD ; 
 scalar_t__ LDNS_RDF_TYPE_DNAME ; 
 int /*<<< orphan*/  LDNS_RESOLV_INETANY ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_A ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_AAAA ; 
 int /*<<< orphan*/  LDNS_SECTION_ANSWER ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

ldns_rr_list *
FUNC17(ldns_resolver *res, const ldns_rdf *name,
		ldns_rr_class c, uint16_t flags)
{
	ldns_pkt *pkt;
	ldns_rr_list *aaaa;
	ldns_rr_list *a;
	ldns_rr_list *result = NULL;
	ldns_rr_list *hostsfilenames;
	size_t i;
	uint8_t ip6;

	a = NULL; 
	aaaa = NULL; 
	result = NULL;

	if (!res) {
		return NULL;
	}
	if (FUNC4(name) != LDNS_RDF_TYPE_DNAME) {
		return NULL;
	}

	ip6 = FUNC5(res); /* we use INET_ANY here, save
					 what was there */

	FUNC7(res, LDNS_RESOLV_INETANY);
	
	hostsfilenames = FUNC0(NULL);
	for (i = 0; i < FUNC15(hostsfilenames); i++) {
		if (FUNC3(name, 
					FUNC16(FUNC14(hostsfilenames, 
							i))) == 0) {
			if (!result) {
				result = FUNC12();
			}
			FUNC13(result, 
					FUNC8(FUNC14(hostsfilenames, i)));
		}
	}
	FUNC11(hostsfilenames);

	if (result) {
		return result;
	}

	/* add the RD flags, because we want an answer */
	pkt = FUNC6(res, name, LDNS_RR_TYPE_AAAA, c, flags | LDNS_RD);
	if (pkt) {
		/* extract the data we need */
		aaaa = FUNC2(pkt, LDNS_RR_TYPE_AAAA, 
			LDNS_SECTION_ANSWER);
		FUNC1(pkt);
	} 

	pkt = FUNC6(res, name, LDNS_RR_TYPE_A, c, flags | LDNS_RD);
	if (pkt) {
		/* extract the data we need */
		a = FUNC2(pkt, LDNS_RR_TYPE_A, LDNS_SECTION_ANSWER);
		FUNC1(pkt);
	} 
	FUNC7(res, ip6);

	if (aaaa && a) {
		result = FUNC9(aaaa, a);
		FUNC11(aaaa);
		FUNC11(a);
		return result;
	}
	
	if (aaaa) {
		result = FUNC10(aaaa);
	}
	
	if (a) {
		result = FUNC10(a);
	}

	FUNC11(aaaa);
	FUNC11(a);
	return result;
}