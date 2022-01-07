
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u_int ;
typedef int u_char ;
struct ipxHdr {int dstSkt; } ;
typedef int netdissect_options ;


 int EXTRACT_16BITS (int *) ;







 int ND_PRINT (int *) ;
 int eigrp_print (int *,int const*,int ) ;
 int ipx_netbios_print (int *,int const*,int ) ;
 int ipx_rip_print (int *,int const*,int ) ;
 int ipx_sap_print (int *,int const*,int ) ;

__attribute__((used)) static void
ipx_decode(netdissect_options *ndo, const struct ipxHdr *ipx, const u_char *datap, u_int length)
{
    register u_short dstSkt;

    dstSkt = EXTRACT_16BITS(&ipx->dstSkt);
    switch (dstSkt) {
      case 132:
 ND_PRINT((ndo, "ipx-ncp %d", length));
 break;
      case 128:
 ipx_sap_print(ndo, (const u_short *)datap, length);
 break;
      case 129:
 ipx_rip_print(ndo, (const u_short *)datap, length);
 break;
      case 131:
 ND_PRINT((ndo, "ipx-netbios %d", length));



 break;
      case 134:
 ND_PRINT((ndo, "ipx-diags %d", length));
 break;
      case 130:
 ND_PRINT((ndo, "ipx-nwlink-dgm %d", length));



 break;
      case 133:
 eigrp_print(ndo, datap, length);
 break;
      default:
 ND_PRINT((ndo, "ipx-#%x %d", dstSkt, length));
 break;
    }
}
