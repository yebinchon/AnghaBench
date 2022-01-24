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
typedef  int u_short ;
typedef  int u_int ;
typedef  int u_char ;
struct TYPE_7__ {scalar_t__ ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 void* FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (int const*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
#define  MESSAGE_ACK 142 
#define  MESSAGE_ACK_REQ 141 
#define  MESSAGE_HELLO 140 
#define  MESSAGE_HMAC 139 
#define  MESSAGE_IHU 138 
#define  MESSAGE_MH_REQUEST 137 
#define  MESSAGE_MH_REQUEST_SRC_SPECIFIC 136 
#define  MESSAGE_NH 135 
 int MESSAGE_PAD1 ; 
#define  MESSAGE_PADN 134 
#define  MESSAGE_REQUEST 133 
#define  MESSAGE_REQUEST_SRC_SPECIFIC 132 
#define  MESSAGE_ROUTER_ID 131 
#define  MESSAGE_TSPC 130 
#define  MESSAGE_UPDATE 129 
#define  MESSAGE_UPDATE_SRC_SPECIFIC 128 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int const,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int const*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned short) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 char* FUNC9 (TYPE_1__*,int*,int) ; 
 int /*<<< orphan*/  istr ; 
 int /*<<< orphan*/  FUNC10 (int*,int*,int) ; 
 int FUNC11 (int const,int const*,int,int*) ; 
 int FUNC12 (int const,int const,int const,int const*,int*,int,int*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int const*,int const*,int) ; 
 int /*<<< orphan*/  tstr ; 

__attribute__((used)) static void
FUNC14(netdissect_options *ndo,
               const u_char *cp, u_int length)
{
    u_int i;
    u_short bodylen;
    u_char v4_prefix[16] =
        {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0xFF, 0xFF, 0, 0, 0, 0 };
    u_char v6_prefix[16] = {0};

    FUNC4(*cp, 4);
    if (length < 4)
        goto invalid;
    bodylen = FUNC0(cp + 2);
    FUNC3((ndo, " (%u)", bodylen));

    /* Process the TLVs in the body */
    i = 0;
    while(i < bodylen) {
        const u_char *message;
        u_int type, len;

        message = cp + 4 + i;

        FUNC4(*message, 1);
        if((type = message[0]) == MESSAGE_PAD1) {
            FUNC3((ndo, ndo->ndo_vflag ? "\n\tPad 1" : " pad1"));
            i += 1;
            continue;
        }

        FUNC4(*message, 2);
        FUNC2(i, 2);
        len = message[1];

        FUNC4(*message, 2 + len);
        FUNC2(i, 2 + len);

        switch(type) {
        case MESSAGE_PADN: {
            if (!ndo->ndo_vflag)
                FUNC3((ndo, " padN"));
            else
                FUNC3((ndo, "\n\tPad %d", len + 2));
        }
            break;

        case MESSAGE_ACK_REQ: {
            u_short nonce, interval;
            if (!ndo->ndo_vflag)
                FUNC3((ndo, " ack-req"));
            else {
                FUNC3((ndo, "\n\tAcknowledgment Request "));
                if(len < 6) goto invalid;
                nonce = FUNC0(message + 4);
                interval = FUNC0(message + 6);
                FUNC3((ndo, "%04x %s", nonce, FUNC7(interval)));
            }
        }
            break;

        case MESSAGE_ACK: {
            u_short nonce;
            if (!ndo->ndo_vflag)
                FUNC3((ndo, " ack"));
            else {
                FUNC3((ndo, "\n\tAcknowledgment "));
                if(len < 2) goto invalid;
                nonce = FUNC0(message + 2);
                FUNC3((ndo, "%04x", nonce));
            }
        }
            break;

        case MESSAGE_HELLO:  {
            u_short seqno, interval;
            if (!ndo->ndo_vflag)
                FUNC3((ndo, " hello"));
            else {
                FUNC3((ndo, "\n\tHello "));
                if(len < 6) goto invalid;
                seqno = FUNC0(message + 4);
                interval = FUNC0(message + 6);
                FUNC3((ndo, "seqno %u interval %s", seqno, FUNC7(interval)));
                /* Extra data. */
                if(len > 6)
                    FUNC13(ndo, message + 8, message + 2 + len, type);
            }
        }
            break;

        case MESSAGE_IHU: {
            unsigned short txcost, interval;
            if (!ndo->ndo_vflag)
                FUNC3((ndo, " ihu"));
            else {
                u_char address[16];
                int rc;
                FUNC3((ndo, "\n\tIHU "));
                if(len < 6) goto invalid;
                txcost = FUNC0(message + 4);
                interval = FUNC0(message + 6);
                rc = FUNC11(message[2], message + 8, len - 6, address);
                if(rc < 0) { FUNC3((ndo, "%s", tstr)); break; }
                FUNC3((ndo, "%s txcost %u interval %s",
                       FUNC5(ndo, address), txcost, FUNC7(interval)));
                /* Extra data. */
                if((u_int)rc < len - 6)
                    FUNC13(ndo, message + 8 + rc, message + 2 + len,
                                  type);
            }
        }
            break;

        case MESSAGE_ROUTER_ID: {
            if (!ndo->ndo_vflag)
                FUNC3((ndo, " router-id"));
            else {
                FUNC3((ndo, "\n\tRouter Id"));
                if(len < 10) goto invalid;
                FUNC3((ndo, " %s", FUNC6(message + 4)));
            }
        }
            break;

        case MESSAGE_NH: {
            if (!ndo->ndo_vflag)
                FUNC3((ndo, " nh"));
            else {
                int rc;
                u_char nh[16];
                FUNC3((ndo, "\n\tNext Hop"));
                if(len < 2) goto invalid;
                rc = FUNC11(message[2], message + 4, len - 2, nh);
                if(rc < 0) goto invalid;
                FUNC3((ndo, " %s", FUNC5(ndo, nh)));
            }
        }
            break;

        case MESSAGE_UPDATE: {
            if (!ndo->ndo_vflag) {
                FUNC3((ndo, " update"));
                if(len < 1)
                    FUNC3((ndo, "/truncated"));
                else
                    FUNC3((ndo, "%s%s%s",
                           (message[3] & 0x80) ? "/prefix": "",
                           (message[3] & 0x40) ? "/id" : "",
                           (message[3] & 0x3f) ? "/unknown" : ""));
            } else {
                u_short interval, seqno, metric;
                u_char plen;
                int rc;
                u_char prefix[16];
                FUNC3((ndo, "\n\tUpdate"));
                if(len < 10) goto invalid;
                plen = message[4] + (message[2] == 1 ? 96 : 0);
                rc = FUNC12(message[2], message[4], message[5],
                                    message + 12,
                                    message[2] == 1 ? v4_prefix : v6_prefix,
                                    len - 10, prefix);
                if(rc < 0) goto invalid;
                interval = FUNC0(message + 6);
                seqno = FUNC0(message + 8);
                metric = FUNC0(message + 10);
                FUNC3((ndo, "%s%s%s %s metric %u seqno %u interval %s",
                       (message[3] & 0x80) ? "/prefix": "",
                       (message[3] & 0x40) ? "/id" : "",
                       (message[3] & 0x3f) ? "/unknown" : "",
                       FUNC9(ndo, prefix, plen),
                       metric, seqno, FUNC8(interval)));
                if(message[3] & 0x80) {
                    if(message[2] == 1)
                        FUNC10(v4_prefix, prefix, 16);
                    else
                        FUNC10(v6_prefix, prefix, 16);
                }
                /* extra data? */
                if((u_int)rc < len - 10)
                    FUNC13(ndo, message + 12 + rc, message + 2 + len, type);
            }
        }
            break;

        case MESSAGE_REQUEST: {
            if (!ndo->ndo_vflag)
                FUNC3((ndo, " request"));
            else {
                int rc;
                u_char prefix[16], plen;
                FUNC3((ndo, "\n\tRequest "));
                if(len < 2) goto invalid;
                plen = message[3] + (message[2] == 1 ? 96 : 0);
                rc = FUNC12(message[2], message[3], 0,
                                    message + 4, NULL, len - 2, prefix);
                if(rc < 0) goto invalid;
                FUNC3((ndo, "for %s",
                       message[2] == 0 ? "any" : FUNC9(ndo, prefix, plen)));
            }
        }
            break;

        case MESSAGE_MH_REQUEST : {
            if (!ndo->ndo_vflag)
                FUNC3((ndo, " mh-request"));
            else {
                int rc;
                u_short seqno;
                u_char prefix[16], plen;
                FUNC3((ndo, "\n\tMH-Request "));
                if(len < 14) goto invalid;
                seqno = FUNC0(message + 4);
                rc = FUNC12(message[2], message[3], 0,
                                    message + 16, NULL, len - 14, prefix);
                if(rc < 0) goto invalid;
                plen = message[3] + (message[2] == 1 ? 96 : 0);
                FUNC3((ndo, "(%u hops) for %s seqno %u id %s",
                       message[6], FUNC9(ndo, prefix, plen),
                       seqno, FUNC6(message + 8)));
            }
        }
            break;
        case MESSAGE_TSPC :
            if (!ndo->ndo_vflag)
                FUNC3((ndo, " tspc"));
            else {
                FUNC3((ndo, "\n\tTS/PC "));
                if(len < 6) goto invalid;
                FUNC3((ndo, "timestamp %u packetcounter %u", FUNC1 (message + 4),
                       FUNC0(message + 2)));
            }
            break;
        case MESSAGE_HMAC : {
            if (!ndo->ndo_vflag)
                FUNC3((ndo, " hmac"));
            else {
                unsigned j;
                FUNC3((ndo, "\n\tHMAC "));
                if(len < 18) goto invalid;
                FUNC3((ndo, "key-id %u digest-%u ", FUNC0(message + 2), len - 2));
                for (j = 0; j < len - 2; j++)
                    FUNC3((ndo, "%02X", message[4 + j]));
            }
        }
            break;

        case MESSAGE_UPDATE_SRC_SPECIFIC : {
            if(!ndo->ndo_vflag) {
                FUNC3((ndo, " ss-update"));
            } else {
                u_char prefix[16], src_prefix[16];
                u_short interval, seqno, metric;
                u_char ae, plen, src_plen, omitted;
                int rc;
                int parsed_len = 10;
                FUNC3((ndo, "\n\tSS-Update"));
                if(len < 10) goto invalid;
                ae = message[2];
                src_plen = message[3];
                plen = message[4];
                omitted = message[5];
                interval = FUNC0(message + 6);
                seqno = FUNC0(message + 8);
                metric = FUNC0(message + 10);
                rc = FUNC12(ae, plen, omitted, message + 2 + parsed_len,
                                    ae == 1 ? v4_prefix : v6_prefix,
                                    len - parsed_len, prefix);
                if(rc < 0) goto invalid;
                if(ae == 1)
                    plen += 96;
                parsed_len += rc;
                rc = FUNC12(ae, src_plen, 0, message + 2 + parsed_len,
                                    NULL, len - parsed_len, src_prefix);
                if(rc < 0) goto invalid;
                if(ae == 1)
                    src_plen += 96;
                parsed_len += rc;

                FUNC3((ndo, " %s from", FUNC9(ndo, prefix, plen)));
                FUNC3((ndo, " %s metric %u seqno %u interval %s",
                          FUNC9(ndo, src_prefix, src_plen),
                          metric, seqno, FUNC8(interval)));
                /* extra data? */
                if((u_int)parsed_len < len)
                    FUNC13(ndo, message + 2 + parsed_len,
                                  message + 2 + len, type);
            }
        }
            break;

        case MESSAGE_REQUEST_SRC_SPECIFIC : {
            if(!ndo->ndo_vflag)
                FUNC3((ndo, " ss-request"));
            else {
                int rc, parsed_len = 3;
                u_char ae, plen, src_plen, prefix[16], src_prefix[16];
                FUNC3((ndo, "\n\tSS-Request "));
                if(len < 3) goto invalid;
                ae = message[2];
                plen = message[3];
                src_plen = message[4];
                rc = FUNC12(ae, plen, 0, message + 2 + parsed_len,
                                    NULL, len - parsed_len, prefix);
                if(rc < 0) goto invalid;
                if(ae == 1)
                    plen += 96;
                parsed_len += rc;
                rc = FUNC12(ae, src_plen, 0, message + 2 + parsed_len,
                                    NULL, len - parsed_len, src_prefix);
                if(rc < 0) goto invalid;
                if(ae == 1)
                    src_plen += 96;
                parsed_len += rc;
                if(ae == 0) {
                    FUNC3((ndo, "for any"));
                } else {
                    FUNC3((ndo, "for (%s, ", FUNC9(ndo, prefix, plen)));
                    FUNC3((ndo, "%s)", FUNC9(ndo, src_prefix, src_plen)));
                }
            }
        }
            break;

        case MESSAGE_MH_REQUEST_SRC_SPECIFIC : {
            if(!ndo->ndo_vflag)
                FUNC3((ndo, " ss-mh-request"));
            else {
                int rc, parsed_len = 14;
                u_short seqno;
                u_char ae, plen, src_plen, prefix[16], src_prefix[16], hopc;
                const u_char *router_id = NULL;
                FUNC3((ndo, "\n\tSS-MH-Request "));
                if(len < 14) goto invalid;
                ae = message[2];
                plen = message[3];
                seqno = FUNC0(message + 4);
                hopc = message[6];
                src_plen = message[7];
                router_id = message + 8;
                rc = FUNC12(ae, plen, 0, message + 2 + parsed_len,
                                    NULL, len - parsed_len, prefix);
                if(rc < 0) goto invalid;
                if(ae == 1)
                    plen += 96;
                parsed_len += rc;
                rc = FUNC12(ae, src_plen, 0, message + 2 + parsed_len,
                                    NULL, len - parsed_len, src_prefix);
                if(rc < 0) goto invalid;
                if(ae == 1)
                    src_plen += 96;
                FUNC3((ndo, "(%u hops) for (%s, ",
                          hopc, FUNC9(ndo, prefix, plen)));
                FUNC3((ndo, "%s) seqno %u id %s",
                          FUNC9(ndo, src_prefix, src_plen),
                          seqno, FUNC6(router_id)));
            }
        }
            break;

        default:
            if (!ndo->ndo_vflag)
                FUNC3((ndo, " unknown"));
            else
                FUNC3((ndo, "\n\tUnknown message type %d", type));
        }
        i += len + 2;
    }
    return;

 trunc:
    FUNC3((ndo, " %s", tstr));
    return;

 invalid:
    FUNC3((ndo, "%s", istr));
    return;
}