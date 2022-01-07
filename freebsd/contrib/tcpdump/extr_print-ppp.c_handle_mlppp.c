
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_4__ {int ndo_eflag; } ;
typedef TYPE_1__ netdissect_options ;


 int ND_PRINT (TYPE_1__*) ;
 int ND_TTEST_16BITS (int const*) ;
 int bittok2str (int ,char*,int const) ;
 int ppp_ml_flag_values ;

__attribute__((used)) static void
handle_mlppp(netdissect_options *ndo,
             const u_char *p, int length)
{
    if (!ndo->ndo_eflag)
        ND_PRINT((ndo, "MLPPP, "));

    if (length < 2) {
        ND_PRINT((ndo, "[|mlppp]"));
        return;
    }
    if (!ND_TTEST_16BITS(p)) {
        ND_PRINT((ndo, "[|mlppp]"));
        return;
    }

    ND_PRINT((ndo, "seq 0x%03x, Flags [%s], length %u",
           (EXTRACT_16BITS(p))&0x0fff,
           bittok2str(ppp_ml_flag_values, "none", *p & 0xc0),
           length));
}
