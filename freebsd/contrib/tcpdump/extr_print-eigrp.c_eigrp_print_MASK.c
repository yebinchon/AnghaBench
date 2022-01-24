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
typedef  int /*<<< orphan*/ ** uint8_t ;
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct eigrp_tlv_sw_version_t {int /*<<< orphan*/  eigrp_minor; int /*<<< orphan*/  eigrp_major; int /*<<< orphan*/  ios_minor; int /*<<< orphan*/  ios_major; } ;
struct eigrp_tlv_ip_int_t {int plen; int /*<<< orphan*/  load; int /*<<< orphan*/  reliability; int /*<<< orphan*/  hopcount; int /*<<< orphan*/  mtu; int /*<<< orphan*/ *** bandwidth; int /*<<< orphan*/ *** delay; int /*<<< orphan*/ *** nexthop; int /*<<< orphan*/  destination; } ;
struct eigrp_tlv_ip_ext_t {int plen; int proto_id; int /*<<< orphan*/  load; int /*<<< orphan*/  reliability; int /*<<< orphan*/  hopcount; int /*<<< orphan*/  mtu; int /*<<< orphan*/ *** bandwidth; int /*<<< orphan*/ *** delay; int /*<<< orphan*/ **** metric; int /*<<< orphan*/ **** tag; int /*<<< orphan*/  flags; int /*<<< orphan*/ **** origin_as; int /*<<< orphan*/ **** origin_router; int /*<<< orphan*/ *** nexthop; int /*<<< orphan*/  destination; } ;
struct eigrp_tlv_header {int /*<<< orphan*/ *** type; int /*<<< orphan*/ *** length; } ;
struct eigrp_tlv_general_parm_t {int /*<<< orphan*/  k5; int /*<<< orphan*/  k4; int /*<<< orphan*/  k3; int /*<<< orphan*/  k2; int /*<<< orphan*/  k1; int /*<<< orphan*/ **** holdtime; } ;
struct eigrp_tlv_at_int_t {int /*<<< orphan*/  load; int /*<<< orphan*/  reliability; int /*<<< orphan*/  hopcount; int /*<<< orphan*/  mtu; int /*<<< orphan*/ *** bandwidth; int /*<<< orphan*/ *** delay; int /*<<< orphan*/ **** nexthop; int /*<<< orphan*/ *** cable_end; int /*<<< orphan*/ *** cable_start; } ;
struct eigrp_tlv_at_ext_t {int proto_id; int /*<<< orphan*/  load; int /*<<< orphan*/  reliability; int /*<<< orphan*/  hopcount; int /*<<< orphan*/  mtu; int /*<<< orphan*/ *** bandwidth; int /*<<< orphan*/ *** delay; int /*<<< orphan*/ **** metric; int /*<<< orphan*/ **** tag; int /*<<< orphan*/  flags; int /*<<< orphan*/ **** origin_as; int /*<<< orphan*/ **** origin_router; int /*<<< orphan*/ **** nexthop; int /*<<< orphan*/ *** cable_end; int /*<<< orphan*/ *** cable_start; } ;
struct eigrp_tlv_at_cable_setup_t {int /*<<< orphan*/ *** router_id; int /*<<< orphan*/ *** cable_end; int /*<<< orphan*/ *** cable_start; } ;
struct eigrp_common_header {scalar_t__ version; int opcode; int /*<<< orphan*/ *** asn; int /*<<< orphan*/ *** ack; int /*<<< orphan*/ *** seq; int /*<<< orphan*/ *** flags; int /*<<< orphan*/ *** checksum; } ;
struct TYPE_6__ {int ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
#define  EIGRP_TLV_AT_CABLE_SETUP 139 
#define  EIGRP_TLV_AT_EXT 138 
#define  EIGRP_TLV_AT_INT 137 
#define  EIGRP_TLV_AUTH 136 
#define  EIGRP_TLV_GENERAL_PARM 135 
#define  EIGRP_TLV_IPX_EXT 134 
#define  EIGRP_TLV_IPX_INT 133 
#define  EIGRP_TLV_IP_EXT 132 
#define  EIGRP_TLV_IP_INT 131 
#define  EIGRP_TLV_MCAST_SEQ 130 
#define  EIGRP_TLV_SEQ 129 
#define  EIGRP_TLV_SW_VERSION 128 
 scalar_t__ EIGRP_VERSION ; 
 int FUNC0 (int /*<<< orphan*/ ***) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ***) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct eigrp_common_header const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  eigrp_common_header_flag_values ; 
 int /*<<< orphan*/  eigrp_ext_proto_id_values ; 
 int /*<<< orphan*/  eigrp_opcode_values ; 
 int /*<<< orphan*/  eigrp_tlv_values ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ***) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ***,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ***,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/  const*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int) ; 

void
FUNC11(netdissect_options *ndo, register const u_char *pptr, register u_int len)
{
    const struct eigrp_common_header *eigrp_com_header;
    const struct eigrp_tlv_header *eigrp_tlv_header;
    const u_char *tptr,*tlv_tptr;
    u_int tlen,eigrp_tlv_len,eigrp_tlv_type,tlv_tlen, byte_length, bit_length;
    uint8_t prefix[4];

    union {
        const struct eigrp_tlv_general_parm_t *eigrp_tlv_general_parm;
        const struct eigrp_tlv_sw_version_t *eigrp_tlv_sw_version;
        const struct eigrp_tlv_ip_int_t *eigrp_tlv_ip_int;
        const struct eigrp_tlv_ip_ext_t *eigrp_tlv_ip_ext;
        const struct eigrp_tlv_at_cable_setup_t *eigrp_tlv_at_cable_setup;
        const struct eigrp_tlv_at_int_t *eigrp_tlv_at_int;
        const struct eigrp_tlv_at_ext_t *eigrp_tlv_at_ext;
    } tlv_ptr;

    tptr=pptr;
    eigrp_com_header = (const struct eigrp_common_header *)pptr;
    FUNC4(*eigrp_com_header);

    /*
     * Sanity checking of the header.
     */
    if (eigrp_com_header->version != EIGRP_VERSION) {
	FUNC3((ndo, "EIGRP version %u packet not supported",eigrp_com_header->version));
	return;
    }

    /* in non-verbose mode just lets print the basic Message Type*/
    if (ndo->ndo_vflag < 1) {
        FUNC3((ndo, "EIGRP %s, length: %u",
               FUNC10(eigrp_opcode_values, "unknown (%u)",eigrp_com_header->opcode),
               len));
        return;
    }

    /* ok they seem to want to know everything - lets fully decode it */

    if (len < sizeof(struct eigrp_common_header)) {
        FUNC3((ndo, "EIGRP %s, length: %u (too short, < %u)",
               FUNC10(eigrp_opcode_values, "unknown (%u)",eigrp_com_header->opcode),
               len, (u_int) sizeof(struct eigrp_common_header)));
        return;
    }
    tlen=len-sizeof(struct eigrp_common_header);

    /* FIXME print other header info */
    FUNC3((ndo, "\n\tEIGRP v%u, opcode: %s (%u), chksum: 0x%04x, Flags: [%s]\n\tseq: 0x%08x, ack: 0x%08x, AS: %u, length: %u",
           eigrp_com_header->version,
           FUNC10(eigrp_opcode_values, "unknown, type: %u",eigrp_com_header->opcode),
           eigrp_com_header->opcode,
           FUNC0(&eigrp_com_header->checksum),
           FUNC10(eigrp_common_header_flag_values,
                   "none",
                   FUNC2(&eigrp_com_header->flags)),
           FUNC2(&eigrp_com_header->seq),
           FUNC2(&eigrp_com_header->ack),
           FUNC2(&eigrp_com_header->asn),
           tlen));

    tptr+=sizeof(const struct eigrp_common_header);

    while(tlen>0) {
        /* did we capture enough for fully decoding the object header ? */
        FUNC5(*tptr, sizeof(struct eigrp_tlv_header));

        eigrp_tlv_header = (const struct eigrp_tlv_header *)tptr;
        eigrp_tlv_len=FUNC0(&eigrp_tlv_header->length);
        eigrp_tlv_type=FUNC0(&eigrp_tlv_header->type);


        if (eigrp_tlv_len < sizeof(struct eigrp_tlv_header) ||
            eigrp_tlv_len > tlen) {
            FUNC9(ndo,tptr+sizeof(struct eigrp_tlv_header),"\n\t    ",tlen);
            return;
        }

        FUNC3((ndo, "\n\t  %s TLV (0x%04x), length: %u",
               FUNC10(eigrp_tlv_values,
                       "Unknown",
                       eigrp_tlv_type),
               eigrp_tlv_type,
               eigrp_tlv_len));

        if (eigrp_tlv_len < sizeof(struct eigrp_tlv_header)) {
                FUNC3((ndo, " (too short, < %u)",
                        (u_int) sizeof(struct eigrp_tlv_header)));
                break;
        }
        tlv_tptr=tptr+sizeof(struct eigrp_tlv_header);
        tlv_tlen=eigrp_tlv_len-sizeof(struct eigrp_tlv_header);

        /* did we capture enough for fully decoding the object ? */
        FUNC5(*tptr, eigrp_tlv_len);

        switch(eigrp_tlv_type) {

        case EIGRP_TLV_GENERAL_PARM:
            tlv_ptr.eigrp_tlv_general_parm = (const struct eigrp_tlv_general_parm_t *)tlv_tptr;
            if (tlv_tlen < sizeof(*tlv_ptr.eigrp_tlv_general_parm)) {
                FUNC3((ndo, " (too short, < %u)",
                    (u_int) (sizeof(struct eigrp_tlv_header) + sizeof(*tlv_ptr.eigrp_tlv_general_parm))));
                break;
            }

            FUNC3((ndo, "\n\t    holdtime: %us, k1 %u, k2 %u, k3 %u, k4 %u, k5 %u",
                   FUNC0(*tlv_ptr.eigrp_tlv_general_parm->holdtime),
                   tlv_ptr.eigrp_tlv_general_parm->k1,
                   tlv_ptr.eigrp_tlv_general_parm->k2,
                   tlv_ptr.eigrp_tlv_general_parm->k3,
                   tlv_ptr.eigrp_tlv_general_parm->k4,
                   tlv_ptr.eigrp_tlv_general_parm->k5));
            break;

        case EIGRP_TLV_SW_VERSION:
            tlv_ptr.eigrp_tlv_sw_version = (const struct eigrp_tlv_sw_version_t *)tlv_tptr;
            if (tlv_tlen < sizeof(*tlv_ptr.eigrp_tlv_sw_version)) {
                FUNC3((ndo, " (too short, < %u)",
                    (u_int) (sizeof(struct eigrp_tlv_header) + sizeof(*tlv_ptr.eigrp_tlv_sw_version))));
                break;
            }

            FUNC3((ndo, "\n\t    IOS version: %u.%u, EIGRP version %u.%u",
                   tlv_ptr.eigrp_tlv_sw_version->ios_major,
                   tlv_ptr.eigrp_tlv_sw_version->ios_minor,
                   tlv_ptr.eigrp_tlv_sw_version->eigrp_major,
                   tlv_ptr.eigrp_tlv_sw_version->eigrp_minor));
            break;

        case EIGRP_TLV_IP_INT:
            tlv_ptr.eigrp_tlv_ip_int = (const struct eigrp_tlv_ip_int_t *)tlv_tptr;
            if (tlv_tlen < sizeof(*tlv_ptr.eigrp_tlv_ip_int)) {
                FUNC3((ndo, " (too short, < %u)",
                    (u_int) (sizeof(struct eigrp_tlv_header) + sizeof(*tlv_ptr.eigrp_tlv_ip_int))));
                break;
            }

            bit_length = tlv_ptr.eigrp_tlv_ip_int->plen;
            if (bit_length > 32) {
                FUNC3((ndo, "\n\t    illegal prefix length %u",bit_length));
                break;
            }
            byte_length = (bit_length + 7) / 8; /* variable length encoding */
            FUNC8(prefix, 0, 4);
            FUNC7(prefix,&tlv_ptr.eigrp_tlv_ip_int->destination,byte_length);

            FUNC3((ndo, "\n\t    IPv4 prefix: %15s/%u, nexthop: ",
                   FUNC6(ndo, prefix),
                   bit_length));
            if (FUNC2(&tlv_ptr.eigrp_tlv_ip_int->nexthop) == 0)
                FUNC3((ndo, "self"));
            else
                FUNC3((ndo, "%s",FUNC6(ndo, &tlv_ptr.eigrp_tlv_ip_int->nexthop)));

            FUNC3((ndo, "\n\t      delay %u ms, bandwidth %u Kbps, mtu %u, hop %u, reliability %u, load %u",
                   (FUNC2(&tlv_ptr.eigrp_tlv_ip_int->delay)/100),
                   FUNC2(&tlv_ptr.eigrp_tlv_ip_int->bandwidth),
                   FUNC1(&tlv_ptr.eigrp_tlv_ip_int->mtu),
                   tlv_ptr.eigrp_tlv_ip_int->hopcount,
                   tlv_ptr.eigrp_tlv_ip_int->reliability,
                   tlv_ptr.eigrp_tlv_ip_int->load));
            break;

        case EIGRP_TLV_IP_EXT:
            tlv_ptr.eigrp_tlv_ip_ext = (const struct eigrp_tlv_ip_ext_t *)tlv_tptr;
            if (tlv_tlen < sizeof(*tlv_ptr.eigrp_tlv_ip_ext)) {
                FUNC3((ndo, " (too short, < %u)",
                    (u_int) (sizeof(struct eigrp_tlv_header) + sizeof(*tlv_ptr.eigrp_tlv_ip_ext))));
                break;
            }

            bit_length = tlv_ptr.eigrp_tlv_ip_ext->plen;
            if (bit_length > 32) {
                FUNC3((ndo, "\n\t    illegal prefix length %u",bit_length));
                break;
            }
            byte_length = (bit_length + 7) / 8; /* variable length encoding */
            FUNC8(prefix, 0, 4);
            FUNC7(prefix,&tlv_ptr.eigrp_tlv_ip_ext->destination,byte_length);

            FUNC3((ndo, "\n\t    IPv4 prefix: %15s/%u, nexthop: ",
                   FUNC6(ndo, prefix),
                   bit_length));
            if (FUNC2(&tlv_ptr.eigrp_tlv_ip_ext->nexthop) == 0)
                FUNC3((ndo, "self"));
            else
                FUNC3((ndo, "%s",FUNC6(ndo, &tlv_ptr.eigrp_tlv_ip_ext->nexthop)));

            FUNC3((ndo, "\n\t      origin-router %s, origin-as %u, origin-proto %s, flags [0x%02x], tag 0x%08x, metric %u",
                   FUNC6(ndo, *tlv_ptr.eigrp_tlv_ip_ext->origin_router),
                   FUNC2(*tlv_ptr.eigrp_tlv_ip_ext->origin_as),
                   FUNC10(eigrp_ext_proto_id_values,"unknown",tlv_ptr.eigrp_tlv_ip_ext->proto_id),
                   tlv_ptr.eigrp_tlv_ip_ext->flags,
                   FUNC2(*tlv_ptr.eigrp_tlv_ip_ext->tag),
                   FUNC2(*tlv_ptr.eigrp_tlv_ip_ext->metric)));

            FUNC3((ndo, "\n\t      delay %u ms, bandwidth %u Kbps, mtu %u, hop %u, reliability %u, load %u",
                   (FUNC2(&tlv_ptr.eigrp_tlv_ip_ext->delay)/100),
                   FUNC2(&tlv_ptr.eigrp_tlv_ip_ext->bandwidth),
                   FUNC1(&tlv_ptr.eigrp_tlv_ip_ext->mtu),
                   tlv_ptr.eigrp_tlv_ip_ext->hopcount,
                   tlv_ptr.eigrp_tlv_ip_ext->reliability,
                   tlv_ptr.eigrp_tlv_ip_ext->load));
            break;

        case EIGRP_TLV_AT_CABLE_SETUP:
            tlv_ptr.eigrp_tlv_at_cable_setup = (const struct eigrp_tlv_at_cable_setup_t *)tlv_tptr;
            if (tlv_tlen < sizeof(*tlv_ptr.eigrp_tlv_at_cable_setup)) {
                FUNC3((ndo, " (too short, < %u)",
                    (u_int) (sizeof(struct eigrp_tlv_header) + sizeof(*tlv_ptr.eigrp_tlv_at_cable_setup))));
                break;
            }

            FUNC3((ndo, "\n\t    Cable-range: %u-%u, Router-ID %u",
                   FUNC0(&tlv_ptr.eigrp_tlv_at_cable_setup->cable_start),
                   FUNC0(&tlv_ptr.eigrp_tlv_at_cable_setup->cable_end),
                   FUNC2(&tlv_ptr.eigrp_tlv_at_cable_setup->router_id)));
            break;

        case EIGRP_TLV_AT_INT:
            tlv_ptr.eigrp_tlv_at_int = (const struct eigrp_tlv_at_int_t *)tlv_tptr;
            if (tlv_tlen < sizeof(*tlv_ptr.eigrp_tlv_at_int)) {
                FUNC3((ndo, " (too short, < %u)",
                    (u_int) (sizeof(struct eigrp_tlv_header) + sizeof(*tlv_ptr.eigrp_tlv_at_int))));
                break;
            }

            FUNC3((ndo, "\n\t     Cable-Range: %u-%u, nexthop: ",
                   FUNC0(&tlv_ptr.eigrp_tlv_at_int->cable_start),
                   FUNC0(&tlv_ptr.eigrp_tlv_at_int->cable_end)));

            if (FUNC2(&tlv_ptr.eigrp_tlv_at_int->nexthop) == 0)
                FUNC3((ndo, "self"));
            else
                FUNC3((ndo, "%u.%u",
                       FUNC0(&tlv_ptr.eigrp_tlv_at_int->nexthop),
                       FUNC0(tlv_ptr.eigrp_tlv_at_int->nexthop[2])));

            FUNC3((ndo, "\n\t      delay %u ms, bandwidth %u Kbps, mtu %u, hop %u, reliability %u, load %u",
                   (FUNC2(&tlv_ptr.eigrp_tlv_at_int->delay)/100),
                   FUNC2(&tlv_ptr.eigrp_tlv_at_int->bandwidth),
                   FUNC1(&tlv_ptr.eigrp_tlv_at_int->mtu),
                   tlv_ptr.eigrp_tlv_at_int->hopcount,
                   tlv_ptr.eigrp_tlv_at_int->reliability,
                   tlv_ptr.eigrp_tlv_at_int->load));
            break;

        case EIGRP_TLV_AT_EXT:
            tlv_ptr.eigrp_tlv_at_ext = (const struct eigrp_tlv_at_ext_t *)tlv_tptr;
            if (tlv_tlen < sizeof(*tlv_ptr.eigrp_tlv_at_ext)) {
                FUNC3((ndo, " (too short, < %u)",
                    (u_int) (sizeof(struct eigrp_tlv_header) + sizeof(*tlv_ptr.eigrp_tlv_at_ext))));
                break;
            }

            FUNC3((ndo, "\n\t     Cable-Range: %u-%u, nexthop: ",
                   FUNC0(&tlv_ptr.eigrp_tlv_at_ext->cable_start),
                   FUNC0(&tlv_ptr.eigrp_tlv_at_ext->cable_end)));

            if (FUNC2(&tlv_ptr.eigrp_tlv_at_ext->nexthop) == 0)
                FUNC3((ndo, "self"));
            else
                FUNC3((ndo, "%u.%u",
                       FUNC0(&tlv_ptr.eigrp_tlv_at_ext->nexthop),
                       FUNC0(tlv_ptr.eigrp_tlv_at_ext->nexthop[2])));

            FUNC3((ndo, "\n\t      origin-router %u, origin-as %u, origin-proto %s, flags [0x%02x], tag 0x%08x, metric %u",
                   FUNC2(*tlv_ptr.eigrp_tlv_at_ext->origin_router),
                   FUNC2(*tlv_ptr.eigrp_tlv_at_ext->origin_as),
                   FUNC10(eigrp_ext_proto_id_values,"unknown",tlv_ptr.eigrp_tlv_at_ext->proto_id),
                   tlv_ptr.eigrp_tlv_at_ext->flags,
                   FUNC2(*tlv_ptr.eigrp_tlv_at_ext->tag),
                   FUNC0(*tlv_ptr.eigrp_tlv_at_ext->metric)));

            FUNC3((ndo, "\n\t      delay %u ms, bandwidth %u Kbps, mtu %u, hop %u, reliability %u, load %u",
                   (FUNC2(&tlv_ptr.eigrp_tlv_at_ext->delay)/100),
                   FUNC2(&tlv_ptr.eigrp_tlv_at_ext->bandwidth),
                   FUNC1(&tlv_ptr.eigrp_tlv_at_ext->mtu),
                   tlv_ptr.eigrp_tlv_at_ext->hopcount,
                   tlv_ptr.eigrp_tlv_at_ext->reliability,
                   tlv_ptr.eigrp_tlv_at_ext->load));
            break;

            /*
             * FIXME those are the defined TLVs that lack a decoder
             * you are welcome to contribute code ;-)
             */

        case EIGRP_TLV_AUTH:
        case EIGRP_TLV_SEQ:
        case EIGRP_TLV_MCAST_SEQ:
        case EIGRP_TLV_IPX_INT:
        case EIGRP_TLV_IPX_EXT:

        default:
            if (ndo->ndo_vflag <= 1)
                FUNC9(ndo,tlv_tptr,"\n\t    ",tlv_tlen);
            break;
        }
        /* do we want to see an additionally hexdump ? */
        if (ndo->ndo_vflag > 1)
            FUNC9(ndo,tptr+sizeof(struct eigrp_tlv_header),"\n\t    ",
                               eigrp_tlv_len-sizeof(struct eigrp_tlv_header));

        tptr+=eigrp_tlv_len;
        tlen-=eigrp_tlv_len;
    }
    return;
trunc:
    FUNC3((ndo, "\n\t\t packet exceeded snapshot"));
}