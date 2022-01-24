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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int FALSE ; 
#define  L2TP_AVP_ACCM 168 
#define  L2TP_AVP_ASSND_SESS_ID 167 
#define  L2TP_AVP_ASSND_TUN_ID 166 
#define  L2TP_AVP_BEARER_CAP 165 
#define  L2TP_AVP_BEARER_TYPE 164 
#define  L2TP_AVP_CALLED_NUMBER 163 
#define  L2TP_AVP_CALLING_NUMBER 162 
#define  L2TP_AVP_CALL_ERRORS 161 
#define  L2TP_AVP_CALL_SER_NUM 160 
#define  L2TP_AVP_CHALLENGE 159 
#define  L2TP_AVP_CHALLENGE_RESP 158 
#define  L2TP_AVP_FIRM_VER 157 
#define  L2TP_AVP_FRAMING_CAP 156 
#define  L2TP_AVP_FRAMING_TYPE 155 
 int L2TP_AVP_HDR_FLAG_HIDDEN ; 
 int L2TP_AVP_HDR_FLAG_MANDATORY ; 
 int L2TP_AVP_HDR_LEN_MASK ; 
#define  L2TP_AVP_HOST_NAME 154 
#define  L2TP_AVP_INI_RECV_LCP 153 
#define  L2TP_AVP_LAST_RECV_LCP 152 
#define  L2TP_AVP_LAST_SENT_LCP 151 
#define  L2TP_AVP_MAXIMUM_BPS 150 
#define  L2TP_AVP_MINIMUM_BPS 149 
#define  L2TP_AVP_MSGTYPE 148 
#define  L2TP_AVP_PACKET_PROC_DELAY 147 
#define  L2TP_AVP_PHY_CHANNEL_ID 146 
#define  L2TP_AVP_PPP_DISCON_CC 145 
#define  L2TP_AVP_PRIVATE_GRP_ID 144 
#define  L2TP_AVP_PROTO_VER 143 
#define  L2TP_AVP_PROXY_AUTH_CHAL 142 
#define  L2TP_AVP_PROXY_AUTH_ID 141 
#define  L2TP_AVP_PROXY_AUTH_NAME 140 
#define  L2TP_AVP_PROXY_AUTH_RESP 139 
#define  L2TP_AVP_PROXY_AUTH_TYPE 138 
#define  L2TP_AVP_Q931_CC 137 
#define  L2TP_AVP_RANDOM_VECTOR 136 
#define  L2TP_AVP_RECV_WIN_SIZE 135 
#define  L2TP_AVP_RESULT_CODE 134 
#define  L2TP_AVP_RX_CONN_SPEED 133 
#define  L2TP_AVP_SEQ_REQUIRED 132 
#define  L2TP_AVP_SUB_ADDRESS 131 
#define  L2TP_AVP_TIE_BREAKER 130 
#define  L2TP_AVP_TX_CONN_SPEED 129 
#define  L2TP_AVP_VENDOR_NAME 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int const) ; 
 int /*<<< orphan*/  FUNC3 (int const,int) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  l2tp_avp2str ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int const*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int const*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC23(netdissect_options *ndo, const u_char *dat, int length)
{
	u_int len;
	const uint16_t *ptr = (const uint16_t *)dat;
	uint16_t attr_type;
	int hidden = FALSE;

	if (length <= 0) {
		return;
	}

	FUNC1((ndo, " "));

	FUNC2(*ptr);	/* Flags & Length */
	len = FUNC0(ptr) & L2TP_AVP_HDR_LEN_MASK;

	/* If it is not long enough to contain the header, we'll give up. */
	if (len < 6)
		goto trunc;

	/* If it goes past the end of the remaining length of the packet,
	   we'll give up. */
	if (len > (u_int)length)
		goto trunc;

	/* If it goes past the end of the remaining length of the captured
	   data, we'll give up. */
	FUNC3(*ptr, len);

	/*
	 * After this point, we don't need to check whether we go past
	 * the length of the captured data; however, we *do* need to
	 * check whether we go past the end of the AVP.
	 */

	if (FUNC0(ptr) & L2TP_AVP_HDR_FLAG_MANDATORY) {
		FUNC1((ndo, "*"));
	}
	if (FUNC0(ptr) & L2TP_AVP_HDR_FLAG_HIDDEN) {
		hidden = TRUE;
		FUNC1((ndo, "?"));
	}
	ptr++;

	if (FUNC0(ptr)) {
		/* Vendor Specific Attribute */
	        FUNC1((ndo, "VENDOR%04x:", FUNC0(ptr))); ptr++;
		FUNC1((ndo, "ATTR%04x", FUNC0(ptr))); ptr++;
		FUNC1((ndo, "("));
		FUNC20(ndo, (const u_char *)ptr, len-6);
		FUNC1((ndo, ")"));
	} else {
		/* IETF-defined Attributes */
		ptr++;
		attr_type = FUNC0(ptr); ptr++;
		FUNC1((ndo, "%s", FUNC22(l2tp_avp2str, "AVP-#%u", attr_type)));
		FUNC1((ndo, "("));
		if (hidden) {
			FUNC1((ndo, "???"));
		} else {
			switch (attr_type) {
			case L2TP_AVP_MSGTYPE:
				FUNC10(ndo, (const u_char *)ptr, len-6);
				break;
			case L2TP_AVP_RESULT_CODE:
				FUNC17(ndo, (const u_char *)ptr, len-6);
				break;
			case L2TP_AVP_PROTO_VER:
				FUNC13(ndo, ptr, len-6);
				break;
			case L2TP_AVP_FRAMING_CAP:
				FUNC8(ndo, (const u_char *)ptr, len-6);
				break;
			case L2TP_AVP_BEARER_CAP:
				FUNC5(ndo, (const u_char *)ptr, len-6);
				break;
			case L2TP_AVP_TIE_BREAKER:
				if (len-6 < 8) {
					FUNC1((ndo, "AVP too short"));
					break;
				}
				FUNC20(ndo, (const u_char *)ptr, 8);
				break;
			case L2TP_AVP_FIRM_VER:
			case L2TP_AVP_ASSND_TUN_ID:
			case L2TP_AVP_RECV_WIN_SIZE:
			case L2TP_AVP_ASSND_SESS_ID:
				if (len-6 < 2) {
					FUNC1((ndo, "AVP too short"));
					break;
				}
				FUNC18(ndo, ptr);
				break;
			case L2TP_AVP_HOST_NAME:
			case L2TP_AVP_VENDOR_NAME:
			case L2TP_AVP_CALLING_NUMBER:
			case L2TP_AVP_CALLED_NUMBER:
			case L2TP_AVP_SUB_ADDRESS:
			case L2TP_AVP_PROXY_AUTH_NAME:
			case L2TP_AVP_PRIVATE_GRP_ID:
				FUNC21(ndo, (const u_char *)ptr, len-6);
				break;
			case L2TP_AVP_CHALLENGE:
			case L2TP_AVP_INI_RECV_LCP:
			case L2TP_AVP_LAST_SENT_LCP:
			case L2TP_AVP_LAST_RECV_LCP:
			case L2TP_AVP_PROXY_AUTH_CHAL:
			case L2TP_AVP_PROXY_AUTH_RESP:
			case L2TP_AVP_RANDOM_VECTOR:
				FUNC20(ndo, (const u_char *)ptr, len-6);
				break;
			case L2TP_AVP_Q931_CC:
				FUNC16(ndo, (const u_char *)ptr, len-6);
				break;
			case L2TP_AVP_CHALLENGE_RESP:
				if (len-6 < 16) {
					FUNC1((ndo, "AVP too short"));
					break;
				}
				FUNC20(ndo, (const u_char *)ptr, 16);
				break;
			case L2TP_AVP_CALL_SER_NUM:
			case L2TP_AVP_MINIMUM_BPS:
			case L2TP_AVP_MAXIMUM_BPS:
			case L2TP_AVP_TX_CONN_SPEED:
			case L2TP_AVP_PHY_CHANNEL_ID:
			case L2TP_AVP_RX_CONN_SPEED:
				if (len-6 < 4) {
					FUNC1((ndo, "AVP too short"));
					break;
				}
				FUNC19(ndo, (const uint32_t *)ptr);
				break;
			case L2TP_AVP_BEARER_TYPE:
				FUNC6(ndo, (const u_char *)ptr, len-6);
				break;
			case L2TP_AVP_FRAMING_TYPE:
				FUNC9(ndo, (const u_char *)ptr, len-6);
				break;
			case L2TP_AVP_PACKET_PROC_DELAY:
				FUNC11(ndo);
				break;
			case L2TP_AVP_PROXY_AUTH_TYPE:
				FUNC15(ndo, (const u_char *)ptr, len-6);
				break;
			case L2TP_AVP_PROXY_AUTH_ID:
				FUNC14(ndo, (const u_char *)ptr, len-6);
				break;
			case L2TP_AVP_CALL_ERRORS:
				FUNC7(ndo, (const u_char *)ptr, len-6);
				break;
			case L2TP_AVP_ACCM:
				FUNC4(ndo, (const u_char *)ptr, len-6);
				break;
			case L2TP_AVP_SEQ_REQUIRED:
				break;	/* No Attribute Value */
			case L2TP_AVP_PPP_DISCON_CC:
				FUNC12(ndo, (const u_char *)ptr, len-6);
				break;
			default:
				break;
			}
		}
		FUNC1((ndo, ")"));
	}

	FUNC23(ndo, dat+len, length-len);
	return;

 trunc:
	FUNC1((ndo, "|..."));
}