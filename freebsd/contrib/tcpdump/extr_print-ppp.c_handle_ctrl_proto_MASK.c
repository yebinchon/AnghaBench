#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_13__ {int ndo_vflag; int /*<<< orphan*/  ndo_snapend; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
#define  CPCODES_CODE_REJ 146 
#define  CPCODES_CONF_ACK 145 
#define  CPCODES_CONF_NAK 144 
#define  CPCODES_CONF_REJ 143 
#define  CPCODES_CONF_REQ 142 
#define  CPCODES_DISC_REQ 141 
#define  CPCODES_ECHO_REQ 140 
#define  CPCODES_ECHO_RPL 139 
#define  CPCODES_ID 138 
#define  CPCODES_PROT_REJ 137 
#define  CPCODES_TERM_ACK 136 
#define  CPCODES_TERM_REQ 135 
#define  CPCODES_TIME_REM 134 
#define  CPCODES_VEXT 133 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const,int) ; 
#define  PPP_BACP 132 
#define  PPP_CCP 131 
#define  PPP_IPCP 130 
#define  PPP_IPV6CP 129 
#define  PPP_LCP 128 
 int /*<<< orphan*/  cpcodes ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  oui_values ; 
 int /*<<< orphan*/  ppptype2str ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/  const*,char*,int) ; 
 int FUNC12 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 char* FUNC13 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC14(netdissect_options *ndo,
                  u_int proto, const u_char *pptr, int length)
{
	const char *typestr;
	u_int code, len;
	int (*pfunc)(netdissect_options *, const u_char *, int);
	int x, j;
        const u_char *tptr;

        tptr=pptr;

        typestr = FUNC13(ppptype2str, "unknown ctrl-proto (0x%04x)", proto);
	FUNC3((ndo, "%s, ", typestr));

	if (length < 4) /* FIXME weak boundary checking */
		goto trunc;
	FUNC4(*tptr, 2);

	code = *tptr++;

	FUNC3((ndo, "%s (0x%02x), id %u, length %u",
	          FUNC13(cpcodes, "Unknown Opcode",code),
	          code,
	          *tptr++, /* ID */
	          length + 2));

	if (!ndo->ndo_vflag)
		return;

	if (length <= 4)
		return;    /* there may be a NULL confreq etc. */

	FUNC4(*tptr, 2);
	len = FUNC0(tptr);
	tptr += 2;

	FUNC3((ndo, "\n\tencoded length %u (=Option(s) length %u)", len, len - 4));

	if (ndo->ndo_vflag > 1)
		FUNC11(ndo, pptr - 2, "\n\t", 6);


	switch (code) {
	case CPCODES_VEXT:
		if (length < 11)
			break;
		FUNC4(*tptr, 4);
		FUNC3((ndo, "\n\t  Magic-Num 0x%08x", FUNC2(tptr)));
		tptr += 4;
		FUNC4(*tptr, 3);
		FUNC3((ndo, " Vendor: %s (%u)",
                       FUNC13(oui_values,"Unknown",FUNC1(tptr)),
                       FUNC1(tptr)));
		/* XXX: need to decode Kind and Value(s)? */
		break;
	case CPCODES_CONF_REQ:
	case CPCODES_CONF_ACK:
	case CPCODES_CONF_NAK:
	case CPCODES_CONF_REJ:
		x = len - 4;	/* Code(1), Identifier(1) and Length(2) */
		do {
			switch (proto) {
			case PPP_LCP:
				pfunc = print_lcp_config_options;
				break;
			case PPP_IPCP:
				pfunc = print_ipcp_config_options;
				break;
			case PPP_IPV6CP:
				pfunc = print_ip6cp_config_options;
				break;
			case PPP_CCP:
				pfunc = print_ccp_config_options;
				break;
			case PPP_BACP:
				pfunc = print_bacp_config_options;
				break;
			default:
				/*
				 * No print routine for the options for
				 * this protocol.
				 */
				pfunc = NULL;
				break;
			}

			if (pfunc == NULL) /* catch the above null pointer if unknown CP */
				break;

			if ((j = (*pfunc)(ndo, tptr, len)) == 0)
				break;
			x -= j;
			tptr += j;
		} while (x > 0);
		break;

	case CPCODES_TERM_REQ:
	case CPCODES_TERM_ACK:
		/* XXX: need to decode Data? */
		break;
	case CPCODES_CODE_REJ:
		/* XXX: need to decode Rejected-Packet? */
		break;
	case CPCODES_PROT_REJ:
		if (length < 6)
			break;
		FUNC4(*tptr, 2);
		FUNC3((ndo, "\n\t  Rejected %s Protocol (0x%04x)",
		       FUNC13(ppptype2str,"unknown", FUNC0(tptr)),
		       FUNC0(tptr)));
		/* XXX: need to decode Rejected-Information? - hexdump for now */
		if (len > 6) {
			FUNC3((ndo, "\n\t  Rejected Packet"));
			FUNC11(ndo, tptr + 2, "\n\t    ", len - 2);
		}
		break;
	case CPCODES_ECHO_REQ:
	case CPCODES_ECHO_RPL:
	case CPCODES_DISC_REQ:
		if (length < 8)
			break;
		FUNC4(*tptr, 4);
		FUNC3((ndo, "\n\t  Magic-Num 0x%08x", FUNC2(tptr)));
		/* XXX: need to decode Data? - hexdump for now */
		if (len > 8) {
			FUNC3((ndo, "\n\t  -----trailing data-----"));
			FUNC4(tptr[4], len - 8);
			FUNC11(ndo, tptr + 4, "\n\t  ", len - 8);
		}
		break;
	case CPCODES_ID:
		if (length < 8)
			break;
		FUNC4(*tptr, 4);
		FUNC3((ndo, "\n\t  Magic-Num 0x%08x", FUNC2(tptr)));
		/* RFC 1661 says this is intended to be human readable */
		if (len > 8) {
			FUNC3((ndo, "\n\t  Message\n\t    "));
			if (FUNC5(ndo, tptr + 4, len - 4, ndo->ndo_snapend))
				goto trunc;
		}
		break;
	case CPCODES_TIME_REM:
		if (length < 12)
			break;
		FUNC4(*tptr, 4);
		FUNC3((ndo, "\n\t  Magic-Num 0x%08x", FUNC2(tptr)));
		FUNC4(*(tptr + 4), 4);
		FUNC3((ndo, ", Seconds-Remaining %us", FUNC2(tptr + 4)));
		/* XXX: need to decode Message? */
		break;
	default:
		/* XXX this is dirty but we do not get the
		 * original pointer passed to the begin
		 * the PPP packet */
		if (ndo->ndo_vflag <= 1)
			FUNC11(ndo, pptr - 2, "\n\t  ", length + 2);
		break;
	}
	return;

trunc:
	FUNC3((ndo, "[|%s]", typestr));
}