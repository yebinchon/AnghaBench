#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int u_int ;
typedef  int u_char ;
typedef  int /*<<< orphan*/  tlv ;
struct TYPE_14__ {int ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const*) ; 
 int FUNC1 (int const*) ; 
 int FALSE ; 
#define  LLDP_CHASSIS_CHASSIS_COMP_SUBTYPE 155 
#define  LLDP_CHASSIS_ID_TLV 154 
#define  LLDP_CHASSIS_INTF_ALIAS_SUBTYPE 153 
#define  LLDP_CHASSIS_INTF_NAME_SUBTYPE 152 
#define  LLDP_CHASSIS_LOCAL_SUBTYPE 151 
#define  LLDP_CHASSIS_MAC_ADDR_SUBTYPE 150 
#define  LLDP_CHASSIS_NETWORK_ADDR_SUBTYPE 149 
#define  LLDP_CHASSIS_PORT_COMP_SUBTYPE 148 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
#define  LLDP_MGMT_ADDR_TLV 147 
#define  LLDP_PORT_AGENT_CIRC_ID_SUBTYPE 146 
#define  LLDP_PORT_DESCR_TLV 145 
#define  LLDP_PORT_ID_TLV 144 
#define  LLDP_PORT_INTF_ALIAS_SUBTYPE 143 
#define  LLDP_PORT_INTF_NAME_SUBTYPE 142 
#define  LLDP_PORT_LOCAL_SUBTYPE 141 
#define  LLDP_PORT_MAC_ADDR_SUBTYPE 140 
#define  LLDP_PORT_NETWORK_ADDR_SUBTYPE 139 
#define  LLDP_PORT_PORT_COMP_SUBTYPE 138 
#define  LLDP_PRIVATE_TLV 137 
#define  LLDP_SYSTEM_CAP_TLV 136 
#define  LLDP_SYSTEM_DESCR_TLV 135 
#define  LLDP_SYSTEM_NAME_TLV 134 
#define  LLDP_TTL_TLV 133 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int const,int) ; 
#define  OUI_DCBX 132 
#define  OUI_IANA 131 
#define  OUI_IEEE_8021_PRIVATE 130 
#define  OUI_IEEE_8023_PRIVATE 129 
#define  OUI_TIA 128 
 int TRUE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int const*) ; 
 int /*<<< orphan*/  lldp_cap_values ; 
 int /*<<< orphan*/  lldp_chassis_subtype_values ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int const*,int) ; 
 char* FUNC9 (TYPE_1__*,int const*,int) ; 
 int /*<<< orphan*/  lldp_port_subtype_values ; 
 int FUNC10 (TYPE_1__*,int const*,int) ; 
 int FUNC11 (TYPE_1__*,int const*,int) ; 
 int FUNC12 (TYPE_1__*,int const*,int) ; 
 int FUNC13 (TYPE_1__*,int const*,int) ; 
 int FUNC14 (TYPE_1__*,int const*,int) ; 
 int /*<<< orphan*/  lldp_tlv_values ; 
 int /*<<< orphan*/  oui_values ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int const*,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int const*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,int) ; 

void
FUNC18(netdissect_options *ndo,
           register const u_char *pptr, register u_int len)
{
    uint8_t subtype;
    uint16_t tlv, cap, ena_cap;
    u_int oui, tlen, hexdump, tlv_type, tlv_len;
    const u_char *tptr;
    char *network_addr;

    tptr = pptr;
    tlen = len;

    FUNC4((ndo, "LLDP, length %u", len));

    while (tlen >= sizeof(tlv)) {

        FUNC5(*tptr, sizeof(tlv));

        tlv = FUNC0(tptr);

        tlv_type = FUNC3(tlv);
        tlv_len = FUNC2(tlv);
        hexdump = FALSE;

        tlen -= sizeof(tlv);
        tptr += sizeof(tlv);

        if (ndo->ndo_vflag) {
            FUNC4((ndo, "\n\t%s TLV (%u), length %u",
                   FUNC17(lldp_tlv_values, "Unknown", tlv_type),
                   tlv_type, tlv_len));
        }

        /* infinite loop check */
        if (!tlv_type || !tlv_len) {
            break;
        }

        FUNC5(*tptr, tlv_len);
        if (tlen < tlv_len) {
            goto trunc;
        }

        switch (tlv_type) {

        case LLDP_CHASSIS_ID_TLV:
            if (ndo->ndo_vflag) {
                if (tlv_len < 2) {
                    goto trunc;
                }
                subtype = *tptr;
                FUNC4((ndo, "\n\t  Subtype %s (%u): ",
                       FUNC17(lldp_chassis_subtype_values, "Unknown", subtype),
                       subtype));

                switch (subtype) {
                case LLDP_CHASSIS_MAC_ADDR_SUBTYPE:
                    if (tlv_len < 1+6) {
                        goto trunc;
                    }
                    FUNC4((ndo, "%s", FUNC7(ndo, tptr + 1)));
                    break;

                case LLDP_CHASSIS_INTF_NAME_SUBTYPE: /* fall through */
                case LLDP_CHASSIS_LOCAL_SUBTYPE:
                case LLDP_CHASSIS_CHASSIS_COMP_SUBTYPE:
                case LLDP_CHASSIS_INTF_ALIAS_SUBTYPE:
                case LLDP_CHASSIS_PORT_COMP_SUBTYPE:
                    FUNC16(ndo, tptr + 1, tlv_len - 1);
                    break;

                case LLDP_CHASSIS_NETWORK_ADDR_SUBTYPE:
                    network_addr = FUNC9(ndo, tptr+1, tlv_len-1);
                    if (network_addr == NULL) {
                        goto trunc;
                    }
                    FUNC4((ndo, "%s", network_addr));
                    break;

                default:
                    hexdump = TRUE;
                    break;
                }
            }
            break;

        case LLDP_PORT_ID_TLV:
            if (ndo->ndo_vflag) {
                if (tlv_len < 2) {
                    goto trunc;
                }
                subtype = *tptr;
                FUNC4((ndo, "\n\t  Subtype %s (%u): ",
                       FUNC17(lldp_port_subtype_values, "Unknown", subtype),
                       subtype));

                switch (subtype) {
                case LLDP_PORT_MAC_ADDR_SUBTYPE:
                    if (tlv_len < 1+6) {
                        goto trunc;
                    }
                    FUNC4((ndo, "%s", FUNC7(ndo, tptr + 1)));
                    break;

                case LLDP_PORT_INTF_NAME_SUBTYPE: /* fall through */
                case LLDP_PORT_LOCAL_SUBTYPE:
                case LLDP_PORT_AGENT_CIRC_ID_SUBTYPE:
                case LLDP_PORT_INTF_ALIAS_SUBTYPE:
                case LLDP_PORT_PORT_COMP_SUBTYPE:
                    FUNC16(ndo, tptr + 1, tlv_len - 1);
                    break;

                case LLDP_PORT_NETWORK_ADDR_SUBTYPE:
                    network_addr = FUNC9(ndo, tptr+1, tlv_len-1);
                    if (network_addr == NULL) {
                        goto trunc;
                    }
                    FUNC4((ndo, "%s", network_addr));
                    break;

                default:
                    hexdump = TRUE;
                    break;
                }
            }
            break;

        case LLDP_TTL_TLV:
            if (ndo->ndo_vflag) {
                if (tlv_len < 2) {
                    goto trunc;
                }
                FUNC4((ndo, ": TTL %us", FUNC0(tptr)));
            }
            break;

        case LLDP_PORT_DESCR_TLV:
            if (ndo->ndo_vflag) {
                FUNC4((ndo, ": "));
                FUNC16(ndo, tptr, tlv_len);
            }
            break;

        case LLDP_SYSTEM_NAME_TLV:
            /*
             * The system name is also print in non-verbose mode
             * similar to the CDP printer.
             */
            FUNC4((ndo, ": "));
            FUNC16(ndo, tptr, tlv_len);
            break;

        case LLDP_SYSTEM_DESCR_TLV:
            if (ndo->ndo_vflag) {
                FUNC4((ndo, "\n\t  "));
                FUNC16(ndo, tptr, tlv_len);
            }
            break;

        case LLDP_SYSTEM_CAP_TLV:
            if (ndo->ndo_vflag) {
                /*
                 * XXX - IEEE Std 802.1AB-2009 says the first octet
                 * if a chassis ID subtype, with the system
                 * capabilities and enabled capabilities following
                 * it.
                 */
                if (tlv_len < 4) {
                    goto trunc;
                }
                cap = FUNC0(tptr);
                ena_cap = FUNC0(tptr+2);
                FUNC4((ndo, "\n\t  System  Capabilities [%s] (0x%04x)",
                       FUNC6(lldp_cap_values, "none", cap), cap));
                FUNC4((ndo, "\n\t  Enabled Capabilities [%s] (0x%04x)",
                       FUNC6(lldp_cap_values, "none", ena_cap), ena_cap));
            }
            break;

        case LLDP_MGMT_ADDR_TLV:
            if (ndo->ndo_vflag) {
                if (!FUNC8(ndo, tptr, tlv_len)) {
                    goto trunc;
                }
            }
            break;

        case LLDP_PRIVATE_TLV:
            if (ndo->ndo_vflag) {
                if (tlv_len < 3) {
                    goto trunc;
                }
                oui = FUNC1(tptr);
                FUNC4((ndo, ": OUI %s (0x%06x)", FUNC17(oui_values, "Unknown", oui), oui));

                switch (oui) {
                case OUI_IEEE_8021_PRIVATE:
                    hexdump = FUNC10(ndo, tptr, tlv_len);
                    break;
                case OUI_IEEE_8023_PRIVATE:
                    hexdump = FUNC11(ndo, tptr, tlv_len);
                    break;
		case OUI_IANA:
                    hexdump = FUNC13(ndo, tptr, tlv_len);
                    break;
                case OUI_TIA:
                    hexdump = FUNC14(ndo, tptr, tlv_len);
                    break;
                case OUI_DCBX:
                    hexdump = FUNC12(ndo, tptr, tlv_len);
                    break;
                default:
                    hexdump = TRUE;
                    break;
                }
            }
            break;

        default:
            hexdump = TRUE;
            break;
        }

        /* do we also want to see a hex dump ? */
        if (ndo->ndo_vflag > 1 || (ndo->ndo_vflag && hexdump)) {
            FUNC15(ndo, tptr, "\n\t  ", tlv_len);
        }

        tlen -= tlv_len;
        tptr += tlv_len;
    }
    return;
 trunc:
    FUNC4((ndo, "\n\t[|LLDP]"));
}