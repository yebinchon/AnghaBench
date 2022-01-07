
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_short ;
typedef int u_int ;
typedef int u_char ;
struct TYPE_6__ {int ndo_snapend; } ;
typedef TYPE_1__ netdissect_options ;


 int EXTRACT_16BITS (int const*) ;
 int EXTRACT_32BITS (int const*) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (int const) ;
 int ND_TCHECK2 (int const,int) ;
 int fn_printzp (TYPE_1__*,int const*,int,int ) ;
 int htons (int) ;
 int ipxaddr_string (int ,int const*) ;
 int ipxsap_string (TYPE_1__*,int ) ;

__attribute__((used)) static void
ipx_sap_print(netdissect_options *ndo, const u_short *ipx, u_int length)
{
    int command, i;

    ND_TCHECK(ipx[0]);
    command = EXTRACT_16BITS(ipx);
    ipx++;
    length -= 2;

    switch (command) {
      case 1:
      case 3:
 if (command == 1)
     ND_PRINT((ndo, "ipx-sap-req"));
 else
     ND_PRINT((ndo, "ipx-sap-nearest-req"));

 ND_TCHECK(ipx[0]);
 ND_PRINT((ndo, " %s", ipxsap_string(ndo, htons(EXTRACT_16BITS(&ipx[0])))));
 break;

      case 2:
      case 4:
 if (command == 2)
     ND_PRINT((ndo, "ipx-sap-resp"));
 else
     ND_PRINT((ndo, "ipx-sap-nearest-resp"));

 for (i = 0; i < 8 && length > 0; i++) {
     ND_TCHECK(ipx[0]);
     ND_PRINT((ndo, " %s '", ipxsap_string(ndo, htons(EXTRACT_16BITS(&ipx[0])))));
     if (fn_printzp(ndo, (const u_char *)&ipx[1], 48, ndo->ndo_snapend)) {
  ND_PRINT((ndo, "'"));
  goto trunc;
     }
     ND_TCHECK2(ipx[25], 10);
     ND_PRINT((ndo, "' addr %s",
  ipxaddr_string(EXTRACT_32BITS(&ipx[25]), (const u_char *)&ipx[27])));
     ipx += 32;
     length -= 64;
 }
 break;
      default:
 ND_PRINT((ndo, "ipx-sap-?%x", command));
 break;
    }
    return;
trunc:
    ND_PRINT((ndo, "[|ipx %d]", length));
}
