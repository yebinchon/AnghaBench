#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint16_t ;
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct olsr_tc {int /*<<< orphan*/  const* ans_seq; } ;
struct olsr_msg6 {int msg_type; int /*<<< orphan*/  const* msg_seq; int /*<<< orphan*/  vtime; int /*<<< orphan*/  hopcount; int /*<<< orphan*/  ttl; int /*<<< orphan*/  const* originator; int /*<<< orphan*/  const* msg_len; } ;
struct olsr_msg4 {int msg_type; int /*<<< orphan*/  const* msg_seq; int /*<<< orphan*/  vtime; int /*<<< orphan*/  hopcount; int /*<<< orphan*/  ttl; int /*<<< orphan*/  const* originator; int /*<<< orphan*/  const* msg_len; } ;
struct olsr_hna6 {int /*<<< orphan*/  mask; int /*<<< orphan*/  const* network; } ;
struct olsr_hna4 {int* mask; int /*<<< orphan*/  const* network; } ;
struct olsr_hello_link {int /*<<< orphan*/  link_code; int /*<<< orphan*/  const* len; } ;
struct olsr_hello {int /*<<< orphan*/  will; int /*<<< orphan*/  htime; } ;
struct olsr_common {int /*<<< orphan*/  const* packet_seq; int /*<<< orphan*/  const* packet_len; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;
struct TYPE_11__ {int ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 size_t GW_HNA_DOWNLINK ; 
 size_t GW_HNA_FLAGS ; 
 int GW_HNA_FLAG_IPV4 ; 
 int GW_HNA_FLAG_IPV4_NAT ; 
 int GW_HNA_FLAG_IPV6 ; 
 int GW_HNA_FLAG_IPV6PREFIX ; 
 int GW_HNA_FLAG_LINKSPEED ; 
 size_t GW_HNA_PAD ; 
 size_t GW_HNA_UPLINK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
#define  OLSR_HELLO_LQ_MSG 135 
#define  OLSR_HELLO_MSG 134 
#define  OLSR_HNA_MSG 133 
#define  OLSR_MID_MSG 132 
#define  OLSR_NAMESERVICE_MSG 131 
#define  OLSR_POWERINFO_MSG 130 
#define  OLSR_TC_LQ_MSG 129 
#define  OLSR_TC_MSG 128 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int,int) ; 
 int /*<<< orphan*/  olsr_link_type_values ; 
 int /*<<< orphan*/  olsr_msg_values ; 
 int /*<<< orphan*/  olsr_neighbor_type_values ; 
 int FUNC14 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int FUNC15 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int FUNC16 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int /*<<< orphan*/  const*,char*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,int) ; 

void
FUNC19(netdissect_options *ndo,
           const u_char *pptr, u_int length, int is_ipv6)
{
    union {
        const struct olsr_common *common;
        const struct olsr_msg4 *msg4;
        const struct olsr_msg6 *msg6;
        const struct olsr_hello *hello;
        const struct olsr_hello_link *hello_link;
        const struct olsr_tc *tc;
        const struct olsr_hna4 *hna;
    } ptr;

    u_int msg_type, msg_len, msg_tlen, hello_len;
    uint16_t name_entry_type, name_entry_len;
    u_int name_entry_padding;
    uint8_t link_type, neighbor_type;
    const u_char *tptr, *msg_data;

    tptr = pptr;

    if (length < sizeof(struct olsr_common)) {
        goto trunc;
    }

    FUNC4(*tptr, sizeof(struct olsr_common));

    ptr.common = (const struct olsr_common *)tptr;
    length = FUNC13(length, FUNC0(ptr.common->packet_len));

    FUNC3((ndo, "OLSRv%i, seq 0x%04x, length %u",
            (is_ipv6 == 0) ? 4 : 6,
            FUNC0(ptr.common->packet_seq),
            length));

    tptr += sizeof(struct olsr_common);

    /*
     * In non-verbose mode, just print version.
     */
    if (ndo->ndo_vflag < 1) {
        return;
    }

    while (tptr < (pptr+length)) {
        union
        {
            const struct olsr_msg4 *v4;
            const struct olsr_msg6 *v6;
        } msgptr;
        int msg_len_valid = 0;

        if (is_ipv6)
        {
            FUNC4(*tptr, sizeof(struct olsr_msg6));
            msgptr.v6 = (const struct olsr_msg6 *) tptr;
            msg_type = msgptr.v6->msg_type;
            msg_len = FUNC0(msgptr.v6->msg_len);
            if ((msg_len >= sizeof (struct olsr_msg6))
                    && (msg_len <= length))
                msg_len_valid = 1;

            /* infinite loop check */
            if (msg_type == 0 || msg_len == 0) {
                return;
            }

            FUNC3((ndo, "\n\t%s Message (%#04x), originator %s, ttl %u, hop %u"
                    "\n\t  vtime %.3fs, msg-seq 0x%04x, length %u%s",
                    FUNC18(olsr_msg_values, "Unknown", msg_type),
                    msg_type, FUNC9(ndo, msgptr.v6->originator),
                    msgptr.v6->ttl,
                    msgptr.v6->hopcount,
                    FUNC2(msgptr.v6->vtime),
                    FUNC0(msgptr.v6->msg_seq),
                    msg_len, (msg_len_valid == 0) ? " (invalid)" : ""));
            if (!msg_len_valid) {
                return;
            }

            msg_tlen = msg_len - sizeof(struct olsr_msg6);
            msg_data = tptr + sizeof(struct olsr_msg6);
        }
        else /* (!is_ipv6) */
        {
            FUNC4(*tptr, sizeof(struct olsr_msg4));
            msgptr.v4 = (const struct olsr_msg4 *) tptr;
            msg_type = msgptr.v4->msg_type;
            msg_len = FUNC0(msgptr.v4->msg_len);
            if ((msg_len >= sizeof (struct olsr_msg4))
                    && (msg_len <= length))
                msg_len_valid = 1;

            /* infinite loop check */
            if (msg_type == 0 || msg_len == 0) {
                return;
            }

            FUNC3((ndo, "\n\t%s Message (%#04x), originator %s, ttl %u, hop %u"
                    "\n\t  vtime %.3fs, msg-seq 0x%04x, length %u%s",
                    FUNC18(olsr_msg_values, "Unknown", msg_type),
                    msg_type, FUNC10(ndo, msgptr.v4->originator),
                    msgptr.v4->ttl,
                    msgptr.v4->hopcount,
                    FUNC2(msgptr.v4->vtime),
                    FUNC0(msgptr.v4->msg_seq),
                    msg_len, (msg_len_valid == 0) ? " (invalid)" : ""));
            if (!msg_len_valid) {
                return;
            }

            msg_tlen = msg_len - sizeof(struct olsr_msg4);
            msg_data = tptr + sizeof(struct olsr_msg4);
        }

        switch (msg_type) {
        case OLSR_HELLO_MSG:
        case OLSR_HELLO_LQ_MSG:
            if (msg_tlen < sizeof(struct olsr_hello))
                goto trunc;
            FUNC4(*msg_data, sizeof(struct olsr_hello));

            ptr.hello = (const struct olsr_hello *)msg_data;
            FUNC3((ndo, "\n\t  hello-time %.3fs, MPR willingness %u",
                   FUNC2(ptr.hello->htime), ptr.hello->will));
            msg_data += sizeof(struct olsr_hello);
            msg_tlen -= sizeof(struct olsr_hello);

            while (msg_tlen >= sizeof(struct olsr_hello_link)) {
                int hello_len_valid = 0;

                /*
                 * link-type.
                 */
                FUNC4(*msg_data, sizeof(struct olsr_hello_link));

                ptr.hello_link = (const struct olsr_hello_link *)msg_data;

                hello_len = FUNC0(ptr.hello_link->len);
                link_type = FUNC5(ptr.hello_link->link_code);
                neighbor_type = FUNC6(ptr.hello_link->link_code);

                if ((hello_len <= msg_tlen)
                        && (hello_len >= sizeof(struct olsr_hello_link)))
                    hello_len_valid = 1;

                FUNC3((ndo, "\n\t    link-type %s, neighbor-type %s, len %u%s",
                       FUNC18(olsr_link_type_values, "Unknown", link_type),
                       FUNC18(olsr_neighbor_type_values, "Unknown", neighbor_type),
                       hello_len,
                       (hello_len_valid == 0) ? " (invalid)" : ""));

                if (hello_len_valid == 0)
                    break;

                msg_data += sizeof(struct olsr_hello_link);
                msg_tlen -= sizeof(struct olsr_hello_link);
                hello_len -= sizeof(struct olsr_hello_link);

                FUNC4(*msg_data, hello_len);
                if (msg_type == OLSR_HELLO_MSG) {
                    if (FUNC16(ndo, msg_data, hello_len) == -1)
                        goto trunc;
                } else {
                    if (is_ipv6) {
                        if (FUNC15(ndo, msg_data, hello_len) == -1)
                            goto trunc;
                    } else {
                        if (FUNC14(ndo, msg_data, hello_len) == -1)
                            goto trunc;
                    }
                }

                msg_data += hello_len;
                msg_tlen -= hello_len;
            }
            break;

        case OLSR_TC_MSG:
        case OLSR_TC_LQ_MSG:
            if (msg_tlen < sizeof(struct olsr_tc))
                goto trunc;
            FUNC4(*msg_data, sizeof(struct olsr_tc));

            ptr.tc = (const struct olsr_tc *)msg_data;
            FUNC3((ndo, "\n\t    advertised neighbor seq 0x%04x",
                   FUNC0(ptr.tc->ans_seq)));
            msg_data += sizeof(struct olsr_tc);
            msg_tlen -= sizeof(struct olsr_tc);

            if (msg_type == OLSR_TC_MSG) {
                if (FUNC16(ndo, msg_data, msg_tlen) == -1)
                    goto trunc;
            } else {
                if (is_ipv6) {
                    if (FUNC15(ndo, msg_data, msg_tlen) == -1)
                        goto trunc;
                } else {
                    if (FUNC14(ndo, msg_data, msg_tlen) == -1)
                        goto trunc;
                }
            }
            break;

        case OLSR_MID_MSG:
        {
            size_t addr_size = sizeof(struct in_addr);

            if (is_ipv6)
                addr_size = sizeof(struct in6_addr);

            while (msg_tlen >= addr_size) {
                FUNC4(*msg_data, addr_size);
                FUNC3((ndo, "\n\t  interface address %s",
                        is_ipv6 ? FUNC9(ndo, msg_data) :
                        FUNC10(ndo, msg_data)));

                msg_data += addr_size;
                msg_tlen -= addr_size;
            }
            break;
        }

        case OLSR_HNA_MSG:
            if (is_ipv6)
            {
                int i = 0;

                FUNC3((ndo, "\n\t  Advertised networks (total %u)",
                        (unsigned int) (msg_tlen / sizeof(struct olsr_hna6))));

                while (msg_tlen >= sizeof(struct olsr_hna6)) {
                    const struct olsr_hna6 *hna6;

                    FUNC4(*msg_data, sizeof(struct olsr_hna6));

                    hna6 = (const struct olsr_hna6 *)msg_data;

                    FUNC3((ndo, "\n\t    #%i: %s/%u",
                            i, FUNC9(ndo, hna6->network),
                            FUNC12 (hna6->mask)));

                    msg_data += sizeof(struct olsr_hna6);
                    msg_tlen -= sizeof(struct olsr_hna6);
                }
            }
            else
            {
                int col = 0;

                FUNC3((ndo, "\n\t  Advertised networks (total %u)",
                        (unsigned int) (msg_tlen / sizeof(struct olsr_hna4))));

                while (msg_tlen >= sizeof(struct olsr_hna4)) {
                    FUNC4(*msg_data, sizeof(struct olsr_hna4));

                    ptr.hna = (const struct olsr_hna4 *)msg_data;

                    /* print 4 prefixes per line */
                    if (!ptr.hna->network[0] && !ptr.hna->network[1] &&
                        !ptr.hna->network[2] && !ptr.hna->network[3] &&
                        !ptr.hna->mask[GW_HNA_PAD] &&
                        ptr.hna->mask[GW_HNA_FLAGS]) {
                            /* smart gateway */
                            FUNC3((ndo, "%sSmart-Gateway:%s%s%s%s%s %u/%u",
                                col == 0 ? "\n\t    " : ", ", /* indent */
                                /* sgw */
                                /* LINKSPEED */
                                (ptr.hna->mask[GW_HNA_FLAGS] &
                                 GW_HNA_FLAG_LINKSPEED) ? " LINKSPEED" : "",
                                /* IPV4 */
                                (ptr.hna->mask[GW_HNA_FLAGS] &
                                 GW_HNA_FLAG_IPV4) ? " IPV4" : "",
                                /* IPV4-NAT */
                                (ptr.hna->mask[GW_HNA_FLAGS] &
                                 GW_HNA_FLAG_IPV4_NAT) ? " IPV4-NAT" : "",
                                /* IPV6 */
                                (ptr.hna->mask[GW_HNA_FLAGS] &
                                 GW_HNA_FLAG_IPV6) ? " IPV6" : "",
                                /* IPv6PREFIX */
                                (ptr.hna->mask[GW_HNA_FLAGS] &
                                 GW_HNA_FLAG_IPV6PREFIX) ? " IPv6-PREFIX" : "",
                                /* uplink */
                                (ptr.hna->mask[GW_HNA_FLAGS] &
                                 GW_HNA_FLAG_LINKSPEED) ?
                                 FUNC7(ptr.hna->mask[GW_HNA_UPLINK]) : 0,
                                /* downlink */
                                (ptr.hna->mask[GW_HNA_FLAGS] &
                                 GW_HNA_FLAG_LINKSPEED) ?
                                 FUNC7(ptr.hna->mask[GW_HNA_DOWNLINK]) : 0
                                ));
                    } else {
                        /* normal route */
                        FUNC3((ndo, "%s%s/%u",
                                col == 0 ? "\n\t    " : ", ",
                                FUNC10(ndo, ptr.hna->network),
                                FUNC11(FUNC1(ptr.hna->mask))));
                    }

                    msg_data += sizeof(struct olsr_hna4);
                    msg_tlen -= sizeof(struct olsr_hna4);

                    col = (col + 1) % 4;
                }
            }
            break;

        case OLSR_NAMESERVICE_MSG:
        {
            u_int name_entries;
            u_int addr_size;
            int name_entries_valid;
            u_int i;

            if (msg_tlen < 4)
                goto trunc;
            FUNC4(*msg_data, 4);

            name_entries = FUNC0(msg_data+2);
            addr_size = 4;
            if (is_ipv6)
                addr_size = 16;

            name_entries_valid = 0;
            if ((name_entries > 0)
                    && ((name_entries * (4 + addr_size)) <= msg_tlen))
                name_entries_valid = 1;

            FUNC3((ndo, "\n\t  Version %u, Entries %u%s",
                   FUNC0(msg_data),
                   name_entries, (name_entries_valid == 0) ? " (invalid)" : ""));

            if (name_entries_valid == 0)
                break;

            msg_data += 4;
            msg_tlen -= 4;

            for (i = 0; i < name_entries; i++) {
                int name_entry_len_valid = 0;

                if (msg_tlen < 4)
                    break;
                FUNC4(*msg_data, 4);

                name_entry_type = FUNC0(msg_data);
                name_entry_len = FUNC0(msg_data+2);

                msg_data += 4;
                msg_tlen -= 4;

                if ((name_entry_len > 0) && ((addr_size + name_entry_len) <= msg_tlen))
                    name_entry_len_valid = 1;

                FUNC3((ndo, "\n\t    #%u: type %#06x, length %u%s",
                        (unsigned int) i, name_entry_type,
                        name_entry_len, (name_entry_len_valid == 0) ? " (invalid)" : ""));

                if (name_entry_len_valid == 0)
                    break;

                /* 32-bit alignment */
                name_entry_padding = 0;
                if (name_entry_len%4 != 0)
                    name_entry_padding = 4-(name_entry_len%4);

                if (msg_tlen < addr_size + name_entry_len + name_entry_padding)
                    goto trunc;

                FUNC4(*msg_data, addr_size + name_entry_len + name_entry_padding);

                if (is_ipv6)
                    FUNC3((ndo, ", address %s, name \"",
                            FUNC9(ndo, msg_data)));
                else
                    FUNC3((ndo, ", address %s, name \"",
                            FUNC10(ndo, msg_data)));
                (void)FUNC8(ndo, msg_data + addr_size, name_entry_len, NULL);
                FUNC3((ndo, "\""));

                msg_data += addr_size + name_entry_len + name_entry_padding;
                msg_tlen -= addr_size + name_entry_len + name_entry_padding;
            } /* for (i = 0; i < name_entries; i++) */
            break;
        } /* case OLSR_NAMESERVICE_MSG */

            /*
             * FIXME those are the defined messages that lack a decoder
             * you are welcome to contribute code ;-)
             */
        case OLSR_POWERINFO_MSG:
        default:
            FUNC17(ndo, msg_data, "\n\t    ", msg_tlen);
            break;
        } /* switch (msg_type) */
        tptr += msg_len;
    } /* while (tptr < (pptr+length)) */

    return;

 trunc:
    FUNC3((ndo, "[|olsr]"));
}