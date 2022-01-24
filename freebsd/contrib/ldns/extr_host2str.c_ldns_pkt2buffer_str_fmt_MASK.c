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
typedef  scalar_t__ time_t ;
struct timeval {scalar_t__ tv_sec; } ;
typedef  scalar_t__ ldns_status ;
typedef  int /*<<< orphan*/  ldns_pkt ;
typedef  int /*<<< orphan*/  ldns_output_format ;
typedef  int /*<<< orphan*/  ldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ LDNS_STATUS_OK ; 
 scalar_t__ FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/  const*) ; 
 int FUNC14 (int /*<<< orphan*/  const*) ; 
 int FUNC15 (int /*<<< orphan*/  const*) ; 
 int FUNC16 (int /*<<< orphan*/  const*) ; 
 int FUNC17 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/  const*) ; 
 int FUNC20 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/  const*) ; 
 struct timeval FUNC23 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,scalar_t__) ; 
 char* FUNC27 (scalar_t__) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,scalar_t__) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ ,scalar_t__) ; 

ldns_status
FUNC30(ldns_buffer *output, 
		const ldns_output_format *fmt, const ldns_pkt *pkt)
{
	uint16_t i;
	ldns_status status = LDNS_STATUS_OK;
	char *tmp;
	struct timeval time;
	time_t time_tt;

	if (!pkt) {
		FUNC2(output, "null");
		return LDNS_STATUS_OK;
	}

	if (FUNC4(output)) {
		status = FUNC25(output, pkt);
		if (status != LDNS_STATUS_OK) {
			return status;
		}

		FUNC2(output, "\n");

		FUNC2(output, ";; QUESTION SECTION:\n;; ");


		for (i = 0; i < FUNC19(pkt); i++) {
			status = FUNC28(output, fmt,
				       FUNC29(
					       FUNC21(pkt), i));
			if (status != LDNS_STATUS_OK) {
				return status;
			}
		}
		FUNC2(output, "\n");

		FUNC2(output, ";; ANSWER SECTION:\n");
		for (i = 0; i < FUNC6(pkt); i++) {
			status = FUNC28(output, fmt,
				       FUNC29(
					       FUNC7(pkt), i));
			if (status != LDNS_STATUS_OK) {
				return status;
			}

		}
		FUNC2(output, "\n");

		FUNC2(output, ";; AUTHORITY SECTION:\n");

		for (i = 0; i < FUNC18(pkt); i++) {
			status = FUNC28(output, fmt,
				       FUNC29(
					       FUNC10(pkt), i));
			if (status != LDNS_STATUS_OK) {
				return status;
			}
		}
		FUNC2(output, "\n");

		FUNC2(output, ";; ADDITIONAL SECTION:\n");
		for (i = 0; i < FUNC9(pkt); i++) {
			status = FUNC28(output, fmt,
				       FUNC29(
					       FUNC5(pkt), i));
			if (status != LDNS_STATUS_OK) {
				return status;
			}

		}
		FUNC2(output, "\n");
		/* add some futher fields */
		FUNC2(output, ";; Query time: %d msec\n",
				FUNC20(pkt));
		if (FUNC11(pkt)) {
			FUNC2(output,
				   ";; EDNS: version %u; flags:",
				   FUNC16(pkt));
			if (FUNC13(pkt)) {
				FUNC2(output, " do");
			}
			/* the extended rcode is the value set, shifted four bits,
			 * and or'd with the original rcode */
			if (FUNC14(pkt)) {
				FUNC2(output, " ; ext-rcode: %d",
					(FUNC14(pkt) << 4 | FUNC17(pkt)));
			}
			FUNC2(output, " ; udp: %u\n",
					   FUNC15(pkt));

			if (FUNC12(pkt)) {
				FUNC2(output, ";; Data: ");
				(void)FUNC26(output,
							  FUNC12(pkt));
				FUNC2(output, "\n");
			}
		}
		if (FUNC24(pkt)) {
			FUNC2(output, ";; TSIG:\n;; ");
			(void) FUNC28(
					output, fmt, FUNC24(pkt));
			FUNC2(output, "\n");
		}
		if (FUNC8(pkt)) {
			tmp = FUNC27(FUNC8(pkt));
			FUNC2(output, ";; SERVER: %s\n", tmp);
			FUNC0(tmp);
		}
		time = FUNC23(pkt);
		time_tt = (time_t)time.tv_sec;
		FUNC2(output, ";; WHEN: %s",
				(char*)FUNC1(&time_tt));

		FUNC2(output, ";; MSG SIZE  rcvd: %d\n",
				(int)FUNC22(pkt));
	} else {
		return FUNC3(output);
	}
	return status;
}