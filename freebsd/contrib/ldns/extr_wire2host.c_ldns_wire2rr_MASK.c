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
typedef  int /*<<< orphan*/  ldns_status ;
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  ldns_rdf ;
typedef  scalar_t__ ldns_pkt_section ;

/* Variables and functions */
 scalar_t__ LDNS_SECTION_QUESTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LDNS_STATUS_OK ; 
 int /*<<< orphan*/  LDNS_STATUS_PACKET_OVERFLOW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/  const*,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t,size_t*) ; 
 int /*<<< orphan*/  status_error ; 

ldns_status
FUNC12(ldns_rr **rr_p, const uint8_t *wire, size_t max,
             size_t *pos, ldns_pkt_section section)
{
	ldns_rdf *owner = NULL;
	ldns_rr *rr = FUNC4();
	ldns_status status;

	status = FUNC10(&owner, wire, max, pos);
	FUNC0(status, status_error);

	FUNC6(rr, owner);

	if (*pos + 4 > max) {
		status = LDNS_STATUS_PACKET_OVERFLOW;
		goto status_error;
	}

	FUNC9(rr, FUNC1(&wire[*pos]));
	*pos = *pos + 2;

	FUNC5(rr, FUNC1(&wire[*pos]));
	*pos = *pos + 2;

	if (section != LDNS_SECTION_QUESTION) {
		if (*pos + 4 > max) {
			status = LDNS_STATUS_PACKET_OVERFLOW;
			goto status_error;
		}
		FUNC8(rr, FUNC2(&wire[*pos]));

		*pos = *pos + 4;
		status = FUNC11(rr, wire, max, pos);

		FUNC0(status, status_error);
        FUNC7(rr, false);
	} else {
        FUNC7(rr, true);
    }

	*rr_p = rr;
	return LDNS_STATUS_OK;

status_error:
	FUNC3(rr);
	return status;
}