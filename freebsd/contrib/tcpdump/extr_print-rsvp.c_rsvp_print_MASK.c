#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u_short ;
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct rsvp_common_header {int msg_type; int /*<<< orphan*/  checksum; int /*<<< orphan*/  ttl; int /*<<< orphan*/  version_flags; int /*<<< orphan*/  length; } ;
struct TYPE_6__ {int ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct rsvp_common_header const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
#define  RSVP_MSGTYPE_ACK 139 
#define  RSVP_MSGTYPE_BUNDLE 138 
#define  RSVP_MSGTYPE_HELLO 137 
#define  RSVP_MSGTYPE_HELLO_OLD 136 
#define  RSVP_MSGTYPE_PATH 135 
#define  RSVP_MSGTYPE_PATHERR 134 
#define  RSVP_MSGTYPE_PATHTEAR 133 
#define  RSVP_MSGTYPE_RESV 132 
#define  RSVP_MSGTYPE_RESVCONF 131 
#define  RSVP_MSGTYPE_RESVERR 130 
#define  RSVP_MSGTYPE_RESVTEAR 129 
#define  RSVP_MSGTYPE_SREFRESH 128 
 scalar_t__ RSVP_VERSION ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/  const*,char*,int) ; 
 int /*<<< orphan*/  rsvp_header_flag_values ; 
 int /*<<< orphan*/  rsvp_msg_type_values ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*,char*,int,struct rsvp_common_header const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  tstr ; 

void
FUNC9(netdissect_options *ndo,
           register const u_char *pptr, register u_int len)
{
    const struct rsvp_common_header *rsvp_com_header;
    const u_char *tptr;
    u_short plen, tlen;

    tptr=pptr;

    rsvp_com_header = (const struct rsvp_common_header *)pptr;
    FUNC2(*rsvp_com_header);

    /*
     * Sanity checking of the header.
     */
    if (FUNC4(rsvp_com_header->version_flags) != RSVP_VERSION) {
	FUNC1((ndo, "ERROR: RSVP version %u packet not supported",
               FUNC4(rsvp_com_header->version_flags)));
	return;
    }

    /* in non-verbose mode just lets print the basic Message Type*/
    if (ndo->ndo_vflag < 1) {
        FUNC1((ndo, "RSVPv%u %s Message, length: %u",
               FUNC4(rsvp_com_header->version_flags),
               FUNC8(rsvp_msg_type_values, "unknown (%u)",rsvp_com_header->msg_type),
               len));
        return;
    }

    /* ok they seem to want to know everything - lets fully decode it */

    plen = tlen = FUNC0(rsvp_com_header->length);

    FUNC1((ndo, "\n\tRSVPv%u %s Message (%u), Flags: [%s], length: %u, ttl: %u, checksum: 0x%04x",
           FUNC4(rsvp_com_header->version_flags),
           FUNC8(rsvp_msg_type_values, "unknown, type: %u",rsvp_com_header->msg_type),
           rsvp_com_header->msg_type,
           FUNC5(rsvp_header_flag_values,"none",FUNC3(rsvp_com_header->version_flags)),
           tlen,
           rsvp_com_header->ttl,
           FUNC0(rsvp_com_header->checksum)));

    if (tlen < sizeof(const struct rsvp_common_header)) {
        FUNC1((ndo, "ERROR: common header too short %u < %lu", tlen,
               (unsigned long)sizeof(const struct rsvp_common_header)));
        return;
    }

    tptr+=sizeof(const struct rsvp_common_header);
    tlen-=sizeof(const struct rsvp_common_header);

    switch(rsvp_com_header->msg_type) {

    case RSVP_MSGTYPE_BUNDLE:
        /*
         * Process each submessage in the bundle message.
         * Bundle messages may not contain bundle submessages, so we don't
         * need to handle bundle submessages specially.
         */
        while(tlen > 0) {
            const u_char *subpptr=tptr, *subtptr;
            u_short subplen, subtlen;

            subtptr=subpptr;

            rsvp_com_header = (const struct rsvp_common_header *)subpptr;
            FUNC2(*rsvp_com_header);

            /*
             * Sanity checking of the header.
             */
            if (FUNC4(rsvp_com_header->version_flags) != RSVP_VERSION) {
                FUNC1((ndo, "ERROR: RSVP version %u packet not supported",
                       FUNC4(rsvp_com_header->version_flags)));
                return;
            }

            subplen = subtlen = FUNC0(rsvp_com_header->length);

            FUNC1((ndo, "\n\t  RSVPv%u %s Message (%u), Flags: [%s], length: %u, ttl: %u, checksum: 0x%04x",
                   FUNC4(rsvp_com_header->version_flags),
                   FUNC8(rsvp_msg_type_values, "unknown, type: %u",rsvp_com_header->msg_type),
                   rsvp_com_header->msg_type,
                   FUNC5(rsvp_header_flag_values,"none",FUNC3(rsvp_com_header->version_flags)),
                   subtlen,
                   rsvp_com_header->ttl,
                   FUNC0(rsvp_com_header->checksum)));

            if (subtlen < sizeof(const struct rsvp_common_header)) {
                FUNC1((ndo, "ERROR: common header too short %u < %lu", subtlen,
                       (unsigned long)sizeof(const struct rsvp_common_header)));
                return;
            }

            if (tlen < subtlen) {
                FUNC1((ndo, "ERROR: common header too large %u > %u", subtlen,
                       tlen));
                return;
            }

            subtptr+=sizeof(const struct rsvp_common_header);
            subtlen-=sizeof(const struct rsvp_common_header);

            /*
             * Print all objects in the submessage.
             */
            if (FUNC7(ndo, subpptr, subplen, subtptr, "\n\t    ", subtlen, rsvp_com_header) == -1)
                return;

            tptr+=subtlen+sizeof(const struct rsvp_common_header);
            tlen-=subtlen+sizeof(const struct rsvp_common_header);
        }

        break;

    case RSVP_MSGTYPE_PATH:
    case RSVP_MSGTYPE_RESV:
    case RSVP_MSGTYPE_PATHERR:
    case RSVP_MSGTYPE_RESVERR:
    case RSVP_MSGTYPE_PATHTEAR:
    case RSVP_MSGTYPE_RESVTEAR:
    case RSVP_MSGTYPE_RESVCONF:
    case RSVP_MSGTYPE_HELLO_OLD:
    case RSVP_MSGTYPE_HELLO:
    case RSVP_MSGTYPE_ACK:
    case RSVP_MSGTYPE_SREFRESH:
        /*
         * Print all objects in the message.
         */
        if (FUNC7(ndo, pptr, plen, tptr, "\n\t  ", tlen, rsvp_com_header) == -1)
            return;
        break;

    default:
        FUNC6(ndo, tptr, "\n\t    ", tlen);
        break;
    }

    return;
trunc:
    FUNC1((ndo, "\n\t\t"));
    FUNC1((ndo, "%s", tstr));
}