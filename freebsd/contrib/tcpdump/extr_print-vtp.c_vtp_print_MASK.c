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
typedef  int u_int ;
typedef  int u_char ;
struct vtp_vlan_ {int status; int type; int const vlanid; int const mtu; int const index; int name_len; } ;
struct TYPE_7__ {int ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (int const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct vtp_vlan_ const) ; 
 int /*<<< orphan*/  FUNC4 (int const,int) ; 
 int /*<<< orphan*/  FUNC5 (int const*) ; 
 int /*<<< orphan*/  FUNC6 (int const*) ; 
#define  VTP_ADV_REQUEST 141 
 int VTP_HEADER_LEN ; 
#define  VTP_JOIN_MESSAGE 140 
 int VTP_MD5_DIGEST_LEN ; 
#define  VTP_SUBSET_ADV 139 
#define  VTP_SUMMARY_ADV 138 
 int VTP_UPDATE_TIMESTAMP_LEN ; 
#define  VTP_VLAN_ARP_HOP_COUNT 137 
#define  VTP_VLAN_BACKUP_CRF_MODE 136 
#define  VTP_VLAN_BRIDGE_TYPE 135 
 int VTP_VLAN_INFO_FIXED_PART_LEN ; 
#define  VTP_VLAN_PARENT_VLAN 134 
#define  VTP_VLAN_PRUNING 133 
#define  VTP_VLAN_SOURCE_ROUTING_BRIDGE_NUMBER 132 
#define  VTP_VLAN_SOURCE_ROUTING_RING_NUMBER 131 
#define  VTP_VLAN_STE_HOP_COUNT 130 
#define  VTP_VLAN_STP_TYPE 129 
#define  VTP_VLAN_TRANS_BRIDGED_VLAN 128 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int const*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  vtp_header_values ; 
 int /*<<< orphan*/  vtp_message_type_values ; 
 int /*<<< orphan*/  vtp_stp_type_values ; 
 int /*<<< orphan*/  vtp_vlan_status ; 
 int /*<<< orphan*/  vtp_vlan_tlv_values ; 
 int /*<<< orphan*/  vtp_vlan_type_values ; 

void
FUNC11 (netdissect_options *ndo,
           const u_char *pptr, u_int length)
{
    int type, len, tlv_len, tlv_value, mgmtd_len;
    const u_char *tptr;
    const struct vtp_vlan_ *vtp_vlan;

    if (length < VTP_HEADER_LEN)
        goto trunc;

    tptr = pptr;

    FUNC4(*tptr, VTP_HEADER_LEN);

    type = *(tptr+1);
    FUNC2((ndo, "VTPv%u, Message %s (0x%02x), length %u",
	   *tptr,
	   FUNC10(vtp_message_type_values,"Unknown message type", type),
	   type,
	   length));

    /* In non-verbose mode, just print version and message type */
    if (ndo->ndo_vflag < 1) {
        return;
    }

    /* verbose mode print all fields */
    FUNC2((ndo, "\n\tDomain name: "));
    mgmtd_len = *(tptr + 3);
    if (mgmtd_len < 1 ||  mgmtd_len > 32) {
	FUNC2((ndo, " [invalid MgmtD Len %d]", mgmtd_len));
	return;
    }
    FUNC7(ndo, tptr + 4, mgmtd_len, NULL);
    FUNC2((ndo, ", %s: %u",
	   FUNC10(vtp_header_values, "Unknown", type),
	   *(tptr+2)));

    tptr += VTP_HEADER_LEN;

    switch (type) {

    case VTP_SUMMARY_ADV:

	/*
	 *  SUMMARY ADVERTISEMENT
	 *
	 *  0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1
	 *  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	 *  |     Version   |     Code      |    Followers  |    MgmtD Len  |
	 *  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	 *  |       Management Domain Name  (zero-padded to 32 bytes)       |
	 *  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	 *  |                    Configuration revision number              |
	 *  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	 *  |                  Updater Identity IP address                  |
	 *  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	 *  |                    Update Timestamp (12 bytes)                |
	 *  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	 *  |                        MD5 digest (16 bytes)                  |
	 *  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	 *
	 */

	FUNC4(*tptr, 8);
	FUNC2((ndo, "\n\t  Config Rev %x, Updater %s",
	       FUNC1(tptr),
	       FUNC8(ndo, tptr+4)));
	tptr += 8;
	FUNC4(*tptr, VTP_UPDATE_TIMESTAMP_LEN);
	FUNC2((ndo, ", Timestamp 0x%08x 0x%08x 0x%08x",
	       FUNC1(tptr),
	       FUNC1(tptr + 4),
	       FUNC1(tptr + 8)));
	tptr += VTP_UPDATE_TIMESTAMP_LEN;
	FUNC4(*tptr, VTP_MD5_DIGEST_LEN);
	FUNC2((ndo, ", MD5 digest: %08x%08x%08x%08x",
	       FUNC1(tptr),
	       FUNC1(tptr + 4),
	       FUNC1(tptr + 8),
	       FUNC1(tptr + 12)));
	tptr += VTP_MD5_DIGEST_LEN;
	break;

    case VTP_SUBSET_ADV:

	/*
	 *  SUBSET ADVERTISEMENT
	 *
	 *  0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1
	 *  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	 *  |     Version   |     Code      |   Seq number  |    MgmtD Len  |
	 *  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	 *  |       Management Domain Name  (zero-padded to 32 bytes)       |
	 *  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	 *  |                    Configuration revision number              |
	 *  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	 *  |                         VLAN info field 1                     |
	 *  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	 *  |                         ................                      |
	 *  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	 *  |                         VLAN info field N                     |
	 *  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	 *
	 */

	FUNC5(tptr);
	FUNC2((ndo, ", Config Rev %x", FUNC1(tptr)));

	/*
	 *  VLAN INFORMATION
	 *  0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1
	 *  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	 *  | V info len    |    Status     |  VLAN type    | VLAN name len |
	 *  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	 *  |       ISL vlan id             |            MTU size           |
	 *  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	 *  |                     802.10 index (SAID)                       |
	 *  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	 *  |                         VLAN name                             |
	 *  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	 *
	 */

	tptr += 4;
	while (tptr < (pptr+length)) {

	    FUNC6(tptr);
	    len = *tptr;
	    if (len == 0)
		break;

	    FUNC4(*tptr, len);

	    vtp_vlan = (const struct vtp_vlan_*)tptr;
	    if (len < VTP_VLAN_INFO_FIXED_PART_LEN)
		goto trunc;
	    FUNC3(*vtp_vlan);
	    FUNC2((ndo, "\n\tVLAN info status %s, type %s, VLAN-id %u, MTU %u, SAID 0x%08x, Name ",
		   FUNC10(vtp_vlan_status,"Unknown",vtp_vlan->status),
		   FUNC10(vtp_vlan_type_values,"Unknown",vtp_vlan->type),
		   FUNC0(&vtp_vlan->vlanid),
		   FUNC0(&vtp_vlan->mtu),
		   FUNC1(&vtp_vlan->index)));
	    len  -= VTP_VLAN_INFO_FIXED_PART_LEN;
	    tptr += VTP_VLAN_INFO_FIXED_PART_LEN;
	    if (len < 4*((vtp_vlan->name_len + 3)/4))
		goto trunc;
	    FUNC4(*tptr, vtp_vlan->name_len);
	    FUNC7(ndo, tptr, vtp_vlan->name_len, NULL);

	    /*
	     * Vlan names are aligned to 32-bit boundaries.
	     */
	    len  -= 4*((vtp_vlan->name_len + 3)/4);
	    tptr += 4*((vtp_vlan->name_len + 3)/4);

            /* TLV information follows */

            while (len > 0) {

                /*
                 * Cisco specs say 2 bytes for type + 2 bytes for length;
                 * see http://docstore.mik.ua/univercd/cc/td/doc/product/lan/trsrb/frames.htm
                 * However, actual packets on the wire appear to use 1
                 * byte for the type and 1 byte for the length, so that's
                 * what we do.
                 */
                if (len < 2)
                    goto trunc;
                FUNC4(*tptr, 2);
                type = *tptr;
                tlv_len = *(tptr+1);

                FUNC2((ndo, "\n\t\t%s (0x%04x) TLV",
                       FUNC10(vtp_vlan_tlv_values, "Unknown", type),
                       type));

                if (len < tlv_len * 2 + 2) {
                    FUNC2((ndo, " (TLV goes past the end of the packet)"));
                    return;
                }
                FUNC4(*tptr, tlv_len * 2 +2);

                /*
                 * We assume the value is a 2-byte integer; the length is
                 * in units of 16-bit words.
                 */
                if (tlv_len != 1) {
                    FUNC2((ndo, " (invalid TLV length %u != 1)", tlv_len));
                    return;
                } else {
                    tlv_value = FUNC0(tptr+2);

                    switch (type) {
                    case VTP_VLAN_STE_HOP_COUNT:
                        FUNC2((ndo, ", %u", tlv_value));
                        break;

                    case VTP_VLAN_PRUNING:
                        FUNC2((ndo, ", %s (%u)",
                               tlv_value == 1 ? "Enabled" : "Disabled",
                               tlv_value));
                        break;

                    case VTP_VLAN_STP_TYPE:
                        FUNC2((ndo, ", %s (%u)",
                               FUNC10(vtp_stp_type_values, "Unknown", tlv_value),
                               tlv_value));
                        break;

                    case VTP_VLAN_BRIDGE_TYPE:
                        FUNC2((ndo, ", %s (%u)",
                               tlv_value == 1 ? "SRB" : "SRT",
                               tlv_value));
                        break;

                    case VTP_VLAN_BACKUP_CRF_MODE:
                        FUNC2((ndo, ", %s (%u)",
                               tlv_value == 1 ? "Backup" : "Not backup",
                               tlv_value));
                        break;

                        /*
                         * FIXME those are the defined TLVs that lack a decoder
                         * you are welcome to contribute code ;-)
                         */

                    case VTP_VLAN_SOURCE_ROUTING_RING_NUMBER:
                    case VTP_VLAN_SOURCE_ROUTING_BRIDGE_NUMBER:
                    case VTP_VLAN_PARENT_VLAN:
                    case VTP_VLAN_TRANS_BRIDGED_VLAN:
                    case VTP_VLAN_ARP_HOP_COUNT:
                    default:
                        FUNC9(ndo, tptr, "\n\t\t  ", 2 + tlv_len*2);
                        break;
                    }
                }
                len -= 2 + tlv_len*2;
                tptr += 2 + tlv_len*2;
            }
	}
	break;

    case VTP_ADV_REQUEST:

	/*
	 *  ADVERTISEMENT REQUEST
	 *
	 *  0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1
	 *  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	 *  |     Version   |     Code      |   Reserved    |    MgmtD Len  |
	 *  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	 *  |       Management Domain Name  (zero-padded to 32 bytes)       |
	 *  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	 *  |                          Start value                          |
	 *  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	 *
	 */

	FUNC4(*tptr, 4);
	FUNC2((ndo, "\n\tStart value: %u", FUNC1(tptr)));
	break;

    case VTP_JOIN_MESSAGE:

	/* FIXME - Could not find message format */
	break;

    default:
	break;
    }

    return;

 trunc:
    FUNC2((ndo, "[|vtp]"));
}