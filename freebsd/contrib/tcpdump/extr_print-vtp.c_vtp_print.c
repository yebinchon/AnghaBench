
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct vtp_vlan_ {int status; int type; int const vlanid; int const mtu; int const index; int name_len; } ;
struct TYPE_7__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 int EXTRACT_16BITS (int const*) ;
 int EXTRACT_32BITS (int const*) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (struct vtp_vlan_ const) ;
 int ND_TCHECK2 (int const,int) ;
 int ND_TCHECK_32BITS (int const*) ;
 int ND_TCHECK_8BITS (int const*) ;

 int VTP_HEADER_LEN ;

 int VTP_MD5_DIGEST_LEN ;


 int VTP_UPDATE_TIMESTAMP_LEN ;



 int VTP_VLAN_INFO_FIXED_PART_LEN ;







 int fn_printzp (TYPE_1__*,int const*,int,int *) ;
 int ipaddr_string (TYPE_1__*,int const*) ;
 int print_unknown_data (TYPE_1__*,int const*,char*,int) ;
 int tok2str (int ,char*,int) ;
 int vtp_header_values ;
 int vtp_message_type_values ;
 int vtp_stp_type_values ;
 int vtp_vlan_status ;
 int vtp_vlan_tlv_values ;
 int vtp_vlan_type_values ;

void
vtp_print (netdissect_options *ndo,
           const u_char *pptr, u_int length)
{
    int type, len, tlv_len, tlv_value, mgmtd_len;
    const u_char *tptr;
    const struct vtp_vlan_ *vtp_vlan;

    if (length < VTP_HEADER_LEN)
        goto trunc;

    tptr = pptr;

    ND_TCHECK2(*tptr, VTP_HEADER_LEN);

    type = *(tptr+1);
    ND_PRINT((ndo, "VTPv%u, Message %s (0x%02x), length %u",
    *tptr,
    tok2str(vtp_message_type_values,"Unknown message type", type),
    type,
    length));


    if (ndo->ndo_vflag < 1) {
        return;
    }


    ND_PRINT((ndo, "\n\tDomain name: "));
    mgmtd_len = *(tptr + 3);
    if (mgmtd_len < 1 || mgmtd_len > 32) {
 ND_PRINT((ndo, " [invalid MgmtD Len %d]", mgmtd_len));
 return;
    }
    fn_printzp(ndo, tptr + 4, mgmtd_len, ((void*)0));
    ND_PRINT((ndo, ", %s: %u",
    tok2str(vtp_header_values, "Unknown", type),
    *(tptr+2)));

    tptr += VTP_HEADER_LEN;

    switch (type) {

    case 138:
 ND_TCHECK2(*tptr, 8);
 ND_PRINT((ndo, "\n\t  Config Rev %x, Updater %s",
        EXTRACT_32BITS(tptr),
        ipaddr_string(ndo, tptr+4)));
 tptr += 8;
 ND_TCHECK2(*tptr, VTP_UPDATE_TIMESTAMP_LEN);
 ND_PRINT((ndo, ", Timestamp 0x%08x 0x%08x 0x%08x",
        EXTRACT_32BITS(tptr),
        EXTRACT_32BITS(tptr + 4),
        EXTRACT_32BITS(tptr + 8)));
 tptr += VTP_UPDATE_TIMESTAMP_LEN;
 ND_TCHECK2(*tptr, VTP_MD5_DIGEST_LEN);
 ND_PRINT((ndo, ", MD5 digest: %08x%08x%08x%08x",
        EXTRACT_32BITS(tptr),
        EXTRACT_32BITS(tptr + 4),
        EXTRACT_32BITS(tptr + 8),
        EXTRACT_32BITS(tptr + 12)));
 tptr += VTP_MD5_DIGEST_LEN;
 break;

    case 139:
 ND_TCHECK_32BITS(tptr);
 ND_PRINT((ndo, ", Config Rev %x", EXTRACT_32BITS(tptr)));
 tptr += 4;
 while (tptr < (pptr+length)) {

     ND_TCHECK_8BITS(tptr);
     len = *tptr;
     if (len == 0)
  break;

     ND_TCHECK2(*tptr, len);

     vtp_vlan = (const struct vtp_vlan_*)tptr;
     if (len < VTP_VLAN_INFO_FIXED_PART_LEN)
  goto trunc;
     ND_TCHECK(*vtp_vlan);
     ND_PRINT((ndo, "\n\tVLAN info status %s, type %s, VLAN-id %u, MTU %u, SAID 0x%08x, Name ",
     tok2str(vtp_vlan_status,"Unknown",vtp_vlan->status),
     tok2str(vtp_vlan_type_values,"Unknown",vtp_vlan->type),
     EXTRACT_16BITS(&vtp_vlan->vlanid),
     EXTRACT_16BITS(&vtp_vlan->mtu),
     EXTRACT_32BITS(&vtp_vlan->index)));
     len -= VTP_VLAN_INFO_FIXED_PART_LEN;
     tptr += VTP_VLAN_INFO_FIXED_PART_LEN;
     if (len < 4*((vtp_vlan->name_len + 3)/4))
  goto trunc;
     ND_TCHECK2(*tptr, vtp_vlan->name_len);
     fn_printzp(ndo, tptr, vtp_vlan->name_len, ((void*)0));




     len -= 4*((vtp_vlan->name_len + 3)/4);
     tptr += 4*((vtp_vlan->name_len + 3)/4);



            while (len > 0) {
                if (len < 2)
                    goto trunc;
                ND_TCHECK2(*tptr, 2);
                type = *tptr;
                tlv_len = *(tptr+1);

                ND_PRINT((ndo, "\n\t\t%s (0x%04x) TLV",
                       tok2str(vtp_vlan_tlv_values, "Unknown", type),
                       type));

                if (len < tlv_len * 2 + 2) {
                    ND_PRINT((ndo, " (TLV goes past the end of the packet)"));
                    return;
                }
                ND_TCHECK2(*tptr, tlv_len * 2 +2);





                if (tlv_len != 1) {
                    ND_PRINT((ndo, " (invalid TLV length %u != 1)", tlv_len));
                    return;
                } else {
                    tlv_value = EXTRACT_16BITS(tptr+2);

                    switch (type) {
                    case 130:
                        ND_PRINT((ndo, ", %u", tlv_value));
                        break;

                    case 133:
                        ND_PRINT((ndo, ", %s (%u)",
                               tlv_value == 1 ? "Enabled" : "Disabled",
                               tlv_value));
                        break;

                    case 129:
                        ND_PRINT((ndo, ", %s (%u)",
                               tok2str(vtp_stp_type_values, "Unknown", tlv_value),
                               tlv_value));
                        break;

                    case 135:
                        ND_PRINT((ndo, ", %s (%u)",
                               tlv_value == 1 ? "SRB" : "SRT",
                               tlv_value));
                        break;

                    case 136:
                        ND_PRINT((ndo, ", %s (%u)",
                               tlv_value == 1 ? "Backup" : "Not backup",
                               tlv_value));
                        break;






                    case 131:
                    case 132:
                    case 134:
                    case 128:
                    case 137:
                    default:
                        print_unknown_data(ndo, tptr, "\n\t\t  ", 2 + tlv_len*2);
                        break;
                    }
                }
                len -= 2 + tlv_len*2;
                tptr += 2 + tlv_len*2;
            }
 }
 break;

    case 141:
 ND_TCHECK2(*tptr, 4);
 ND_PRINT((ndo, "\n\tStart value: %u", EXTRACT_32BITS(tptr)));
 break;

    case 140:


 break;

    default:
 break;
    }

    return;

 trunc:
    ND_PRINT((ndo, "[|vtp]"));
}
