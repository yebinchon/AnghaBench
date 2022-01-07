
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct lwapp_transport_header {int version; int frag_id; int length; } ;
struct TYPE_5__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 int EXTRACT_16BITS (int ) ;
 scalar_t__ LWAPP_EXTRACT_CONTROL_BIT (int) ;
 int LWAPP_EXTRACT_RID (int) ;
 scalar_t__ LWAPP_EXTRACT_VERSION (int) ;
 scalar_t__ LWAPP_VERSION ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (struct lwapp_transport_header const) ;
 int ND_TCHECK2 (int const,int) ;
 int bittok2str (int ,char*,int) ;
 int lwapp_header_bits_values ;
 int print_unknown_data (TYPE_1__*,int const*,char*,int) ;

void
lwapp_data_print(netdissect_options *ndo,
                 const u_char *pptr, u_int len)
{
    const struct lwapp_transport_header *lwapp_trans_header;
    const u_char *tptr;
    int tlen;

    tptr=pptr;


    ND_TCHECK2(*tptr, 6);
    lwapp_trans_header = (const struct lwapp_transport_header *)pptr;
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

    ND_PRINT((ndo, "LWAPPv%u, %s frame, Radio-id  %u, Flags [%s], Frag-id  %u, length %u",
           LWAPP_EXTRACT_VERSION(lwapp_trans_header->version),
           LWAPP_EXTRACT_CONTROL_BIT(lwapp_trans_header->version) ? "Control" : "Data",
           LWAPP_EXTRACT_RID(lwapp_trans_header->version),
           bittok2str(lwapp_header_bits_values,"none",(lwapp_trans_header->version)&0x07),
           lwapp_trans_header->frag_id,
           tlen));

    tptr+=sizeof(const struct lwapp_transport_header);
    tlen-=sizeof(const struct lwapp_transport_header);


    print_unknown_data(ndo, tptr, "\n\t", tlen);

    return;

 trunc:
    ND_PRINT((ndo, "\n\t\t packet exceeded snapshot"));
}
