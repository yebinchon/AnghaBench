#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int u_short ;
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct lladdr_info {int /*<<< orphan*/  addr; int /*<<< orphan*/  (* addr_string ) (TYPE_1__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_15__ {scalar_t__ ndo_eflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int ETHERTYPE_ATALK ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const,int) ; 
#define  OUI_APPLETALK 145 
#define  OUI_CISCO 144 
#define  OUI_CISCO_90 143 
#define  OUI_ENCAP_ETHER 142 
#define  OUI_RFC2684 141 
#define  PID_CISCO_CDP 140 
#define  PID_CISCO_DTP 139 
#define  PID_CISCO_PVST 138 
#define  PID_CISCO_UDLD 137 
#define  PID_CISCO_VLANBRIDGE 136 
#define  PID_CISCO_VTP 135 
#define  PID_RFC2684_802_5_FCS 134 
#define  PID_RFC2684_802_5_NOFCS 133 
#define  PID_RFC2684_BPDU 132 
#define  PID_RFC2684_ETH_FCS 131 
#define  PID_RFC2684_ETH_NOFCS 130 
#define  PID_RFC2684_FDDI_FCS 129 
#define  PID_RFC2684_FDDI_NOFCS 128 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/  const*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/  const*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_1__*,int,int /*<<< orphan*/  const*,int,int,struct lladdr_info const*,struct lladdr_info const*) ; 
 int /*<<< orphan*/  ethertype_values ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/  const*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  oui_values ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/  const*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 

int
FUNC17(netdissect_options *ndo, const u_char *p, u_int length, u_int caplen,
	const struct lladdr_info *src, const struct lladdr_info *dst,
	u_int bridge_pad)
{
	uint32_t orgcode;
	register u_short et;
	register int ret;

	FUNC3(*p, 5);
	if (caplen < 5 || length < 5)
		goto trunc;
	orgcode = FUNC1(p);
	et = FUNC0(p + 3);

	if (ndo->ndo_eflag) {
		/*
		 * Somebody's already printed the MAC addresses, if there
		 * are any, so just print the SNAP header, not the MAC
		 * addresses.
		 */
		FUNC2((ndo, "oui %s (0x%06x), %s %s (0x%04x), length %u: ",
		     FUNC13(oui_values, "Unknown", orgcode),
		     orgcode,
		     (orgcode == 0x000000 ? "ethertype" : "pid"),
		     FUNC13(FUNC9(orgcode), "Unknown", et),
		     et, length - 5));
	}
	p += 5;
	length -= 5;
	caplen -= 5;

	switch (orgcode) {
	case OUI_ENCAP_ETHER:
	case OUI_CISCO_90:
		/*
		 * This is an encapsulated Ethernet packet,
		 * or a packet bridged by some piece of
		 * Cisco hardware; the protocol ID is
		 * an Ethernet protocol type.
		 */
		ret = FUNC7(ndo, et, p, length, caplen, src, dst);
		if (ret)
			return (ret);
		break;

	case OUI_APPLETALK:
		if (et == ETHERTYPE_ATALK) {
			/*
			 * No, I have no idea why Apple used one
			 * of their own OUIs, rather than
			 * 0x000000, and an Ethernet packet
			 * type, for Appletalk data packets,
			 * but used 0x000000 and an Ethernet
			 * packet type for AARP packets.
			 */
			ret = FUNC7(ndo, et, p, length, caplen, src, dst);
			if (ret)
				return (ret);
		}
		break;

	case OUI_CISCO:
                switch (et) {
                case PID_CISCO_CDP:
                        FUNC4(ndo, p, length, caplen);
                        return (1);
                case PID_CISCO_DTP:
                        FUNC5(ndo, p, length);
                        return (1);
                case PID_CISCO_UDLD:
                        FUNC15(ndo, p, length);
                        return (1);
                case PID_CISCO_VTP:
                        FUNC16(ndo, p, length);
                        return (1);
                case PID_CISCO_PVST:
                case PID_CISCO_VLANBRIDGE:
                        FUNC10(ndo, p, length);
                        return (1);
                default:
                        break;
                }
		break;

	case OUI_RFC2684:
		switch (et) {

		case PID_RFC2684_ETH_FCS:
		case PID_RFC2684_ETH_NOFCS:
			/*
			 * XXX - remove the last two bytes for
			 * PID_RFC2684_ETH_FCS?
			 */
			/*
			 * Skip the padding.
			 */
			FUNC3(*p, bridge_pad);
			caplen -= bridge_pad;
			length -= bridge_pad;
			p += bridge_pad;

			/*
			 * What remains is an Ethernet packet.
			 */
			FUNC6(ndo, p, length, caplen, NULL, NULL);
			return (1);

		case PID_RFC2684_802_5_FCS:
		case PID_RFC2684_802_5_NOFCS:
			/*
			 * XXX - remove the last two bytes for
			 * PID_RFC2684_ETH_FCS?
			 */
			/*
			 * Skip the padding, but not the Access
			 * Control field.
			 */
			FUNC3(*p, bridge_pad);
			caplen -= bridge_pad;
			length -= bridge_pad;
			p += bridge_pad;

			/*
			 * What remains is an 802.5 Token Ring
			 * packet.
			 */
			FUNC14(ndo, p, length, caplen);
			return (1);

		case PID_RFC2684_FDDI_FCS:
		case PID_RFC2684_FDDI_NOFCS:
			/*
			 * XXX - remove the last two bytes for
			 * PID_RFC2684_ETH_FCS?
			 */
			/*
			 * Skip the padding.
			 */
			FUNC3(*p, bridge_pad + 1);
			caplen -= bridge_pad + 1;
			length -= bridge_pad + 1;
			p += bridge_pad + 1;

			/*
			 * What remains is an FDDI packet.
			 */
			FUNC8(ndo, p, length, caplen);
			return (1);

		case PID_RFC2684_BPDU:
			FUNC10(ndo, p, length);
			return (1);
		}
	}
	if (!ndo->ndo_eflag) {
		/*
		 * Nobody printed the link-layer addresses, so print them, if
		 * we have any.
		 */
		if (src != NULL && dst != NULL) {
			FUNC2((ndo, "%s > %s ",
				(src->addr_string)(ndo, src->addr),
				(dst->addr_string)(ndo, dst->addr)));
		}
		/*
		 * Print the SNAP header, but if the OUI is 000000, don't
		 * bother printing it, and report the PID as being an
		 * ethertype.
		 */
		if (orgcode == 0x000000) {
			FUNC2((ndo, "SNAP, ethertype %s (0x%04x), length %u: ",
			     FUNC13(ethertype_values, "Unknown", et),
			     et, length));
		} else {
			FUNC2((ndo, "SNAP, oui %s (0x%06x), pid %s (0x%04x), length %u: ",
			     FUNC13(oui_values, "Unknown", orgcode),
			     orgcode,
			     FUNC13(FUNC9(orgcode), "Unknown", et),
			     et, length));
		}
	}
	return (0);

trunc:
	FUNC2((ndo, "[|snap]"));
	return (1);
}