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
typedef  int u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int FUNC1 (int const*) ; 
 int FALSE ; 
#define  LLDP_PRIVATE_8021_SUBTYPE_APPLICATION_PRIORITY 138 
 int LLDP_PRIVATE_8021_SUBTYPE_APPLICATION_PRIORITY_MIN_LENGTH ; 
#define  LLDP_PRIVATE_8021_SUBTYPE_CDCP 137 
 int LLDP_PRIVATE_8021_SUBTYPE_CDCP_MIN_LENGTH ; 
#define  LLDP_PRIVATE_8021_SUBTYPE_CONGESTION_NOTIFICATION 136 
 int LLDP_PRIVATE_8021_SUBTYPE_CONGESTION_NOTIFICATION_LENGTH ; 
#define  LLDP_PRIVATE_8021_SUBTYPE_ETS_CONFIGURATION 135 
 int LLDP_PRIVATE_8021_SUBTYPE_ETS_CONFIGURATION_LENGTH ; 
#define  LLDP_PRIVATE_8021_SUBTYPE_ETS_RECOMMENDATION 134 
 int LLDP_PRIVATE_8021_SUBTYPE_ETS_RECOMMENDATION_LENGTH ; 
#define  LLDP_PRIVATE_8021_SUBTYPE_EVB 133 
 int LLDP_PRIVATE_8021_SUBTYPE_EVB_LENGTH ; 
#define  LLDP_PRIVATE_8021_SUBTYPE_PFC_CONFIGURATION 132 
 int LLDP_PRIVATE_8021_SUBTYPE_PFC_CONFIGURATION_LENGTH ; 
#define  LLDP_PRIVATE_8021_SUBTYPE_PORT_VLAN_ID 131 
#define  LLDP_PRIVATE_8021_SUBTYPE_PROTOCOL_IDENTITY 130 
#define  LLDP_PRIVATE_8021_SUBTYPE_PROTOCOL_VLAN_ID 129 
#define  LLDP_PRIVATE_8021_SUBTYPE_VLAN_NAME 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int NO_OF_BITS ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int const) ; 
 int /*<<< orphan*/  lldp_8021_port_protocol_id_values ; 
 int /*<<< orphan*/  lldp_8021_subtype_values ; 
 int /*<<< orphan*/  lldp_evb_mode_values ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC9(netdissect_options *ndo,
                        const u_char *tptr, u_int tlv_len)
{
    int subtype, hexdump = FALSE;
    u_int sublen;
    u_int tval;
    u_int i;

    if (tlv_len < 4) {
        return hexdump;
    }
    subtype = *(tptr+3);

    FUNC2((ndo, "\n\t  %s Subtype (%u)",
           FUNC8(lldp_8021_subtype_values, "unknown", subtype),
           subtype));

    switch (subtype) {
    case LLDP_PRIVATE_8021_SUBTYPE_PORT_VLAN_ID:
        if (tlv_len < 6) {
            return hexdump;
        }
        FUNC2((ndo, "\n\t    port vlan id (PVID): %u",
               FUNC0(tptr + 4)));
        break;
    case LLDP_PRIVATE_8021_SUBTYPE_PROTOCOL_VLAN_ID:
        if (tlv_len < 7) {
            return hexdump;
        }
        FUNC2((ndo, "\n\t    port and protocol vlan id (PPVID): %u, flags [%s] (0x%02x)",
               FUNC0(tptr+5),
	       FUNC3(lldp_8021_port_protocol_id_values, "none", *(tptr+4)),
	       *(tptr + 4)));
        break;
    case LLDP_PRIVATE_8021_SUBTYPE_VLAN_NAME:
        if (tlv_len < 6) {
            return hexdump;
        }
        FUNC2((ndo, "\n\t    vlan id (VID): %u", FUNC0(tptr + 4)));
        if (tlv_len < 7) {
            return hexdump;
        }
        sublen = *(tptr+6);
        if (tlv_len < 7+sublen) {
            return hexdump;
        }
        FUNC2((ndo, "\n\t    vlan name: "));
        FUNC7(ndo, tptr + 7, sublen);
        break;
    case LLDP_PRIVATE_8021_SUBTYPE_PROTOCOL_IDENTITY:
        if (tlv_len < 5) {
            return hexdump;
        }
        sublen = *(tptr+4);
        if (tlv_len < 5+sublen) {
            return hexdump;
        }
        FUNC2((ndo, "\n\t    protocol identity: "));
        FUNC7(ndo, tptr + 5, sublen);
        break;
    case LLDP_PRIVATE_8021_SUBTYPE_CONGESTION_NOTIFICATION:
        if(tlv_len<LLDP_PRIVATE_8021_SUBTYPE_CONGESTION_NOTIFICATION_LENGTH){
        	return hexdump;
        }
        tval=*(tptr+4);
        FUNC2((ndo, "\n\t    Pre-Priority CNPV Indicator"));
        FUNC2((ndo, "\n\t     Priority : 0  1  2  3  4  5  6  7"));
        FUNC2((ndo, "\n\t     Value    : "));
        for(i=0;i<NO_OF_BITS;i++)
            FUNC2((ndo, "%-2d ", (tval >> i) & 0x01));
        tval=*(tptr+5);
        FUNC2((ndo, "\n\t    Pre-Priority Ready Indicator"));
        FUNC2((ndo, "\n\t     Priority : 0  1  2  3  4  5  6  7"));
        FUNC2((ndo, "\n\t     Value    : "));
        for(i=0;i<NO_OF_BITS;i++)
            FUNC2((ndo, "%-2d ", (tval >> i) & 0x01));
        break;

    case LLDP_PRIVATE_8021_SUBTYPE_ETS_CONFIGURATION:
        if(tlv_len<LLDP_PRIVATE_8021_SUBTYPE_ETS_CONFIGURATION_LENGTH) {
            return hexdump;
        }
        tval=*(tptr+4);
        FUNC2((ndo, "\n\t    Willing:%d, CBS:%d, RES:%d, Max TCs:%d",
        	tval >> 7, (tval >> 6) & 0x02, (tval >> 3) & 0x07, tval & 0x07));

        /*Print Priority Assignment Table*/
        FUNC4(ndo, tptr + 5);

        /*Print TC Bandwidth Table*/
        FUNC5(ndo, tptr + 9);

        /* Print TSA Assignment Table */
        FUNC6(ndo, tptr + 17);

        break;

    case LLDP_PRIVATE_8021_SUBTYPE_ETS_RECOMMENDATION:
        if(tlv_len<LLDP_PRIVATE_8021_SUBTYPE_ETS_RECOMMENDATION_LENGTH) {
        	return hexdump;
        }
        FUNC2((ndo, "\n\t    RES: %d", *(tptr + 4)));
        /*Print Priority Assignment Table */
        FUNC4(ndo, tptr + 5);
        /*Print TC Bandwidth Table */
        FUNC5(ndo, tptr + 9);
        /* Print TSA Assignment Table */
        FUNC6(ndo, tptr + 17);
        break;

    case LLDP_PRIVATE_8021_SUBTYPE_PFC_CONFIGURATION:
        if(tlv_len<LLDP_PRIVATE_8021_SUBTYPE_PFC_CONFIGURATION_LENGTH) {
            return hexdump;
        }
        tval=*(tptr+4);
        FUNC2((ndo, "\n\t    Willing: %d, MBC: %d, RES: %d, PFC cap:%d ",
        	tval >> 7, (tval >> 6) & 0x01, (tval >> 4) & 0x03, (tval & 0x0f)));
        FUNC2((ndo, "\n\t    PFC Enable"));
        tval=*(tptr+5);
        FUNC2((ndo, "\n\t     Priority : 0  1  2  3  4  5  6  7"));
        FUNC2((ndo, "\n\t     Value    : "));
        for(i=0;i<NO_OF_BITS;i++)
            FUNC2((ndo, "%-2d ", (tval >> i) & 0x01));
        break;

    case LLDP_PRIVATE_8021_SUBTYPE_APPLICATION_PRIORITY:
        if(tlv_len<LLDP_PRIVATE_8021_SUBTYPE_APPLICATION_PRIORITY_MIN_LENGTH) {
            return hexdump;
        }
        FUNC2((ndo, "\n\t    RES: %d", *(tptr + 4)));
        if(tlv_len<=LLDP_PRIVATE_8021_SUBTYPE_APPLICATION_PRIORITY_MIN_LENGTH){
        	return hexdump;
        }
        /*  Length of Application Priority Table */
        sublen=tlv_len-5;
        if(sublen%3!=0){
        	return hexdump;
        }
        i=0;
        FUNC2((ndo, "\n\t    Application Priority Table"));
        while(i<sublen) {
        	tval=*(tptr+i+5);
        	FUNC2((ndo, "\n\t      Priority: %u, RES: %u, Sel: %u, Protocol ID: %u",
        		 tval >> 5, (tval >> 3) & 0x03, (tval & 0x07),
        		 FUNC0(tptr + i + 5)));
        	i=i+3;
        }
        break;
    case LLDP_PRIVATE_8021_SUBTYPE_EVB:
        if(tlv_len<LLDP_PRIVATE_8021_SUBTYPE_EVB_LENGTH){
        	return hexdump;
        }
        FUNC2((ndo, "\n\t    EVB Bridge Status"));
        tval=*(tptr+4);
        FUNC2((ndo, "\n\t      RES: %d, BGID: %d, RRCAP: %d, RRCTR: %d",
        	tval >> 3, (tval >> 2) & 0x01, (tval >> 1) & 0x01, tval & 0x01));
        FUNC2((ndo, "\n\t    EVB Station Status"));
        tval=*(tptr+5);
        FUNC2((ndo, "\n\t      RES: %d, SGID: %d, RRREQ: %d,RRSTAT: %d",
        	tval >> 4, (tval >> 3) & 0x01, (tval >> 2) & 0x01, tval & 0x03));
        tval=*(tptr+6);
        FUNC2((ndo, "\n\t    R: %d, RTE: %d, ",tval >> 5, tval & 0x1f));
        tval=*(tptr+7);
        FUNC2((ndo, "EVB Mode: %s [%d]",
        	FUNC8(lldp_evb_mode_values, "unknown", tval >> 6), tval >> 6));
        FUNC2((ndo, "\n\t    ROL: %d, RWD: %d, ", (tval >> 5) & 0x01, tval & 0x1f));
        tval=*(tptr+8);
        FUNC2((ndo, "RES: %d, ROL: %d, RKA: %d", tval >> 6, (tval >> 5) & 0x01, tval & 0x1f));
        break;

    case LLDP_PRIVATE_8021_SUBTYPE_CDCP:
        if(tlv_len<LLDP_PRIVATE_8021_SUBTYPE_CDCP_MIN_LENGTH){
        	return hexdump;
        }
        tval=*(tptr+4);
        FUNC2((ndo, "\n\t    Role: %d, RES: %d, Scomp: %d ",
        	tval >> 7, (tval >> 4) & 0x07, (tval >> 3) & 0x01));
        FUNC2((ndo, "ChnCap: %d", FUNC0(tptr + 6) & 0x0fff));
        sublen=tlv_len-8;
        if(sublen%3!=0) {
        	return hexdump;
        }
        i=0;
        while(i<sublen) {
        	tval=FUNC1(tptr+i+8);
        	FUNC2((ndo, "\n\t    SCID: %d, SVID: %d",
        		tval >> 12, tval & 0x000fff));
        	i=i+3;
        }
        break;

    default:
        hexdump = TRUE;
        break;
    }

    return hexdump;
}