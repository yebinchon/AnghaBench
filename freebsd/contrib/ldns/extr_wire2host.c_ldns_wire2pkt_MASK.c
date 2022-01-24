#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint16_t ;
typedef  scalar_t__ ldns_status ;
typedef  int /*<<< orphan*/  ldns_rr ;
struct TYPE_22__ {scalar_t__ _edns_present; } ;
typedef  TYPE_1__ ldns_pkt ;

/* Variables and functions */
 scalar_t__ LDNS_RR_TYPE_OPT ; 
 scalar_t__ LDNS_RR_TYPE_TSIG ; 
 int /*<<< orphan*/  LDNS_SECTION_ADDITIONAL ; 
 int /*<<< orphan*/  LDNS_SECTION_ANSWER ; 
 int /*<<< orphan*/  LDNS_SECTION_AUTHORITY ; 
 int /*<<< orphan*/  LDNS_SECTION_QUESTION ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ LDNS_STATUS_INTERNAL_ERR ; 
 scalar_t__ LDNS_STATUS_OK ; 
 scalar_t__ LDNS_STATUS_PACKET_OVERFLOW ; 
 scalar_t__ LDNS_STATUS_WIRE_INCOMPLETE_ADDITIONAL ; 
 scalar_t__ LDNS_STATUS_WIRE_INCOMPLETE_ANSWER ; 
 scalar_t__ LDNS_STATUS_WIRE_INCOMPLETE_AUTHORITY ; 
 scalar_t__ LDNS_STATUS_WIRE_INCOMPLETE_QUESTION ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 TYPE_1__* FUNC7 () ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC27 (TYPE_1__*,scalar_t__ const*,size_t,size_t*) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ **,scalar_t__ const*,size_t,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  status_error ; 

ldns_status
FUNC30(ldns_pkt **packet_p, const uint8_t *wire, size_t max)
{
	size_t pos = 0;
	uint16_t i;
	ldns_rr *rr;
	ldns_pkt *packet = FUNC7();
	ldns_status status = LDNS_STATUS_OK;
	uint8_t have_edns = 0;

	uint8_t data[4];

	status = FUNC27(packet, wire, max, &pos);
	FUNC0(status, status_error);

	for (i = 0; i < FUNC9(packet); i++) {

		status = FUNC28(&rr, wire, max, &pos, LDNS_SECTION_QUESTION);
		if (status == LDNS_STATUS_PACKET_OVERFLOW) {
			status = LDNS_STATUS_WIRE_INCOMPLETE_QUESTION;
		}
		FUNC0(status, status_error);
		if (!FUNC24(FUNC10(packet), rr)) {
			FUNC6(packet);
			return LDNS_STATUS_INTERNAL_ERR;
		}
	}
	for (i = 0; i < FUNC2(packet); i++) {
		status = FUNC28(&rr, wire, max, &pos, LDNS_SECTION_ANSWER);
		if (status == LDNS_STATUS_PACKET_OVERFLOW) {
			status = LDNS_STATUS_WIRE_INCOMPLETE_ANSWER;
		}
		FUNC0(status, status_error);
		if (!FUNC24(FUNC3(packet), rr)) {
			FUNC6(packet);
			return LDNS_STATUS_INTERNAL_ERR;
		}
	}
	for (i = 0; i < FUNC8(packet); i++) {
		status = FUNC28(&rr, wire, max, &pos, LDNS_SECTION_AUTHORITY);
		if (status == LDNS_STATUS_PACKET_OVERFLOW) {
			status = LDNS_STATUS_WIRE_INCOMPLETE_AUTHORITY;
		}
		FUNC0(status, status_error);
		if (!FUNC24(FUNC5(packet), rr)) {
			FUNC6(packet);
			return LDNS_STATUS_INTERNAL_ERR;
		}
	}
	for (i = 0; i < FUNC4(packet); i++) {
		status = FUNC28(&rr, wire, max, &pos, LDNS_SECTION_ADDITIONAL);
		if (status == LDNS_STATUS_PACKET_OVERFLOW) {
			status = LDNS_STATUS_WIRE_INCOMPLETE_ADDITIONAL;
		}
		FUNC0(status, status_error);

		if (FUNC23(rr) == LDNS_RR_TYPE_OPT) {
			FUNC14(packet, FUNC22(rr));
			FUNC29(data, FUNC26(rr));
			FUNC13(packet, data[0]);
			FUNC15(packet, data[1]);
			FUNC16(packet, FUNC20(&data[2]));
			/* edns might not have rdfs */
			if (FUNC25(rr, 0)) {
				FUNC12(packet, FUNC19(FUNC25(rr, 0)));
			}
			FUNC21(rr);
			have_edns += 1;
		} else if (FUNC23(rr) == LDNS_RR_TYPE_TSIG) {
			FUNC18(packet, rr);
			FUNC11(packet, FUNC4(packet) - 1);
		} else if (!FUNC24(FUNC1(packet), rr)) {
			FUNC6(packet);
			return LDNS_STATUS_INTERNAL_ERR;
		}
	}
	FUNC17(packet, max);
	if(have_edns)
		FUNC11(packet, FUNC4(packet)
                        - have_edns);
        packet->_edns_present = have_edns;

	*packet_p = packet;
	return status;

status_error:
	FUNC6(packet);
	return status;
}