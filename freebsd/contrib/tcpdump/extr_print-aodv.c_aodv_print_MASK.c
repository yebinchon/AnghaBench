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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  u_int ;
typedef  int u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
#define  AODV_RERR 135 
#define  AODV_RREP 134 
#define  AODV_RREP_ACK 133 
#define  AODV_RREQ 132 
#define  AODV_V6_DRAFT_01_RERR 131 
#define  AODV_V6_DRAFT_01_RREP 130 
#define  AODV_V6_DRAFT_01_RREP_ACK 129 
#define  AODV_V6_DRAFT_01_RREQ 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int const*,int /*<<< orphan*/ ) ; 

void
FUNC11(netdissect_options *ndo,
           const u_char *dat, u_int length, int is_ip6)
{
	uint8_t msg_type;

	/*
	 * The message type is the first byte; make sure we have it
	 * and then fetch it.
	 */
	FUNC1(*dat);
	msg_type = *dat;
	FUNC0((ndo, " aodv"));

	switch (msg_type) {

	case AODV_RREQ:
		if (is_ip6)
			FUNC10(ndo, dat, length);
		else
			FUNC4(ndo, dat, length);
		break;

	case AODV_RREP:
		if (is_ip6)
			FUNC9(ndo, dat, length);
		else
			FUNC3(ndo, dat, length);
		break;

	case AODV_RERR:
		if (is_ip6)
			FUNC8(ndo, dat, length);
		else
			FUNC2(ndo, dat, length);
		break;

	case AODV_RREP_ACK:
		FUNC0((ndo, " rrep-ack %u", length));
		break;

	case AODV_V6_DRAFT_01_RREQ:
		FUNC7(ndo, dat, length);
		break;

	case AODV_V6_DRAFT_01_RREP:
		FUNC6(ndo, dat, length);
		break;

	case AODV_V6_DRAFT_01_RERR:
		FUNC5(ndo, dat, length);
		break;

	case AODV_V6_DRAFT_01_RREP_ACK:
		FUNC0((ndo, " rrep-ack %u", length));
		break;

	default:
		FUNC0((ndo, " type %u %u", msg_type, length));
	}
	return;

trunc:
	FUNC0((ndo, " [|aodv]"));
}