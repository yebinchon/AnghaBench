#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_1__ ;

/* Type definitions */
typedef  int u_short ;
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct lladdr_info {int dummy; } ;
struct TYPE_28__ {int /*<<< orphan*/  ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
#define  ETHERTYPE_AARP 163 
#define  ETHERTYPE_AOE 162 
#define  ETHERTYPE_ARP 161 
#define  ETHERTYPE_ATALK 160 
#define  ETHERTYPE_CALM_FAST 159 
#define  ETHERTYPE_CFM 158 
#define  ETHERTYPE_CFM_OLD 157 
#define  ETHERTYPE_DN 156 
#define  ETHERTYPE_EAPOL 155 
#define  ETHERTYPE_GEONET 154 
#define  ETHERTYPE_GEONET_OLD 153 
#define  ETHERTYPE_IEEE1905_1 152 
#define  ETHERTYPE_IP 151 
#define  ETHERTYPE_IPV6 150 
#define  ETHERTYPE_IPX 149 
#define  ETHERTYPE_ISO 148 
#define  ETHERTYPE_LAT 147 
#define  ETHERTYPE_LLDP 146 
#define  ETHERTYPE_LOOPBACK 145 
#define  ETHERTYPE_MEDSA 144 
#define  ETHERTYPE_MOPDL 143 
#define  ETHERTYPE_MOPRC 142 
#define  ETHERTYPE_MPCP 141 
#define  ETHERTYPE_MPLS 140 
#define  ETHERTYPE_MPLS_MULTI 139 
#define  ETHERTYPE_MS_NLB_HB 138 
#define  ETHERTYPE_PPP 137 
#define  ETHERTYPE_PPPOED 136 
#define  ETHERTYPE_PPPOED2 135 
#define  ETHERTYPE_PPPOES 134 
#define  ETHERTYPE_PPPOES2 133 
#define  ETHERTYPE_REVARP 132 
#define  ETHERTYPE_RRCP 131 
#define  ETHERTYPE_SCA 130 
#define  ETHERTYPE_SLOW 129 
#define  ETHERTYPE_TIPC 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,struct lladdr_info const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,struct lladdr_info const*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct lladdr_info const*,struct lladdr_info const*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,struct lladdr_info const*,struct lladdr_info const*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC25(netdissect_options *ndo,
                u_short ether_type, const u_char *p,
                u_int length, u_int caplen,
                const struct lladdr_info *src, const struct lladdr_info *dst)
{
	switch (ether_type) {

	case ETHERTYPE_IP:
	        FUNC11(ndo, p, length);
		return (1);

	case ETHERTYPE_IPV6:
		FUNC10(ndo, p, length);
		return (1);

	case ETHERTYPE_ARP:
	case ETHERTYPE_REVARP:
	        FUNC3(ndo, p, length, caplen);
		return (1);

	case ETHERTYPE_DN:
		FUNC7(ndo, p, length, caplen);
		return (1);

	case ETHERTYPE_ATALK:
		if (ndo->ndo_vflag)
			FUNC0((ndo, "et1 "));
		FUNC4(ndo, p, length);
		return (1);

	case ETHERTYPE_AARP:
		FUNC1(ndo, p, length);
		return (1);

	case ETHERTYPE_IPX:
		FUNC0((ndo, "(NOV-ETHII) "));
		FUNC12(ndo, p, length);
		return (1);

	case ETHERTYPE_ISO:
		if (length == 0 || caplen == 0) {
			FUNC0((ndo, " [|osi]"));
			return (1);
		}
		FUNC13(ndo, p + 1, length - 1);
		return(1);

	case ETHERTYPE_PPPOED:
	case ETHERTYPE_PPPOES:
	case ETHERTYPE_PPPOED2:
	case ETHERTYPE_PPPOES2:
		FUNC21(ndo, p, length);
		return (1);

	case ETHERTYPE_EAPOL:
	        FUNC8(ndo, p, length);
		return (1);

	case ETHERTYPE_RRCP:
	        FUNC22(ndo, p, length, src, dst);
		return (1);

	case ETHERTYPE_PPP:
		if (length) {
			FUNC0((ndo, ": "));
			FUNC20(ndo, p, length);
		}
		return (1);

	case ETHERTYPE_MPCP:
	        FUNC17(ndo, p, length);
		return (1);

	case ETHERTYPE_SLOW:
	        FUNC23(ndo, p, length);
		return (1);

	case ETHERTYPE_CFM:
	case ETHERTYPE_CFM_OLD:
		FUNC6(ndo, p, length);
		return (1);

	case ETHERTYPE_LLDP:
		FUNC14(ndo, p, length);
		return (1);

        case ETHERTYPE_LOOPBACK:
		FUNC15(ndo, p, length);
                return (1);

	case ETHERTYPE_MPLS:
	case ETHERTYPE_MPLS_MULTI:
		FUNC18(ndo, p, length);
		return (1);

	case ETHERTYPE_TIPC:
		FUNC24(ndo, p, length, caplen);
		return (1);

	case ETHERTYPE_MS_NLB_HB:
		FUNC19(ndo, p);
		return (1);

        case ETHERTYPE_GEONET_OLD:
        case ETHERTYPE_GEONET:
                FUNC9(ndo, p, length, src);
                return (1);

        case ETHERTYPE_CALM_FAST:
                FUNC5(ndo, p, length, src);
                return (1);

	case ETHERTYPE_AOE:
		FUNC2(ndo, p, length);
		return (1);

	case ETHERTYPE_MEDSA:
		FUNC16(ndo, p, length, caplen, src, dst);
		return (1);

	case ETHERTYPE_LAT:
	case ETHERTYPE_SCA:
	case ETHERTYPE_MOPRC:
	case ETHERTYPE_MOPDL:
	case ETHERTYPE_IEEE1905_1:
		/* default_print for now */
	default:
		return (0);
	}
}