
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct lwapp_transport_header {int version; int frag_id; int length; } ;
struct lwapp_control_header {int msg_type; int session_id; int seq_num; int len; } ;
struct TYPE_5__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 int EXTRACT_16BITS (int ) ;
 int EXTRACT_32BITS (int ) ;
 scalar_t__ LWAPP_EXTRACT_CONTROL_BIT (int) ;
 int LWAPP_EXTRACT_RID (int) ;
 scalar_t__ LWAPP_EXTRACT_VERSION (int) ;
 scalar_t__ LWAPP_VERSION ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (struct lwapp_transport_header const) ;
 int ND_TCHECK2 (int const,int) ;
 int bittok2str (int ,char*,int) ;
 int etheraddr_string (TYPE_1__*,int const*) ;
 int lwapp_header_bits_values ;
 int lwapp_msg_type_values ;
 int tok2str (int ,char*,int) ;

void
lwapp_control_print(netdissect_options *ndo,
                    const u_char *pptr, u_int len, int has_ap_ident)
{
    const struct lwapp_transport_header *lwapp_trans_header;
    const struct lwapp_control_header *lwapp_control_header;
    const u_char *tptr;
    int tlen;
    int msg_tlen;

    tptr=pptr;

    if (has_ap_ident) {

        ND_TCHECK2(*tptr, 6);
        lwapp_trans_header = (const struct lwapp_transport_header *)(pptr+6);
    } else {
        lwapp_trans_header = (const struct lwapp_transport_header *)pptr;
    }
    ND_TCHECK(*lwapp_trans_header);




    if (LWAPP_EXTRACT_VERSION(lwapp_trans_header->version) != LWAPP_VERSION) {
 ND_PRINT((ndo, "LWAPP version %u packet not supported",
               LWAPP_EXTRACT_VERSION(lwapp_trans_header->version)));
 return;
    }


    if (ndo->ndo_vflag < 1) {
        ND_PRINT((ndo, "LWAPPv%u, %s frame, Flags [%s], length %u",
               LWAPP_EXTRACT_VERSION(lwapp_trans_header->version),
               LWAPP_EXTRACT_CONTROL_BIT(lwapp_trans_header->version) ? "Control" : "Data",
               bittok2str(lwapp_header_bits_values,"none",(lwapp_trans_header->version)&0x07),
               len));
        return;
    }


    tlen=EXTRACT_16BITS(lwapp_trans_header->length);

    ND_PRINT((ndo, "LWAPPv%u, %s frame, Radio-id %u, Flags [%s], Frag-id %u, length %u",
           LWAPP_EXTRACT_VERSION(lwapp_trans_header->version),
           LWAPP_EXTRACT_CONTROL_BIT(lwapp_trans_header->version) ? "Control" : "Data",
           LWAPP_EXTRACT_RID(lwapp_trans_header->version),
           bittok2str(lwapp_header_bits_values,"none",(lwapp_trans_header->version)&0x07),
    lwapp_trans_header->frag_id,
    tlen));

    if (has_ap_ident) {
        ND_PRINT((ndo, "\n\tAP identity: %s", etheraddr_string(ndo, tptr)));
        tptr+=sizeof(const struct lwapp_transport_header)+6;
    } else {
        tptr+=sizeof(const struct lwapp_transport_header);
    }

    while(tlen>0) {


        ND_TCHECK2(*tptr, sizeof(struct lwapp_control_header));

        lwapp_control_header = (const struct lwapp_control_header *)tptr;
 msg_tlen = EXTRACT_16BITS(lwapp_control_header->len);


        ND_PRINT((ndo, "\n\t  Msg type: %s (%u), Seqnum: %u, Msg len: %d, Session: 0x%08x",
               tok2str(lwapp_msg_type_values,"Unknown",lwapp_control_header->msg_type),
               lwapp_control_header->msg_type,
               lwapp_control_header->seq_num,
               msg_tlen,
               EXTRACT_32BITS(lwapp_control_header->session_id)));


        ND_TCHECK2(*tptr, msg_tlen);


        switch(lwapp_control_header->msg_type) {
        case 149:
        case 148:
        case 141:
        case 140:
        case 143:
        case 142:
        case 155:
        case 154:
        case 153:
        case 152:
        case 129:
        case 128:
        case 158:
        case 157:
        case 147:
        case 146:
        case 145:
        case 144:
        case 133:
        case 132:
        case 139:
        case 138:
        case 135:
        case 134:
        case 151:
        case 150:
        case 156:
        case 131:
        case 130:
        case 137:
        case 136:
        default:
            break;
        }

        tptr += sizeof(struct lwapp_control_header) + msg_tlen;
        tlen -= sizeof(struct lwapp_control_header) + msg_tlen;
    }
    return;

 trunc:
    ND_PRINT((ndo, "\n\t\t packet exceeded snapshot"));
}
