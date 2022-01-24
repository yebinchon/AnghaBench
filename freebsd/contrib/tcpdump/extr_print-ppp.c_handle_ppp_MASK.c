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
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
#define  ETHERTYPE_IP 149 
#define  ETHERTYPE_IPV6 148 
#define  ETHERTYPE_IPX 147 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
#define  PPP_BACP 146 
#define  PPP_BAP 145 
#define  PPP_CCP 144 
#define  PPP_CHAP 143 
#define  PPP_COMP 142 
#define  PPP_IP 141 
#define  PPP_IPCP 140 
#define  PPP_IPV6 139 
#define  PPP_IPV6CP 138 
#define  PPP_IPX 137 
#define  PPP_LCP 136 
#define  PPP_ML 135 
#define  PPP_MPLSCP 134 
#define  PPP_MPLS_MCAST 133 
#define  PPP_MPLS_UCAST 132 
#define  PPP_OSI 131 
#define  PPP_OSICP 130 
#define  PPP_PAP 129 
#define  PPP_VJNC 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  ppptype2str ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC14(netdissect_options *ndo,
           u_int proto, const u_char *p, int length)
{
	if ((proto & 0xff00) == 0x7e00) { /* is this an escape code ? */
		FUNC11(ndo, p - 1, length);
		return;
	}

	switch (proto) {
	case PPP_LCP: /* fall through */
	case PPP_IPCP:
	case PPP_OSICP:
	case PPP_MPLSCP:
	case PPP_IPV6CP:
	case PPP_CCP:
	case PPP_BACP:
		FUNC3(ndo, proto, p, length);
		break;
	case PPP_ML:
		FUNC4(ndo, p, length);
		break;
	case PPP_CHAP:
		FUNC2(ndo, p, length);
		break;
	case PPP_PAP:
		FUNC5(ndo, p, length);
		break;
	case PPP_BAP:		/* XXX: not yet completed */
		FUNC1(ndo, p, length);
		break;
	case ETHERTYPE_IP:	/*XXX*/
        case PPP_VJNC:
	case PPP_IP:
		FUNC7(ndo, p, length);
		break;
	case ETHERTYPE_IPV6:	/*XXX*/
	case PPP_IPV6:
		FUNC6(ndo, p, length);
		break;
	case ETHERTYPE_IPX:	/*XXX*/
	case PPP_IPX:
		FUNC8(ndo, p, length);
		break;
	case PPP_OSI:
		FUNC9(ndo, p, length);
		break;
	case PPP_MPLS_UCAST:
	case PPP_MPLS_MCAST:
		FUNC10(ndo, p, length);
		break;
	case PPP_COMP:
		FUNC0((ndo, "compressed PPP data"));
		break;
	default:
		FUNC0((ndo, "%s ", FUNC13(ppptype2str, "unknown PPP protocol (0x%04x)", proto)));
		FUNC12(ndo, p, "\n\t", length);
		break;
	}
}