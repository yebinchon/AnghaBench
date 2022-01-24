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
typedef  int /*<<< orphan*/  ldns_rr_type ;
typedef  int /*<<< orphan*/  ldns_rr_list ;
typedef  int /*<<< orphan*/  ldns_rdf ;
typedef  int /*<<< orphan*/  ldns_pkt ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RDF_TYPE_TYPE ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_RRSIG ; 
 int /*<<< orphan*/  LDNS_SECTION_ANY_NOQUESTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

ldns_rr_list *
FUNC6(const ldns_pkt *pkt, ldns_rr_type type)
{
	uint16_t t_netorder;
	ldns_rr_list *sigs;
	ldns_rr_list *sigs_covered;
	ldns_rdf *rdf_t;

	sigs = FUNC1(pkt,
	                                LDNS_RR_TYPE_RRSIG,
	                                LDNS_SECTION_ANY_NOQUESTION
							  );

	t_netorder = FUNC0(type); /* rdf are in network order! */
	rdf_t = FUNC3(LDNS_RDF_TYPE_TYPE,
					 2,
					 &t_netorder);
	sigs_covered = FUNC5(sigs, rdf_t, 0);

	FUNC2(rdf_t);
	FUNC4(sigs);

	return sigs_covered;

}