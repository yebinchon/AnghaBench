
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int u_int ;
typedef int u_char ;
typedef int tlv ;
struct TYPE_14__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 int EXTRACT_16BITS (int const*) ;
 int EXTRACT_24BITS (int const*) ;
 int FALSE ;
 int LLDP_EXTRACT_LEN (int ) ;
 int LLDP_EXTRACT_TYPE (int ) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK2 (int const,int) ;





 int TRUE ;
 int bittok2str (int ,char*,int ) ;
 int etheraddr_string (TYPE_1__*,int const*) ;
 int lldp_cap_values ;
 int lldp_chassis_subtype_values ;
 int lldp_mgmt_addr_tlv_print (TYPE_1__*,int const*,int) ;
 char* lldp_network_addr_print (TYPE_1__*,int const*,int) ;
 int lldp_port_subtype_values ;
 int lldp_private_8021_print (TYPE_1__*,int const*,int) ;
 int lldp_private_8023_print (TYPE_1__*,int const*,int) ;
 int lldp_private_dcbx_print (TYPE_1__*,int const*,int) ;
 int lldp_private_iana_print (TYPE_1__*,int const*,int) ;
 int lldp_private_tia_print (TYPE_1__*,int const*,int) ;
 int lldp_tlv_values ;
 int oui_values ;
 int print_unknown_data (TYPE_1__*,int const*,char*,int) ;
 int safeputs (TYPE_1__*,int const*,int) ;
 int tok2str (int ,char*,int) ;

void
lldp_print(netdissect_options *ndo,
           register const u_char *pptr, register u_int len)
{
    uint8_t subtype;
    uint16_t tlv, cap, ena_cap;
    u_int oui, tlen, hexdump, tlv_type, tlv_len;
    const u_char *tptr;
    char *network_addr;

    tptr = pptr;
    tlen = len;

    ND_PRINT((ndo, "LLDP, length %u", len));

    while (tlen >= sizeof(tlv)) {

        ND_TCHECK2(*tptr, sizeof(tlv));

        tlv = EXTRACT_16BITS(tptr);

        tlv_type = LLDP_EXTRACT_TYPE(tlv);
        tlv_len = LLDP_EXTRACT_LEN(tlv);
        hexdump = FALSE;

        tlen -= sizeof(tlv);
        tptr += sizeof(tlv);

        if (ndo->ndo_vflag) {
            ND_PRINT((ndo, "\n\t%s TLV (%u), length %u",
                   tok2str(lldp_tlv_values, "Unknown", tlv_type),
                   tlv_type, tlv_len));
        }


        if (!tlv_type || !tlv_len) {
            break;
        }

        ND_TCHECK2(*tptr, tlv_len);
        if (tlen < tlv_len) {
            goto trunc;
        }

        switch (tlv_type) {

        case 154:
            if (ndo->ndo_vflag) {
                if (tlv_len < 2) {
                    goto trunc;
                }
                subtype = *tptr;
                ND_PRINT((ndo, "\n\t  Subtype %s (%u): ",
                       tok2str(lldp_chassis_subtype_values, "Unknown", subtype),
                       subtype));

                switch (subtype) {
                case 150:
                    if (tlv_len < 1+6) {
                        goto trunc;
                    }
                    ND_PRINT((ndo, "%s", etheraddr_string(ndo, tptr + 1)));
                    break;

                case 152:
                case 151:
                case 155:
                case 153:
                case 148:
                    safeputs(ndo, tptr + 1, tlv_len - 1);
                    break;

                case 149:
                    network_addr = lldp_network_addr_print(ndo, tptr+1, tlv_len-1);
                    if (network_addr == ((void*)0)) {
                        goto trunc;
                    }
                    ND_PRINT((ndo, "%s", network_addr));
                    break;

                default:
                    hexdump = TRUE;
                    break;
                }
            }
            break;

        case 144:
            if (ndo->ndo_vflag) {
                if (tlv_len < 2) {
                    goto trunc;
                }
                subtype = *tptr;
                ND_PRINT((ndo, "\n\t  Subtype %s (%u): ",
                       tok2str(lldp_port_subtype_values, "Unknown", subtype),
                       subtype));

                switch (subtype) {
                case 140:
                    if (tlv_len < 1+6) {
                        goto trunc;
                    }
                    ND_PRINT((ndo, "%s", etheraddr_string(ndo, tptr + 1)));
                    break;

                case 142:
                case 141:
                case 146:
                case 143:
                case 138:
                    safeputs(ndo, tptr + 1, tlv_len - 1);
                    break;

                case 139:
                    network_addr = lldp_network_addr_print(ndo, tptr+1, tlv_len-1);
                    if (network_addr == ((void*)0)) {
                        goto trunc;
                    }
                    ND_PRINT((ndo, "%s", network_addr));
                    break;

                default:
                    hexdump = TRUE;
                    break;
                }
            }
            break;

        case 133:
            if (ndo->ndo_vflag) {
                if (tlv_len < 2) {
                    goto trunc;
                }
                ND_PRINT((ndo, ": TTL %us", EXTRACT_16BITS(tptr)));
            }
            break;

        case 145:
            if (ndo->ndo_vflag) {
                ND_PRINT((ndo, ": "));
                safeputs(ndo, tptr, tlv_len);
            }
            break;

        case 134:




            ND_PRINT((ndo, ": "));
            safeputs(ndo, tptr, tlv_len);
            break;

        case 135:
            if (ndo->ndo_vflag) {
                ND_PRINT((ndo, "\n\t  "));
                safeputs(ndo, tptr, tlv_len);
            }
            break;

        case 136:
            if (ndo->ndo_vflag) {






                if (tlv_len < 4) {
                    goto trunc;
                }
                cap = EXTRACT_16BITS(tptr);
                ena_cap = EXTRACT_16BITS(tptr+2);
                ND_PRINT((ndo, "\n\t  System  Capabilities [%s] (0x%04x)",
                       bittok2str(lldp_cap_values, "none", cap), cap));
                ND_PRINT((ndo, "\n\t  Enabled Capabilities [%s] (0x%04x)",
                       bittok2str(lldp_cap_values, "none", ena_cap), ena_cap));
            }
            break;

        case 147:
            if (ndo->ndo_vflag) {
                if (!lldp_mgmt_addr_tlv_print(ndo, tptr, tlv_len)) {
                    goto trunc;
                }
            }
            break;

        case 137:
            if (ndo->ndo_vflag) {
                if (tlv_len < 3) {
                    goto trunc;
                }
                oui = EXTRACT_24BITS(tptr);
                ND_PRINT((ndo, ": OUI %s (0x%06x)", tok2str(oui_values, "Unknown", oui), oui));

                switch (oui) {
                case 130:
                    hexdump = lldp_private_8021_print(ndo, tptr, tlv_len);
                    break;
                case 129:
                    hexdump = lldp_private_8023_print(ndo, tptr, tlv_len);
                    break;
  case 131:
                    hexdump = lldp_private_iana_print(ndo, tptr, tlv_len);
                    break;
                case 128:
                    hexdump = lldp_private_tia_print(ndo, tptr, tlv_len);
                    break;
                case 132:
                    hexdump = lldp_private_dcbx_print(ndo, tptr, tlv_len);
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


        if (ndo->ndo_vflag > 1 || (ndo->ndo_vflag && hexdump)) {
            print_unknown_data(ndo, tptr, "\n\t  ", tlv_len);
        }

        tlen -= tlv_len;
        tptr += tlv_len;
    }
    return;
 trunc:
    ND_PRINT((ndo, "\n\t[|LLDP]"));
}
