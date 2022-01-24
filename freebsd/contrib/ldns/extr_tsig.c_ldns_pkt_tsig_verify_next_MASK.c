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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  scalar_t__ ldns_status ;
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  ldns_rdf ;
typedef  int /*<<< orphan*/  ldns_pkt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LDNS_RDF_TYPE_DNAME ; 
 scalar_t__ LDNS_STATUS_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,size_t,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/  const*,size_t,size_t*) ; 

bool
FUNC13(ldns_pkt *pkt, const uint8_t *wire, size_t wirelen, const char* key_name,
	const char *key_data, const ldns_rdf *orig_mac_rdf, int tsig_timers_only)
{
	ldns_rdf *fudge_rdf;
	ldns_rdf *algorithm_rdf;
	ldns_rdf *time_signed_rdf;
	ldns_rdf *orig_id_rdf;
	ldns_rdf *error_rdf;
	ldns_rdf *other_data_rdf;
	ldns_rdf *pkt_mac_rdf;
	ldns_rdf *my_mac_rdf;
	ldns_rdf *key_name_rdf = FUNC8(LDNS_RDF_TYPE_DNAME, key_name);
	uint16_t pkt_id, orig_pkt_id;
	ldns_status status;

	uint8_t *prepared_wire = NULL;
	size_t prepared_wire_size = 0;

	ldns_rr *orig_tsig = FUNC4(pkt);

	if (!orig_tsig || FUNC9(orig_tsig) <= 6) {
		FUNC7(key_name_rdf);
		return false;
	}
	algorithm_rdf = FUNC10(orig_tsig, 0);
	time_signed_rdf = FUNC10(orig_tsig, 1);
	fudge_rdf = FUNC10(orig_tsig, 2);
	pkt_mac_rdf = FUNC10(orig_tsig, 3);
	orig_id_rdf = FUNC10(orig_tsig, 4);
	error_rdf = FUNC10(orig_tsig, 5);
	other_data_rdf = FUNC10(orig_tsig, 6);

	/* remove temporarily */
	FUNC3(pkt, NULL);
	/* temporarily change the id to the original id */
	pkt_id = FUNC1(pkt);
	orig_pkt_id = FUNC5(orig_id_rdf);
	FUNC2(pkt, orig_pkt_id);

	prepared_wire = FUNC12(wire, wirelen, &prepared_wire_size);

	status = FUNC11(&my_mac_rdf, prepared_wire, prepared_wire_size,
			key_data, key_name_rdf, fudge_rdf, algorithm_rdf,
			time_signed_rdf, error_rdf, other_data_rdf, orig_mac_rdf, tsig_timers_only);

	FUNC0(prepared_wire);

	if (status != LDNS_STATUS_OK) {
		FUNC7(key_name_rdf);
		return false;
	}
	/* Put back the values */
	FUNC3(pkt, orig_tsig);
	FUNC2(pkt, pkt_id);

	FUNC7(key_name_rdf);

	if (FUNC6(pkt_mac_rdf, my_mac_rdf) == 0) {
		FUNC7(my_mac_rdf);
		return true;
	} else {
		FUNC7(my_mac_rdf);
		return false;
	}
}