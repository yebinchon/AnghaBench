
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int u_int ;
typedef int u_char ;
struct olsr_tc {int const* ans_seq; } ;
struct olsr_msg6 {int msg_type; int const* msg_seq; int vtime; int hopcount; int ttl; int const* originator; int const* msg_len; } ;
struct olsr_msg4 {int msg_type; int const* msg_seq; int vtime; int hopcount; int ttl; int const* originator; int const* msg_len; } ;
struct olsr_hna6 {int mask; int const* network; } ;
struct olsr_hna4 {int* mask; int const* network; } ;
struct olsr_hello_link {int link_code; int const* len; } ;
struct olsr_hello {int will; int htime; } ;
struct olsr_common {int const* packet_seq; int const* packet_len; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;
struct TYPE_11__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 int EXTRACT_16BITS (int const*) ;
 int EXTRACT_32BITS (int*) ;
 size_t GW_HNA_DOWNLINK ;
 size_t GW_HNA_FLAGS ;
 int GW_HNA_FLAG_IPV4 ;
 int GW_HNA_FLAG_IPV4_NAT ;
 int GW_HNA_FLAG_IPV6 ;
 int GW_HNA_FLAG_IPV6PREFIX ;
 int GW_HNA_FLAG_LINKSPEED ;
 size_t GW_HNA_PAD ;
 size_t GW_HNA_UPLINK ;
 int ME_TO_DOUBLE (int ) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK2 (int const,int) ;
 int OLSR_EXTRACT_LINK_TYPE (int ) ;
 int OLSR_EXTRACT_NEIGHBOR_TYPE (int ) ;
 int deserialize_gw_speed (int) ;
 int fn_printn (TYPE_1__*,int const*,int,int *) ;
 int ip6addr_string (TYPE_1__*,int const*) ;
 int ipaddr_string (TYPE_1__*,int const*) ;
 int mask2plen (int ) ;
 int mask62plen (int ) ;
 int min (int,int) ;
 int olsr_link_type_values ;
 int olsr_msg_values ;
 int olsr_neighbor_type_values ;
 int olsr_print_lq_neighbor4 (TYPE_1__*,int const*,int) ;
 int olsr_print_lq_neighbor6 (TYPE_1__*,int const*,int) ;
 int olsr_print_neighbor (TYPE_1__*,int const*,int) ;
 int print_unknown_data (TYPE_1__*,int const*,char*,int) ;
 int tok2str (int ,char*,int) ;

void
olsr_print(netdissect_options *ndo,
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

    ND_TCHECK2(*tptr, sizeof(struct olsr_common));

    ptr.common = (const struct olsr_common *)tptr;
    length = min(length, EXTRACT_16BITS(ptr.common->packet_len));

    ND_PRINT((ndo, "OLSRv%i, seq 0x%04x, length %u",
            (is_ipv6 == 0) ? 4 : 6,
            EXTRACT_16BITS(ptr.common->packet_seq),
            length));

    tptr += sizeof(struct olsr_common);




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
            ND_TCHECK2(*tptr, sizeof(struct olsr_msg6));
            msgptr.v6 = (const struct olsr_msg6 *) tptr;
            msg_type = msgptr.v6->msg_type;
            msg_len = EXTRACT_16BITS(msgptr.v6->msg_len);
            if ((msg_len >= sizeof (struct olsr_msg6))
                    && (msg_len <= length))
                msg_len_valid = 1;


            if (msg_type == 0 || msg_len == 0) {
                return;
            }

            ND_PRINT((ndo, "\n\t%s Message (%#04x), originator %s, ttl %u, hop %u"
                    "\n\t  vtime %.3fs, msg-seq 0x%04x, length %u%s",
                    tok2str(olsr_msg_values, "Unknown", msg_type),
                    msg_type, ip6addr_string(ndo, msgptr.v6->originator),
                    msgptr.v6->ttl,
                    msgptr.v6->hopcount,
                    ME_TO_DOUBLE(msgptr.v6->vtime),
                    EXTRACT_16BITS(msgptr.v6->msg_seq),
                    msg_len, (msg_len_valid == 0) ? " (invalid)" : ""));
            if (!msg_len_valid) {
                return;
            }

            msg_tlen = msg_len - sizeof(struct olsr_msg6);
            msg_data = tptr + sizeof(struct olsr_msg6);
        }
        else
        {
            ND_TCHECK2(*tptr, sizeof(struct olsr_msg4));
            msgptr.v4 = (const struct olsr_msg4 *) tptr;
            msg_type = msgptr.v4->msg_type;
            msg_len = EXTRACT_16BITS(msgptr.v4->msg_len);
            if ((msg_len >= sizeof (struct olsr_msg4))
                    && (msg_len <= length))
                msg_len_valid = 1;


            if (msg_type == 0 || msg_len == 0) {
                return;
            }

            ND_PRINT((ndo, "\n\t%s Message (%#04x), originator %s, ttl %u, hop %u"
                    "\n\t  vtime %.3fs, msg-seq 0x%04x, length %u%s",
                    tok2str(olsr_msg_values, "Unknown", msg_type),
                    msg_type, ipaddr_string(ndo, msgptr.v4->originator),
                    msgptr.v4->ttl,
                    msgptr.v4->hopcount,
                    ME_TO_DOUBLE(msgptr.v4->vtime),
                    EXTRACT_16BITS(msgptr.v4->msg_seq),
                    msg_len, (msg_len_valid == 0) ? " (invalid)" : ""));
            if (!msg_len_valid) {
                return;
            }

            msg_tlen = msg_len - sizeof(struct olsr_msg4);
            msg_data = tptr + sizeof(struct olsr_msg4);
        }

        switch (msg_type) {
        case 134:
        case 135:
            if (msg_tlen < sizeof(struct olsr_hello))
                goto trunc;
            ND_TCHECK2(*msg_data, sizeof(struct olsr_hello));

            ptr.hello = (const struct olsr_hello *)msg_data;
            ND_PRINT((ndo, "\n\t  hello-time %.3fs, MPR willingness %u",
                   ME_TO_DOUBLE(ptr.hello->htime), ptr.hello->will));
            msg_data += sizeof(struct olsr_hello);
            msg_tlen -= sizeof(struct olsr_hello);

            while (msg_tlen >= sizeof(struct olsr_hello_link)) {
                int hello_len_valid = 0;




                ND_TCHECK2(*msg_data, sizeof(struct olsr_hello_link));

                ptr.hello_link = (const struct olsr_hello_link *)msg_data;

                hello_len = EXTRACT_16BITS(ptr.hello_link->len);
                link_type = OLSR_EXTRACT_LINK_TYPE(ptr.hello_link->link_code);
                neighbor_type = OLSR_EXTRACT_NEIGHBOR_TYPE(ptr.hello_link->link_code);

                if ((hello_len <= msg_tlen)
                        && (hello_len >= sizeof(struct olsr_hello_link)))
                    hello_len_valid = 1;

                ND_PRINT((ndo, "\n\t    link-type %s, neighbor-type %s, len %u%s",
                       tok2str(olsr_link_type_values, "Unknown", link_type),
                       tok2str(olsr_neighbor_type_values, "Unknown", neighbor_type),
                       hello_len,
                       (hello_len_valid == 0) ? " (invalid)" : ""));

                if (hello_len_valid == 0)
                    break;

                msg_data += sizeof(struct olsr_hello_link);
                msg_tlen -= sizeof(struct olsr_hello_link);
                hello_len -= sizeof(struct olsr_hello_link);

                ND_TCHECK2(*msg_data, hello_len);
                if (msg_type == 134) {
                    if (olsr_print_neighbor(ndo, msg_data, hello_len) == -1)
                        goto trunc;
                } else {
                    if (is_ipv6) {
                        if (olsr_print_lq_neighbor6(ndo, msg_data, hello_len) == -1)
                            goto trunc;
                    } else {
                        if (olsr_print_lq_neighbor4(ndo, msg_data, hello_len) == -1)
                            goto trunc;
                    }
                }

                msg_data += hello_len;
                msg_tlen -= hello_len;
            }
            break;

        case 128:
        case 129:
            if (msg_tlen < sizeof(struct olsr_tc))
                goto trunc;
            ND_TCHECK2(*msg_data, sizeof(struct olsr_tc));

            ptr.tc = (const struct olsr_tc *)msg_data;
            ND_PRINT((ndo, "\n\t    advertised neighbor seq 0x%04x",
                   EXTRACT_16BITS(ptr.tc->ans_seq)));
            msg_data += sizeof(struct olsr_tc);
            msg_tlen -= sizeof(struct olsr_tc);

            if (msg_type == 128) {
                if (olsr_print_neighbor(ndo, msg_data, msg_tlen) == -1)
                    goto trunc;
            } else {
                if (is_ipv6) {
                    if (olsr_print_lq_neighbor6(ndo, msg_data, msg_tlen) == -1)
                        goto trunc;
                } else {
                    if (olsr_print_lq_neighbor4(ndo, msg_data, msg_tlen) == -1)
                        goto trunc;
                }
            }
            break;

        case 132:
        {
            size_t addr_size = sizeof(struct in_addr);

            if (is_ipv6)
                addr_size = sizeof(struct in6_addr);

            while (msg_tlen >= addr_size) {
                ND_TCHECK2(*msg_data, addr_size);
                ND_PRINT((ndo, "\n\t  interface address %s",
                        is_ipv6 ? ip6addr_string(ndo, msg_data) :
                        ipaddr_string(ndo, msg_data)));

                msg_data += addr_size;
                msg_tlen -= addr_size;
            }
            break;
        }

        case 133:
            if (is_ipv6)
            {
                int i = 0;

                ND_PRINT((ndo, "\n\t  Advertised networks (total %u)",
                        (unsigned int) (msg_tlen / sizeof(struct olsr_hna6))));

                while (msg_tlen >= sizeof(struct olsr_hna6)) {
                    const struct olsr_hna6 *hna6;

                    ND_TCHECK2(*msg_data, sizeof(struct olsr_hna6));

                    hna6 = (const struct olsr_hna6 *)msg_data;

                    ND_PRINT((ndo, "\n\t    #%i: %s/%u",
                            i, ip6addr_string(ndo, hna6->network),
                            mask62plen (hna6->mask)));

                    msg_data += sizeof(struct olsr_hna6);
                    msg_tlen -= sizeof(struct olsr_hna6);
                }
            }
            else
            {
                int col = 0;

                ND_PRINT((ndo, "\n\t  Advertised networks (total %u)",
                        (unsigned int) (msg_tlen / sizeof(struct olsr_hna4))));

                while (msg_tlen >= sizeof(struct olsr_hna4)) {
                    ND_TCHECK2(*msg_data, sizeof(struct olsr_hna4));

                    ptr.hna = (const struct olsr_hna4 *)msg_data;


                    if (!ptr.hna->network[0] && !ptr.hna->network[1] &&
                        !ptr.hna->network[2] && !ptr.hna->network[3] &&
                        !ptr.hna->mask[GW_HNA_PAD] &&
                        ptr.hna->mask[GW_HNA_FLAGS]) {

                            ND_PRINT((ndo, "%sSmart-Gateway:%s%s%s%s%s %u/%u",
                                col == 0 ? "\n\t    " : ", ",


                                (ptr.hna->mask[GW_HNA_FLAGS] &
                                 GW_HNA_FLAG_LINKSPEED) ? " LINKSPEED" : "",

                                (ptr.hna->mask[GW_HNA_FLAGS] &
                                 GW_HNA_FLAG_IPV4) ? " IPV4" : "",

                                (ptr.hna->mask[GW_HNA_FLAGS] &
                                 GW_HNA_FLAG_IPV4_NAT) ? " IPV4-NAT" : "",

                                (ptr.hna->mask[GW_HNA_FLAGS] &
                                 GW_HNA_FLAG_IPV6) ? " IPV6" : "",

                                (ptr.hna->mask[GW_HNA_FLAGS] &
                                 GW_HNA_FLAG_IPV6PREFIX) ? " IPv6-PREFIX" : "",

                                (ptr.hna->mask[GW_HNA_FLAGS] &
                                 GW_HNA_FLAG_LINKSPEED) ?
                                 deserialize_gw_speed(ptr.hna->mask[GW_HNA_UPLINK]) : 0,

                                (ptr.hna->mask[GW_HNA_FLAGS] &
                                 GW_HNA_FLAG_LINKSPEED) ?
                                 deserialize_gw_speed(ptr.hna->mask[GW_HNA_DOWNLINK]) : 0
                                ));
                    } else {

                        ND_PRINT((ndo, "%s%s/%u",
                                col == 0 ? "\n\t    " : ", ",
                                ipaddr_string(ndo, ptr.hna->network),
                                mask2plen(EXTRACT_32BITS(ptr.hna->mask))));
                    }

                    msg_data += sizeof(struct olsr_hna4);
                    msg_tlen -= sizeof(struct olsr_hna4);

                    col = (col + 1) % 4;
                }
            }
            break;

        case 131:
        {
            u_int name_entries;
            u_int addr_size;
            int name_entries_valid;
            u_int i;

            if (msg_tlen < 4)
                goto trunc;
            ND_TCHECK2(*msg_data, 4);

            name_entries = EXTRACT_16BITS(msg_data+2);
            addr_size = 4;
            if (is_ipv6)
                addr_size = 16;

            name_entries_valid = 0;
            if ((name_entries > 0)
                    && ((name_entries * (4 + addr_size)) <= msg_tlen))
                name_entries_valid = 1;

            ND_PRINT((ndo, "\n\t  Version %u, Entries %u%s",
                   EXTRACT_16BITS(msg_data),
                   name_entries, (name_entries_valid == 0) ? " (invalid)" : ""));

            if (name_entries_valid == 0)
                break;

            msg_data += 4;
            msg_tlen -= 4;

            for (i = 0; i < name_entries; i++) {
                int name_entry_len_valid = 0;

                if (msg_tlen < 4)
                    break;
                ND_TCHECK2(*msg_data, 4);

                name_entry_type = EXTRACT_16BITS(msg_data);
                name_entry_len = EXTRACT_16BITS(msg_data+2);

                msg_data += 4;
                msg_tlen -= 4;

                if ((name_entry_len > 0) && ((addr_size + name_entry_len) <= msg_tlen))
                    name_entry_len_valid = 1;

                ND_PRINT((ndo, "\n\t    #%u: type %#06x, length %u%s",
                        (unsigned int) i, name_entry_type,
                        name_entry_len, (name_entry_len_valid == 0) ? " (invalid)" : ""));

                if (name_entry_len_valid == 0)
                    break;


                name_entry_padding = 0;
                if (name_entry_len%4 != 0)
                    name_entry_padding = 4-(name_entry_len%4);

                if (msg_tlen < addr_size + name_entry_len + name_entry_padding)
                    goto trunc;

                ND_TCHECK2(*msg_data, addr_size + name_entry_len + name_entry_padding);

                if (is_ipv6)
                    ND_PRINT((ndo, ", address %s, name \"",
                            ip6addr_string(ndo, msg_data)));
                else
                    ND_PRINT((ndo, ", address %s, name \"",
                            ipaddr_string(ndo, msg_data)));
                (void)fn_printn(ndo, msg_data + addr_size, name_entry_len, ((void*)0));
                ND_PRINT((ndo, "\""));

                msg_data += addr_size + name_entry_len + name_entry_padding;
                msg_tlen -= addr_size + name_entry_len + name_entry_padding;
            }
            break;
        }





        case 130:
        default:
            print_unknown_data(ndo, msg_data, "\n\t    ", msg_tlen);
            break;
        }
        tptr += msg_len;
    }

    return;

 trunc:
    ND_PRINT((ndo, "[|olsr]"));
}
