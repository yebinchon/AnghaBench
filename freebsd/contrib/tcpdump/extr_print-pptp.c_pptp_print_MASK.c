#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  size_t uint16_t ;
typedef  int /*<<< orphan*/  u_char ;
struct pptp_hdr {int /*<<< orphan*/  reserved0; int /*<<< orphan*/  ctrl_msg_type; int /*<<< orphan*/  magic_cookie; int /*<<< orphan*/  msg_type; int /*<<< orphan*/  length; } ;
struct TYPE_19__ {scalar_t__ ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
#define  PPTP_CTRL_MSG_TYPE_CCRQ 144 
#define  PPTP_CTRL_MSG_TYPE_CDN 143 
#define  PPTP_CTRL_MSG_TYPE_ECHORP 142 
#define  PPTP_CTRL_MSG_TYPE_ECHORQ 141 
#define  PPTP_CTRL_MSG_TYPE_ICCN 140 
#define  PPTP_CTRL_MSG_TYPE_ICRP 139 
#define  PPTP_CTRL_MSG_TYPE_ICRQ 138 
#define  PPTP_CTRL_MSG_TYPE_OCRP 137 
#define  PPTP_CTRL_MSG_TYPE_OCRQ 136 
#define  PPTP_CTRL_MSG_TYPE_SCCRP 135 
#define  PPTP_CTRL_MSG_TYPE_SCCRQ 134 
#define  PPTP_CTRL_MSG_TYPE_SLI 133 
#define  PPTP_CTRL_MSG_TYPE_StopCCRP 132 
#define  PPTP_CTRL_MSG_TYPE_StopCCRQ 131 
#define  PPTP_CTRL_MSG_TYPE_WEN 130 
 scalar_t__ PPTP_MAGIC_COOKIE ; 
 size_t PPTP_MAX_MSGTYPE_INDEX ; 
#define  PPTP_MSG_TYPE_CTRL 129 
#define  PPTP_MSG_TYPE_MGMT 128 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * pptp_message_type_string ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  tstr ; 

void
FUNC19(netdissect_options *ndo,
           const u_char *dat)
{
	const struct pptp_hdr *hdr;
	uint32_t mc;
	uint16_t ctrl_msg_type;

	FUNC2((ndo, ": pptp"));

	hdr = (const struct pptp_hdr *)dat;

	FUNC3(hdr->length);
	if (ndo->ndo_vflag) {
		FUNC2((ndo, " Length=%u", FUNC0(&hdr->length)));
	}
	FUNC3(hdr->msg_type);
	if (ndo->ndo_vflag) {
		switch(FUNC0(&hdr->msg_type)) {
		case PPTP_MSG_TYPE_CTRL:
			FUNC2((ndo, " CTRL-MSG"));
			break;
		case PPTP_MSG_TYPE_MGMT:
			FUNC2((ndo, " MGMT-MSG"));
			break;
		default:
			FUNC2((ndo, " UNKNOWN-MSG-TYPE"));
			break;
		}
	}

	FUNC3(hdr->magic_cookie);
	mc = FUNC1(&hdr->magic_cookie);
	if (mc != PPTP_MAGIC_COOKIE) {
		FUNC2((ndo, " UNEXPECTED Magic-Cookie!!(%08x)", mc));
	}
	if (ndo->ndo_vflag || mc != PPTP_MAGIC_COOKIE) {
		FUNC2((ndo, " Magic-Cookie=%08x", mc));
	}
	FUNC3(hdr->ctrl_msg_type);
	ctrl_msg_type = FUNC0(&hdr->ctrl_msg_type);
	if (ctrl_msg_type < PPTP_MAX_MSGTYPE_INDEX) {
		FUNC2((ndo, " CTRL_MSGTYPE=%s",
		       pptp_message_type_string[ctrl_msg_type]));
	} else {
		FUNC2((ndo, " UNKNOWN_CTRL_MSGTYPE(%u)", ctrl_msg_type));
	}
	FUNC3(hdr->reserved0);

	dat += 12;

	switch(ctrl_msg_type) {
	case PPTP_CTRL_MSG_TYPE_SCCRQ:
		FUNC14(ndo, dat);
		break;
	case PPTP_CTRL_MSG_TYPE_SCCRP:
		FUNC13(ndo, dat);
		break;
	case PPTP_CTRL_MSG_TYPE_StopCCRQ:
		FUNC17(ndo, dat);
		break;
	case PPTP_CTRL_MSG_TYPE_StopCCRP:
		FUNC16(ndo, dat);
		break;
	case PPTP_CTRL_MSG_TYPE_ECHORQ:
		FUNC7(ndo, dat);
		break;
	case PPTP_CTRL_MSG_TYPE_ECHORP:
		FUNC6(ndo, dat);
		break;
	case PPTP_CTRL_MSG_TYPE_OCRQ:
		FUNC12(ndo, dat);
		break;
	case PPTP_CTRL_MSG_TYPE_OCRP:
		FUNC11(ndo, dat);
		break;
	case PPTP_CTRL_MSG_TYPE_ICRQ:
		FUNC10(ndo, dat);
		break;
	case PPTP_CTRL_MSG_TYPE_ICRP:
		FUNC9(ndo, dat);
		break;
	case PPTP_CTRL_MSG_TYPE_ICCN:
		FUNC8(ndo, dat);
		break;
	case PPTP_CTRL_MSG_TYPE_CCRQ:
		FUNC4(ndo, dat);
		break;
	case PPTP_CTRL_MSG_TYPE_CDN:
		FUNC5(ndo, dat);
		break;
	case PPTP_CTRL_MSG_TYPE_WEN:
		FUNC18(ndo, dat);
		break;
	case PPTP_CTRL_MSG_TYPE_SLI:
		FUNC15(ndo, dat);
		break;
	default:
		/* do nothing */
		break;
	}

	return;

trunc:
	FUNC2((ndo, "%s", tstr));
}