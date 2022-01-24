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
typedef  int /*<<< orphan*/  ldns_status ;
typedef  int /*<<< orphan*/  ldns_resolver ;
typedef  int /*<<< orphan*/  ldns_rdf ;
typedef  int /*<<< orphan*/  ldns_pkt ;
typedef  int /*<<< orphan*/  ldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_MIN_BUFLEN ; 
 int /*<<< orphan*/  LDNS_STATUS_ERR ; 
 scalar_t__ LDNS_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

ldns_status
FUNC6(ldns_pkt **result_packet, ldns_resolver *r, const ldns_pkt *query_pkt)
{
	ldns_buffer *qb;
	ldns_status result;
	ldns_rdf *tsig_mac = NULL;

	qb = FUNC1(LDNS_MIN_BUFLEN);

	if (query_pkt && FUNC3(query_pkt)) {
		tsig_mac = FUNC4(FUNC3(query_pkt), 3);
	}

	if (!query_pkt ||
	    FUNC2(qb, query_pkt) != LDNS_STATUS_OK) {
		result = LDNS_STATUS_ERR;
	} else {
        	result = FUNC5(result_packet, r, qb, tsig_mac);
	}

	FUNC0(qb);

	return result;
}