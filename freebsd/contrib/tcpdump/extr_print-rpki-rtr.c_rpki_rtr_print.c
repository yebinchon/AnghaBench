
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int u_char ;
struct TYPE_5__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 int ND_PRINT (TYPE_1__*) ;
 scalar_t__ rpki_rtr_pdu_print (TYPE_1__*,int const*,scalar_t__,int,int) ;

void
rpki_rtr_print(netdissect_options *ndo, register const u_char *pptr, register u_int len)
{
    if (!ndo->ndo_vflag) {
 ND_PRINT((ndo, ", RPKI-RTR"));
 return;
    }
    while (len) {
 u_int pdu_len = rpki_rtr_pdu_print(ndo, pptr, len, 1, 8);
 len -= pdu_len;
 pptr += pdu_len;
    }
}
