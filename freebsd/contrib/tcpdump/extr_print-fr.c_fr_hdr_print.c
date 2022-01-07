
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int u_int ;
struct TYPE_4__ {scalar_t__ ndo_qflag; } ;
typedef TYPE_1__ netdissect_options ;


 int EXTRACT_32BITS (int *) ;
 int ND_PRINT (TYPE_1__*) ;
 int bittok2str (int ,char*,int ) ;
 int ethertype_values ;
 int fr_header_flag_values ;
 int nlpid_values ;
 int tok2str (int ,char*,int) ;

__attribute__((used)) static void
fr_hdr_print(netdissect_options *ndo,
             int length, u_int addr_len, u_int dlci, uint8_t *flags, uint16_t nlpid)
{
    if (ndo->ndo_qflag) {
        ND_PRINT((ndo, "Q.922, DLCI %u, length %u: ",
                     dlci,
                     length));
    } else {
        if (nlpid <= 0xff)
            ND_PRINT((ndo, "Q.922, hdr-len %u, DLCI %u, Flags [%s], NLPID %s (0x%02x), length %u: ",
                         addr_len,
                         dlci,
                         bittok2str(fr_header_flag_values, "none", EXTRACT_32BITS(flags)),
                         tok2str(nlpid_values,"unknown", nlpid),
                         nlpid,
                         length));
        else
            ND_PRINT((ndo, "Q.922, hdr-len %u, DLCI %u, Flags [%s], cisco-ethertype %s (0x%04x), length %u: ",
                         addr_len,
                         dlci,
                         bittok2str(fr_header_flag_values, "none", EXTRACT_32BITS(flags)),
                         tok2str(ethertype_values, "unknown", nlpid),
                         nlpid,
                         length));
    }
}
