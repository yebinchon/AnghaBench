#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u_char ;
struct TYPE_7__ {int ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int const FUNC0 (int const*) ; 
 int const FUNC1 (int const*) ; 
 int /*<<< orphan*/  FUNC2 (int const*) ; 
#define  LCPOPT_ACCM 169 
#define  LCPOPT_ACFC 168 
#define  LCPOPT_AP 167 
#define  LCPOPT_CBACK 166 
#define  LCPOPT_COBS 165 
#define  LCPOPT_DCEID 164 
#define  LCPOPT_DEP12 163 
#define  LCPOPT_DEP14 162 
#define  LCPOPT_DEP15 161 
#define  LCPOPT_DEP16 160 
#define  LCPOPT_DEP6 159 
#define  LCPOPT_FCSALT 158 
#define  LCPOPT_I18N 157 
#define  LCPOPT_LCPAOPT 156 
#define  LCPOPT_LD 155 
 int LCPOPT_MAX ; 
 int LCPOPT_MIN ; 
#define  LCPOPT_MLED 154 
#define  LCPOPT_MLHF 153 
#define  LCPOPT_MLMRRU 152 
#define  LCPOPT_MLSSNHF 151 
#define  LCPOPT_MN 150 
#define  LCPOPT_MPP 149 
#define  LCPOPT_MRU 148 
#define  LCPOPT_NUMMODE 147 
#define  LCPOPT_PE 146 
#define  LCPOPT_PFC 145 
#define  LCPOPT_PPPMUX 144 
#define  LCPOPT_PROP 143 
#define  LCPOPT_QP 142 
#define  LCPOPT_SDLOS 141 
#define  LCPOPT_SDP 140 
#define  LCPOPT_VEXT 139 
#define  MEDCLASS_IPV4 138 
#define  MEDCLASS_LOCAL 137 
#define  MEDCLASS_MAC 136 
#define  MEDCLASS_MNB 135 
#define  MEDCLASS_NULL 134 
#define  MEDCLASS_PSNDN 133 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int const) ; 
 int /*<<< orphan*/  FUNC5 (int const,int) ; 
 int /*<<< orphan*/  FUNC6 (int const*) ; 
 int /*<<< orphan*/  FUNC7 (int const*) ; 
 int /*<<< orphan*/  FUNC8 (int const*) ; 
#define  PPP_CHAP 132 
#define  PPP_EAP 131 
 int const PPP_LQM ; 
#define  PPP_PAP 130 
#define  PPP_SPAP 129 
#define  PPP_SPAP_OLD 128 
 int /*<<< orphan*/  authalg_values ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int const*) ; 
 int i ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int const*) ; 
 int /*<<< orphan*/ * lcpconfopts ; 
 int /*<<< orphan*/  oui_values ; 
 int /*<<< orphan*/  ppp_callback_values ; 
 int /*<<< orphan*/  ppptype2str ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int const*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int const) ; 

__attribute__((used)) static int
FUNC13(netdissect_options *ndo,
                         const u_char *p, int length)
{
	int len, opt;

	if (length < 2)
		return 0;
	FUNC5(*p, 2);
	len = p[1];
	opt = p[0];
	if (length < len)
		return 0;
	if (len < 2) {
		if ((opt >= LCPOPT_MIN) && (opt <= LCPOPT_MAX))
			FUNC3((ndo, "\n\t  %s Option (0x%02x), length %u (length bogus, should be >= 2)",
			          lcpconfopts[opt], opt, len));
		else
			FUNC3((ndo, "\n\tunknown LCP option 0x%02x", opt));
		return 0;
	}
	if ((opt >= LCPOPT_MIN) && (opt <= LCPOPT_MAX))
		FUNC3((ndo, "\n\t  %s Option (0x%02x), length %u", lcpconfopts[opt], opt, len));
	else {
		FUNC3((ndo, "\n\tunknown LCP option 0x%02x", opt));
		return len;
	}

	switch (opt) {
	case LCPOPT_VEXT:
		if (len < 6) {
			FUNC3((ndo, " (length bogus, should be >= 6)"));
			return len;
		}
		FUNC7(p + 2);
		FUNC3((ndo, ": Vendor: %s (%u)",
			FUNC12(oui_values,"Unknown",FUNC1(p+2)),
			FUNC1(p + 2)));
#if 0
		ND_TCHECK(p[5]);
		ND_PRINT((ndo, ", kind: 0x%02x", p[5]));
		ND_PRINT((ndo, ", Value: 0x"));
		for (i = 0; i < len - 6; i++) {
			ND_TCHECK(p[6 + i]);
			ND_PRINT((ndo, "%02x", p[6 + i]));
		}
#endif
		break;
	case LCPOPT_MRU:
		if (len != 4) {
			FUNC3((ndo, " (length bogus, should be = 4)"));
			return len;
		}
		FUNC6(p + 2);
		FUNC3((ndo, ": %u", FUNC0(p + 2)));
		break;
	case LCPOPT_ACCM:
		if (len != 6) {
			FUNC3((ndo, " (length bogus, should be = 6)"));
			return len;
		}
		FUNC8(p + 2);
		FUNC3((ndo, ": 0x%08x", FUNC2(p + 2)));
		break;
	case LCPOPT_AP:
		if (len < 4) {
			FUNC3((ndo, " (length bogus, should be >= 4)"));
			return len;
		}
		FUNC6(p + 2);
		FUNC3((ndo, ": %s", FUNC12(ppptype2str, "Unknown Auth Proto (0x04x)", FUNC0(p + 2))));

		switch (FUNC0(p+2)) {
		case PPP_CHAP:
			FUNC4(p[4]);
			FUNC3((ndo, ", %s", FUNC12(authalg_values, "Unknown Auth Alg %u", p[4])));
			break;
		case PPP_PAP: /* fall through */
		case PPP_EAP:
		case PPP_SPAP:
		case PPP_SPAP_OLD:
                        break;
		default:
			FUNC11(ndo, p, "\n\t", len);
		}
		break;
	case LCPOPT_QP:
		if (len < 4) {
			FUNC3((ndo, " (length bogus, should be >= 4)"));
			return 0;
		}
		FUNC6(p+2);
		if (FUNC0(p+2) == PPP_LQM)
			FUNC3((ndo, ": LQR"));
		else
			FUNC3((ndo, ": unknown"));
		break;
	case LCPOPT_MN:
		if (len != 6) {
			FUNC3((ndo, " (length bogus, should be = 6)"));
			return 0;
		}
		FUNC8(p + 2);
		FUNC3((ndo, ": 0x%08x", FUNC2(p + 2)));
		break;
	case LCPOPT_PFC:
		break;
	case LCPOPT_ACFC:
		break;
	case LCPOPT_LD:
		if (len != 4) {
			FUNC3((ndo, " (length bogus, should be = 4)"));
			return 0;
		}
		FUNC6(p + 2);
		FUNC3((ndo, ": 0x%04x", FUNC0(p + 2)));
		break;
	case LCPOPT_CBACK:
		if (len < 3) {
			FUNC3((ndo, " (length bogus, should be >= 3)"));
			return 0;
		}
		FUNC3((ndo, ": "));
		FUNC4(p[2]);
		FUNC3((ndo, ": Callback Operation %s (%u)",
                       FUNC12(ppp_callback_values, "Unknown", p[2]),
                       p[2]));
		break;
	case LCPOPT_MLMRRU:
		if (len != 4) {
			FUNC3((ndo, " (length bogus, should be = 4)"));
			return 0;
		}
		FUNC6(p + 2);
		FUNC3((ndo, ": %u", FUNC0(p + 2)));
		break;
	case LCPOPT_MLED:
		if (len < 3) {
			FUNC3((ndo, " (length bogus, should be >= 3)"));
			return 0;
		}
		FUNC4(p[2]);
		switch (p[2]) {		/* class */
		case MEDCLASS_NULL:
			FUNC3((ndo, ": Null"));
			break;
		case MEDCLASS_LOCAL:
			FUNC3((ndo, ": Local")); /* XXX */
			break;
		case MEDCLASS_IPV4:
			if (len != 7) {
				FUNC3((ndo, " (length bogus, should be = 7)"));
				return 0;
			}
			FUNC5(*(p + 3), 4);
			FUNC3((ndo, ": IPv4 %s", FUNC10(ndo, p + 3)));
			break;
		case MEDCLASS_MAC:
			if (len != 9) {
				FUNC3((ndo, " (length bogus, should be = 9)"));
				return 0;
			}
			FUNC5(*(p + 3), 6);
			FUNC3((ndo, ": MAC %s", FUNC9(ndo, p + 3)));
			break;
		case MEDCLASS_MNB:
			FUNC3((ndo, ": Magic-Num-Block")); /* XXX */
			break;
		case MEDCLASS_PSNDN:
			FUNC3((ndo, ": PSNDN")); /* XXX */
			break;
		default:
			FUNC3((ndo, ": Unknown class %u", p[2]));
			break;
		}
		break;

/* XXX: to be supported */
#if 0
	case LCPOPT_DEP6:
	case LCPOPT_FCSALT:
	case LCPOPT_SDP:
	case LCPOPT_NUMMODE:
	case LCPOPT_DEP12:
	case LCPOPT_DEP14:
	case LCPOPT_DEP15:
	case LCPOPT_DEP16:
        case LCPOPT_MLSSNHF:
	case LCPOPT_PROP:
	case LCPOPT_DCEID:
	case LCPOPT_MPP:
	case LCPOPT_LCPAOPT:
	case LCPOPT_COBS:
	case LCPOPT_PE:
	case LCPOPT_MLHF:
	case LCPOPT_I18N:
	case LCPOPT_SDLOS:
	case LCPOPT_PPPMUX:
		break;
#endif
	default:
		/*
		 * Unknown option; dump it as raw bytes now if we're
		 * not going to do so below.
		 */
		if (ndo->ndo_vflag < 2)
			FUNC11(ndo, &p[2], "\n\t    ", len - 2);
		break;
	}

	if (ndo->ndo_vflag > 1)
		FUNC11(ndo, &p[2], "\n\t    ", len - 2); /* exclude TLV header */

	return len;

trunc:
	FUNC3((ndo, "[|lcp]"));
	return 0;
}