
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_short ;
typedef int u_int ;
typedef int u_char ;
struct rsvp_common_header {int msg_type; int checksum; int ttl; int version_flags; int length; } ;
struct TYPE_6__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 int EXTRACT_16BITS (int ) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (struct rsvp_common_header const) ;
 int RSVP_EXTRACT_FLAGS (int ) ;
 scalar_t__ RSVP_EXTRACT_VERSION (int ) ;
 scalar_t__ RSVP_VERSION ;
 int bittok2str (int ,char*,int ) ;
 int print_unknown_data (TYPE_1__*,int const*,char*,int) ;
 int rsvp_header_flag_values ;
 int rsvp_msg_type_values ;
 int rsvp_obj_print (TYPE_1__*,int const*,int,int const*,char*,int,struct rsvp_common_header const*) ;
 int tok2str (int ,char*,int) ;
 int tstr ;

void
rsvp_print(netdissect_options *ndo,
           register const u_char *pptr, register u_int len)
{
    const struct rsvp_common_header *rsvp_com_header;
    const u_char *tptr;
    u_short plen, tlen;

    tptr=pptr;

    rsvp_com_header = (const struct rsvp_common_header *)pptr;
    ND_TCHECK(*rsvp_com_header);




    if (RSVP_EXTRACT_VERSION(rsvp_com_header->version_flags) != RSVP_VERSION) {
 ND_PRINT((ndo, "ERROR: RSVP version %u packet not supported",
               RSVP_EXTRACT_VERSION(rsvp_com_header->version_flags)));
 return;
    }


    if (ndo->ndo_vflag < 1) {
        ND_PRINT((ndo, "RSVPv%u %s Message, length: %u",
               RSVP_EXTRACT_VERSION(rsvp_com_header->version_flags),
               tok2str(rsvp_msg_type_values, "unknown (%u)",rsvp_com_header->msg_type),
               len));
        return;
    }



    plen = tlen = EXTRACT_16BITS(rsvp_com_header->length);

    ND_PRINT((ndo, "\n\tRSVPv%u %s Message (%u), Flags: [%s], length: %u, ttl: %u, checksum: 0x%04x",
           RSVP_EXTRACT_VERSION(rsvp_com_header->version_flags),
           tok2str(rsvp_msg_type_values, "unknown, type: %u",rsvp_com_header->msg_type),
           rsvp_com_header->msg_type,
           bittok2str(rsvp_header_flag_values,"none",RSVP_EXTRACT_FLAGS(rsvp_com_header->version_flags)),
           tlen,
           rsvp_com_header->ttl,
           EXTRACT_16BITS(rsvp_com_header->checksum)));

    if (tlen < sizeof(const struct rsvp_common_header)) {
        ND_PRINT((ndo, "ERROR: common header too short %u < %lu", tlen,
               (unsigned long)sizeof(const struct rsvp_common_header)));
        return;
    }

    tptr+=sizeof(const struct rsvp_common_header);
    tlen-=sizeof(const struct rsvp_common_header);

    switch(rsvp_com_header->msg_type) {

    case 138:





        while(tlen > 0) {
            const u_char *subpptr=tptr, *subtptr;
            u_short subplen, subtlen;

            subtptr=subpptr;

            rsvp_com_header = (const struct rsvp_common_header *)subpptr;
            ND_TCHECK(*rsvp_com_header);




            if (RSVP_EXTRACT_VERSION(rsvp_com_header->version_flags) != RSVP_VERSION) {
                ND_PRINT((ndo, "ERROR: RSVP version %u packet not supported",
                       RSVP_EXTRACT_VERSION(rsvp_com_header->version_flags)));
                return;
            }

            subplen = subtlen = EXTRACT_16BITS(rsvp_com_header->length);

            ND_PRINT((ndo, "\n\t  RSVPv%u %s Message (%u), Flags: [%s], length: %u, ttl: %u, checksum: 0x%04x",
                   RSVP_EXTRACT_VERSION(rsvp_com_header->version_flags),
                   tok2str(rsvp_msg_type_values, "unknown, type: %u",rsvp_com_header->msg_type),
                   rsvp_com_header->msg_type,
                   bittok2str(rsvp_header_flag_values,"none",RSVP_EXTRACT_FLAGS(rsvp_com_header->version_flags)),
                   subtlen,
                   rsvp_com_header->ttl,
                   EXTRACT_16BITS(rsvp_com_header->checksum)));

            if (subtlen < sizeof(const struct rsvp_common_header)) {
                ND_PRINT((ndo, "ERROR: common header too short %u < %lu", subtlen,
                       (unsigned long)sizeof(const struct rsvp_common_header)));
                return;
            }

            if (tlen < subtlen) {
                ND_PRINT((ndo, "ERROR: common header too large %u > %u", subtlen,
                       tlen));
                return;
            }

            subtptr+=sizeof(const struct rsvp_common_header);
            subtlen-=sizeof(const struct rsvp_common_header);




            if (rsvp_obj_print(ndo, subpptr, subplen, subtptr, "\n\t    ", subtlen, rsvp_com_header) == -1)
                return;

            tptr+=subtlen+sizeof(const struct rsvp_common_header);
            tlen-=subtlen+sizeof(const struct rsvp_common_header);
        }

        break;

    case 135:
    case 132:
    case 134:
    case 130:
    case 133:
    case 129:
    case 131:
    case 136:
    case 137:
    case 139:
    case 128:



        if (rsvp_obj_print(ndo, pptr, plen, tptr, "\n\t  ", tlen, rsvp_com_header) == -1)
            return;
        break;

    default:
        print_unknown_data(ndo, tptr, "\n\t    ", tlen);
        break;
    }

    return;
trunc:
    ND_PRINT((ndo, "\n\t\t"));
    ND_PRINT((ndo, "%s", tstr));
}
