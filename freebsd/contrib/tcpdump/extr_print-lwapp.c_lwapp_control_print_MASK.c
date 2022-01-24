#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct lwapp_transport_header {int version; int /*<<< orphan*/  frag_id; int /*<<< orphan*/  length; } ;
struct lwapp_control_header {int msg_type; int /*<<< orphan*/  session_id; int /*<<< orphan*/  seq_num; int /*<<< orphan*/  len; } ;
struct TYPE_5__ {int ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
#define  LWAPP_MSGTYPE_CHANGE_STATE_EVENT_REQUEST 158 
#define  LWAPP_MSGTYPE_CHANGE_STATE_EVENT_RESPONSE 157 
#define  LWAPP_MSGTYPE_CLEAR_CONFIG_INDICATION 156 
#define  LWAPP_MSGTYPE_CONFIGURE_REQUEST 155 
#define  LWAPP_MSGTYPE_CONFIGURE_RESPONSE 154 
#define  LWAPP_MSGTYPE_CONF_UPDATE_REQUEST 153 
#define  LWAPP_MSGTYPE_CONF_UPDATE_RESPONSE 152 
#define  LWAPP_MSGTYPE_DATA_TRANSFER_REQUEST 151 
#define  LWAPP_MSGTYPE_DATA_TRANSFER_RESPONSE 150 
#define  LWAPP_MSGTYPE_DISCOVERY_REQUEST 149 
#define  LWAPP_MSGTYPE_DISCOVERY_RESPONSE 148 
#define  LWAPP_MSGTYPE_ECHO_REQUEST 147 
#define  LWAPP_MSGTYPE_ECHO_RESPONSE 146 
#define  LWAPP_MSGTYPE_IMAGE_DATA_REQUEST 145 
#define  LWAPP_MSGTYPE_IMAGE_DATA_RESPONSE 144 
#define  LWAPP_MSGTYPE_JOIN_ACK 143 
#define  LWAPP_MSGTYPE_JOIN_CONFIRM 142 
#define  LWAPP_MSGTYPE_JOIN_REQUEST 141 
#define  LWAPP_MSGTYPE_JOIN_RESPONSE 140 
#define  LWAPP_MSGTYPE_KEY_UPDATE_REQUEST 139 
#define  LWAPP_MSGTYPE_KEY_UPDATE_RESPONSE 138 
#define  LWAPP_MSGTYPE_MOBILE_CONFIG_REQUEST 137 
#define  LWAPP_MSGTYPE_MOBILE_CONFIG_RESPONSE 136 
#define  LWAPP_MSGTYPE_PRIMARY_DISCOVERY_REQUEST 135 
#define  LWAPP_MSGTYPE_PRIMARY_DISCOVERY_RESPONSE 134 
#define  LWAPP_MSGTYPE_RESET_REQUEST 133 
#define  LWAPP_MSGTYPE_RESET_RESPONSE 132 
#define  LWAPP_MSGTYPE_WLAN_CONFIG_REQUEST 131 
#define  LWAPP_MSGTYPE_WLAN_CONFIG_RESPONSE 130 
#define  LWAPP_MSGTYPE_WTP_EVENT_REQUEST 129 
#define  LWAPP_MSGTYPE_WTP_EVENT_RESPONSE 128 
 scalar_t__ LWAPP_VERSION ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct lwapp_transport_header const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  lwapp_header_bits_values ; 
 int /*<<< orphan*/  lwapp_msg_type_values ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int) ; 

void
FUNC11(netdissect_options *ndo,
                    const u_char *pptr, u_int len, int has_ap_ident)
{
    const struct lwapp_transport_header *lwapp_trans_header;
    const struct lwapp_control_header *lwapp_control_header;
    const u_char *tptr;
    int  tlen;
    int  msg_tlen;

    tptr=pptr;

    if (has_ap_ident) {
        /* check if enough bytes for AP identity */
        FUNC7(*tptr, 6);
        lwapp_trans_header = (const struct lwapp_transport_header *)(pptr+6);
    } else {
        lwapp_trans_header = (const struct lwapp_transport_header *)pptr;
    }
    FUNC6(*lwapp_trans_header);

    /*
     * Sanity checking of the header.
     */
    if (FUNC4(lwapp_trans_header->version) != LWAPP_VERSION) {
	FUNC5((ndo, "LWAPP version %u packet not supported",
               FUNC4(lwapp_trans_header->version)));
	return;
    }

    /* non-verbose */
    if (ndo->ndo_vflag < 1) {
        FUNC5((ndo, "LWAPPv%u, %s frame, Flags [%s], length %u",
               FUNC4(lwapp_trans_header->version),
               FUNC2(lwapp_trans_header->version) ? "Control" : "Data",
               FUNC8(lwapp_header_bits_values,"none",(lwapp_trans_header->version)&0x07),
               len));
        return;
    }

    /* ok they seem to want to know everything - lets fully decode it */
    tlen=FUNC0(lwapp_trans_header->length);

    FUNC5((ndo, "LWAPPv%u, %s frame, Radio-id %u, Flags [%s], Frag-id %u, length %u",
           FUNC4(lwapp_trans_header->version),
           FUNC2(lwapp_trans_header->version) ? "Control" : "Data",
           FUNC3(lwapp_trans_header->version),
           FUNC8(lwapp_header_bits_values,"none",(lwapp_trans_header->version)&0x07),
	   lwapp_trans_header->frag_id,
	   tlen));

    if (has_ap_ident) {
        FUNC5((ndo, "\n\tAP identity: %s", FUNC9(ndo, tptr)));
        tptr+=sizeof(const struct lwapp_transport_header)+6;
    } else {
        tptr+=sizeof(const struct lwapp_transport_header);
    }

    while(tlen>0) {

        /* did we capture enough for fully decoding the object header ? */
        FUNC7(*tptr, sizeof(struct lwapp_control_header));

        lwapp_control_header = (const struct lwapp_control_header *)tptr;
	msg_tlen = FUNC0(lwapp_control_header->len);

	/* print message header */
        FUNC5((ndo, "\n\t  Msg type: %s (%u), Seqnum: %u, Msg len: %d, Session: 0x%08x",
               FUNC10(lwapp_msg_type_values,"Unknown",lwapp_control_header->msg_type),
               lwapp_control_header->msg_type,
               lwapp_control_header->seq_num,
               msg_tlen,
               FUNC1(lwapp_control_header->session_id)));

        /* did we capture enough for fully decoding the message */
        FUNC7(*tptr, msg_tlen);

	/* XXX - Decode sub messages for each message */
        switch(lwapp_control_header->msg_type) {
        case LWAPP_MSGTYPE_DISCOVERY_REQUEST:
        case LWAPP_MSGTYPE_DISCOVERY_RESPONSE:
        case LWAPP_MSGTYPE_JOIN_REQUEST:
        case LWAPP_MSGTYPE_JOIN_RESPONSE:
        case LWAPP_MSGTYPE_JOIN_ACK:
        case LWAPP_MSGTYPE_JOIN_CONFIRM:
        case LWAPP_MSGTYPE_CONFIGURE_REQUEST:
        case LWAPP_MSGTYPE_CONFIGURE_RESPONSE:
        case LWAPP_MSGTYPE_CONF_UPDATE_REQUEST:
        case LWAPP_MSGTYPE_CONF_UPDATE_RESPONSE:
        case LWAPP_MSGTYPE_WTP_EVENT_REQUEST:
        case LWAPP_MSGTYPE_WTP_EVENT_RESPONSE:
        case LWAPP_MSGTYPE_CHANGE_STATE_EVENT_REQUEST:
        case LWAPP_MSGTYPE_CHANGE_STATE_EVENT_RESPONSE:
        case LWAPP_MSGTYPE_ECHO_REQUEST:
        case LWAPP_MSGTYPE_ECHO_RESPONSE:
        case LWAPP_MSGTYPE_IMAGE_DATA_REQUEST:
        case LWAPP_MSGTYPE_IMAGE_DATA_RESPONSE:
        case LWAPP_MSGTYPE_RESET_REQUEST:
        case LWAPP_MSGTYPE_RESET_RESPONSE:
        case LWAPP_MSGTYPE_KEY_UPDATE_REQUEST:
        case LWAPP_MSGTYPE_KEY_UPDATE_RESPONSE:
        case LWAPP_MSGTYPE_PRIMARY_DISCOVERY_REQUEST:
        case LWAPP_MSGTYPE_PRIMARY_DISCOVERY_RESPONSE:
        case LWAPP_MSGTYPE_DATA_TRANSFER_REQUEST:
        case LWAPP_MSGTYPE_DATA_TRANSFER_RESPONSE:
        case LWAPP_MSGTYPE_CLEAR_CONFIG_INDICATION:
        case LWAPP_MSGTYPE_WLAN_CONFIG_REQUEST:
        case LWAPP_MSGTYPE_WLAN_CONFIG_RESPONSE:
        case LWAPP_MSGTYPE_MOBILE_CONFIG_REQUEST:
        case LWAPP_MSGTYPE_MOBILE_CONFIG_RESPONSE:
        default:
            break;
        }

        tptr += sizeof(struct lwapp_control_header) + msg_tlen;
        tlen -= sizeof(struct lwapp_control_header) + msg_tlen;
    }
    return;

 trunc:
    FUNC5((ndo, "\n\t\t packet exceeded snapshot"));
}